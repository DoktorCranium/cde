/*
 * CDE - Common Desktop Environment
 *
 * (c) Copyright 1993-2012 The Open Group
 * (c) Copyright 2012-2022 CDE Project contributors, see
 * CONTRIBUTORS for details
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

/*
 * Included Files:
 */

#include "WmGlobal.h"
#include "WmEwmh.h"

/*
 * include extern functions
 */

#include "WmMultiHead.h"
#include "WmProperty.h"



/*************************************<->*************************************
 *
 *  ProcessNetWmFullscreenMonitors (pCD, top, bottom, left, right)
 *
 *
 *  Description:
 *  -----------
 *  This function retrieves the contents of the _NET_WM_FULLSCREEN_MONITORS
 *  message.
 *
 *
 *
 *  Inputs:
 *  ------
 *  pCD = pointer to client data
 *  top = the monitor whose top edge defines the top edge of the fullscreen
 *        window
 *  bottom = the monitor whose bottom edge defines the bottom edge of the
 *           fullscreen window
 *  left = the monitor whose left edge defines the left edge of the fullscreen
 *         window
 *  right = the monitor whose right edge defines the right edge of the
 *          fullscreen window
 *
 *************************************<->***********************************/

static void ProcessNetWmFullscreenMonitors (ClientData *pCD,
		long top, long bottom, long left, long right)
{
    WmHeadInfo_t *pHeadInfo;

    pCD->monitorSizeIsSet = False;

    pHeadInfo = GetHeadInfoById (top);

    if (!pHeadInfo) return;

    pCD->monitorY = pHeadInfo->y_org;
    free(pHeadInfo);

    pHeadInfo = GetHeadInfoById (bottom);

    if (!pHeadInfo) return;

    pCD->monitorHeight = top == bottom ? pHeadInfo->height :
	    pHeadInfo->y_org + pHeadInfo->height;
    free(pHeadInfo);

    pHeadInfo = GetHeadInfoById (left);

    if (!pHeadInfo) return;

    pCD->monitorX = pHeadInfo->x_org;
    free(pHeadInfo);

    pHeadInfo = GetHeadInfoById (right);

    if (!pHeadInfo) return;

    pCD->monitorWidth = left == right ? pHeadInfo->width :
	    pHeadInfo->x_org + pHeadInfo->width;
    free(pHeadInfo);

    pCD->monitorSizeIsSet = True;
} /* END OF FUNCTION ProcessNetWmFullscreenMonitors */



/*************************************<->*************************************
 *
 *  ProcessNetWmStateFullscreen (pCD, en)
 *
 *
 *  Description:
 *  -----------
 *  This function retrieves the contents of the _NET_WM_STATE_FULLSCREEN
 *  message.
 *
 *
 *
 *  Inputs:
 *  ------
 *  pCD = pointer to client data
 *  en = enable fullscreen
 *
 *************************************<->***********************************/

static void ProcessNetWmStateFullscreen (ClientData *pCD, Boolean en)
{
    PropMwmHints hints = {0};
    PropMwmHints *pHints = GetMwmHints (pCD);
    XClientMessageEvent clientMsgEvent = {
        .type = ClientMessage,
        .window = pCD->client,
        .message_type = wmGD.xa_WM_CHANGE_STATE,
        .format = 32,
        .data.l[0] = NormalState
    };

    if (!pHints) pHints = &hints;

    pHints->flags |= MWM_HINTS_DECORATIONS;
    pHints->decorations = en ? WM_DECOR_NONE : WM_DECOR_DEFAULT;

    XChangeProperty (DISPLAY, pCD->client, wmGD.xa_MWM_HINTS, wmGD.xa_MWM_HINTS,
		     32, PropModeReplace, (unsigned char *) pHints,
		     sizeof (PropMwmHints) / sizeof (long));

    if (pHints != &hints) XFree (pHints);

    pCD->enterFullscreen = en;

    XSendEvent (DISPLAY, ROOT_FOR_CLIENT (pCD), False, SubstructureRedirectMask,
		(XEvent *) &clientMsgEvent);
} /* END OF FUNCTION ProcessNetWmStateFullscreen */



/*************************************<->*************************************
 *
 *  ProcessEwmh (pCD, clientEvent)
 *
 *
 *  Description:
 *  -----------
 *  This function retrieves the contents of the EWMH message.
 *
 *
 *  Inputs:
 *  ------
 *  pCD = pointer to client data
 *  clientEvent = pointer to a client message event on the root window
 *
 *************************************<->***********************************/

void ProcessEwmh (ClientData *pCD, XClientMessageEvent *clientEvent)
{
    int i;

    if (clientEvent->message_type == wmGD.xa_NET_WM_FULLSCREEN_MONITORS)
    {
	ProcessNetWmFullscreenMonitors (pCD,
			clientEvent->data.l[0], clientEvent->data.l[1],
			clientEvent->data.l[2], clientEvent->data.l[3]);
    }
    else if (clientEvent->message_type == wmGD.xa_NET_WM_STATE)
    {
	for (i = 1; i < 3; ++i)
	{
	    if (clientEvent->data.l[i] == wmGD.xa_NET_WM_STATE_FULLSCREEN)
	    {
		ProcessNetWmStateFullscreen (pCD, clientEvent->data.l[0]);
	    }
	}
    }
} /* END OF FUNCTION ProcessEwmh */



/*************************************<->*************************************
 *
 *  SetupWmEwmh ()
 *
 *
 *  Description:
 *  -----------
 *  This function sets up the window manager handling of the EWMH.
 *
 *
 *  Outputs:
 *  -------
 *  (wmGD) = Atoms id's are setup.
 *
 *************************************<->***********************************/

void SetupWmEwmh (void)
{
    enum {
	XA_NET_SUPPORTED,
	XA_NET_WM_NAME,
	XA_NET_SUPPORTING_WM_CHECK,
	XA_NET_WM_FULLSCREEN_MONITORS,
	XA_NET_WM_STATE,
	XA_NET_WM_STATE_FULLSCREEN
    };

    static char *atom_names[] = {
	_XA_NET_SUPPORTED,
	_XA_NET_WM_NAME,
	_XA_NET_SUPPORTING_WM_CHECK,
	_XA_NET_WM_FULLSCREEN_MONITORS,
	_XA_NET_WM_STATE,
	_XA_NET_WM_STATE_FULLSCREEN
    };

    int scr;
    Window childWindow;
    Atom atoms[XtNumber(atom_names) + 1];

    XInternAtoms(DISPLAY, atom_names, XtNumber(atom_names), False, atoms);

    wmGD.xa_NET_WM_FULLSCREEN_MONITORS = atoms[XA_NET_WM_FULLSCREEN_MONITORS];
    wmGD.xa_NET_WM_STATE = atoms[XA_NET_WM_STATE];
    wmGD.xa_NET_WM_STATE_FULLSCREEN = atoms[XA_NET_WM_STATE_FULLSCREEN];

    for (scr = 0; scr < wmGD.numScreens; scr++)
    {
	childWindow = XCreateSimpleWindow(DISPLAY, wmGD.Screens[scr].rootWindow,
			-1, -1, 1, 1, 0, 0, 0);

	XChangeProperty(DISPLAY, childWindow, atoms[XA_NET_WM_NAME], None, 32,
			        PropModeReplace, "DTWM", 5);

	XChangeProperty(DISPLAY, childWindow,
			atoms[XA_NET_SUPPORTING_WM_CHECK], XA_WINDOW, 32,
			PropModeReplace, (unsigned char *)&childWindow, 1);

	XChangeProperty(DISPLAY, wmGD.Screens[scr].rootWindow,
			atoms[XA_NET_SUPPORTING_WM_CHECK], XA_WINDOW, 32,
			PropModeReplace, (unsigned char *)&childWindow, 1);

	XChangeProperty(DISPLAY, wmGD.Screens[scr].rootWindow,
			atoms[XA_NET_SUPPORTED], XA_ATOM, 32, PropModeReplace,
			(unsigned char *)&atoms[XA_NET_SUPPORTING_WM_CHECK], 4);
    }
} /* END OF FUNCTION SetupWmEwmh */
