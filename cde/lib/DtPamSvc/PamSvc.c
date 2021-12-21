/*
 * CDE - Common Desktop Environment
 *
 * Copyright (c) 1993-2012, The Open Group. All rights reserved.
 *
 * These libraries and programs are free software; you can
 * redistribute them and/or modify them under the terms of the GNU
 * Lesser General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option)
 * any later version.
 *
 * These libraries and programs are distributed in the hope that
 * they will be useful, but WITHOUT ANY WARRANTY; without even the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 * PURPOSE. See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with these libraries and programs; if not, write
 * to the Free Software Foundation, Inc., 51 Franklin Street, Fifth
 * Floor, Boston, MA 02110-1301 USA
 */
/* $TOG: pam_svc.c /main/5 1997/06/04 16:30:21 samborn $ */
/*******************************************************************************
 **
 **  pam_svc.c 1.10 95/11/25
 **
 **  Copyright 1993, 1994, 1995 Sun Microsystems, Inc.  All rights reserved.
 **
 **  This file contains procedures specific to use of
 **  PAM (Pluggable Authentication Module) security library.
 **
 *******************************************************************************/
/*                                                                      *
 * (c) Copyright 1993, 1994 Hewlett-Packard Company                     *
 * (c) Copyright 1993, 1994 International Business Machines Corp.       *
 * (c) Copyright 1993, 1994, 1995 Sun Microsystems, Inc.               	*
 * (c) Copyright 1993, 1994 Novell, Inc.                                *
 */

/*
 * Header Files
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <dirent.h>
#include <sys/param.h>
#include <security/pam_appl.h>
#include <utmpx.h>
#include <unistd.h>
#if defined(__linux__)
#include <grp.h>
#endif
#include <Dt/PamSvc.h>

/*
 * Local function declarations
 */

static int login_conv(int num_msg, const struct pam_message **msg,
        struct pam_response **response, void *appdata_ptr);

static char* create_devname(char* short_devname);

/*
 * Local structures and variables
 */

static struct pam_conv pam_conv = {login_conv, NULL};
static char *saved_user_passwd;
static pam_handle_t *pamh = NULL;

/****************************************************************************
 * PamInit
 *
 * Initialize or Update PAM datastructures.
 *
 ****************************************************************************/

static int PamInit(char* prog_name,
        char* user,
        char* line_dev,
        char* display_name)
{
    int status=PAM_SUCCESS;

    if (!pamh) {
        /* Open PAM (Plugable Authentication module ) connection */
        status = pam_start( prog_name, user, &pam_conv, &pamh );
        if (status != PAM_SUCCESS) pamh = NULL;
    } else {
        if (prog_name) pam_set_item(pamh, PAM_SERVICE, prog_name);
        if (user) pam_set_item(pamh, PAM_USER, user);
    }

    if (status == PAM_SUCCESS) {
        if (line_dev) pam_set_item(pamh, PAM_TTY, line_dev);
        if (display_name) pam_set_item(pamh, PAM_RHOST, display_name);
    }

    return(status);
}

/****************************************************************************
 * _DtAuthentication
 *
 * Authenticate that user / password combination is legal for this system
 *
 ****************************************************************************/

int _DtAuthentication ( char*   prog_name,
        char*   display_name,
        char*   user_passwd,
        char*   user,
        char*   line )
{
    int status;
    char* line_str = line ? line : "NULL";
    char* line_dev = create_devname(line_str);

    if (!user_passwd)
        /* Password challenge required for dtlogin authentication */
        return(PAM_AUTH_ERR);

    status = PamInit(prog_name, user, line_dev, display_name);

    if (status == PAM_SUCCESS) {
        saved_user_passwd = user_passwd;
        status = pam_authenticate( pamh, 0 );
    };

    if (status != PAM_SUCCESS) {
        if (pamh) {
            pam_end(pamh, PAM_ABORT);
            pamh=NULL;
        }
    }

    return(status);
}

/****************************************************************************
 * _DtAccounting
 *
 * Work related to open and close of user sessions
 ****************************************************************************/

int _DtAccounting( char*   prog_name,
        char*   display_name,
        char*   entry_id,
        char*   user,
        char*   line,
        pid_t   pid,
        int     entry_type,
        int     exitcode )
{
    int session_type, status;
    char *line_str = line ? line : "NULL";
    char *line_dev = create_devname(line_str);

    /* Open PAM (Plugable Authentication module ) connection */

    status = PamInit(prog_name, user, line_dev, display_name);

    /* Session accounting */

    if (status == PAM_SUCCESS) switch(entry_type) {
        case DEAD_PROCESS:
            status = pam_close_session(pamh, 0);
            break;

        case USER_PROCESS:
        case LOGIN_PROCESS:
        default:
            status = pam_open_session(pamh, 0);
            break;
    }

    free(line_dev);
    return(status);
}

/****************************************************************************
 * _DtSetCred
 *
 * Set Users login credentials: uid, gid, and group lists
 ****************************************************************************/

int _DtSetCred(char* prog_name, char* user, uid_t uid, gid_t gid)
{
    int cred_type, status;

    status = PamInit(prog_name, user, NULL, NULL);

    /* Set users credentials */

    if (status == PAM_SUCCESS && setgid(gid) == -1)
        status = DT_BAD_GID;

    if ((status == PAM_SUCCESS &&
            !user) || (initgroups(user, gid) == -1))
        status = DT_INITGROUP_FAIL;

    if (status == PAM_SUCCESS)
        status = pam_setcred(pamh, PAM_ESTABLISH_CRED);

    if (status == PAM_SUCCESS && (setuid(uid) == -1))
        status = DT_BAD_UID;

    return(status);
}

/***************************************************************************
 * create_devname
 *
 * A utility function.  Takes short device name like "console" and returns
 * a long device name like "/dev/console"
 ***************************************************************************/

static char* create_devname(char* short_devname)
{
    char* long_devname;

    if (short_devname == NULL)
        short_devname = "";

    long_devname = (char *) malloc (strlen(short_devname) + 5);

    if (long_devname == NULL)
        return(NULL);

    strcpy(long_devname,"/dev/");
    strcat(long_devname, short_devname);

    return(long_devname);
}

/*****************************************************************************
 * login_conv():
 *
 * This is a conv (conversation) function called from the PAM
 * authentication scheme.  It returns the user's password when requested by
 * internal PAM authentication modules and also logs any internal PAM error
 * messages.
 *****************************************************************************/

static int login_conv(int num_msg, const struct pam_message **msg,
        struct pam_response **response, void *appdata_ptr)
{
    const struct pam_message	*m;
    struct pam_response	*r;
    char 			*temp;
    int			k;

#ifdef lint
    conv_id = conv_id;
#endif
    if (num_msg <= 0)
        return (PAM_CONV_ERR);

    *response = (struct pam_response*)
        calloc(num_msg, sizeof (struct pam_response));
    if (*response == NULL)
        return (PAM_CONV_ERR);

    (void) memset(*response, 0, sizeof (struct pam_response));

    k = num_msg;
    m = *msg;
    r = *response;
    while (k--) {

        switch (m->msg_style) {

            case PAM_PROMPT_ECHO_OFF:
                if (saved_user_passwd != NULL) {
                    r->resp = (char *) malloc(strlen(saved_user_passwd)+1);
                    if (r->resp == NULL) {
                        /* __pam_free_resp(num_msg, *response); */
                        *response = NULL;
                        return (PAM_CONV_ERR);
                    }
                    (void) strcpy(r->resp, saved_user_passwd);
                    r->resp_retcode=0;
                }

                m++;
                r++;
                break;

            case PAM_ERROR_MSG:
                m++;
                r++;
                break;

            case PAM_TEXT_INFO:
                m++;
                r++;
                break;

            default:
                break;
        }
    }

    return (PAM_SUCCESS);
}
