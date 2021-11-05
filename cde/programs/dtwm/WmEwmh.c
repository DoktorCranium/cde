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

#include <stdlib.h>

#include "WmGlobal.h"
#include "WmEvent.h"
#include "WmEwmh.h"
#include "WmMultiHead.h"
#include "WmProperty.h"
#include "WmWinState.h"
#include "WmWrkspace.h"

static unsigned long GetWindowProperty (Window w, Atom property, Atom reqType,
    unsigned char **propReturn)
{
    Atom actualType;
    int actualFormat;
    unsigned long nitems;
    unsigned long leftover;

    if (XGetWindowProperty (DISPLAY, w, property, 0L, 1000000L, False, reqType,
			    &actualType, &actualFormat, &nitems, &leftover,
			    propReturn) != Success) goto err;

    if (actualType != reqType) goto err;

    return nitems;

err:
    XFree (*propReturn);
    return 0;
}

static void UpdateNetWmState (ClientData *pCD)
{
    unsigned long nitems;
    unsigned long natoms = 0;
    Atom *netWmState;
    Atom *atoms;

    nitems = GetWindowProperty (pCD->client, wmGD.xa__NET_WM_STATE, XA_ATOM,
		    (unsigned char **) &netWmState);

    atoms = malloc ((nitems + 2) * sizeof (Atom)); if (!atoms) goto done;

    for (int i = 0; i < nitems; ++i)
	if (netWmState[i] == wmGD.xa__NET_WM_STATE_FULLSCREEN ||
	    netWmState[i] == wmGD.xa__NET_WM_STATE_MAXIMIZED_VERT ||
	    netWmState[i] == wmGD.xa__NET_WM_STATE_MAXIMIZED_HORZ)
	    continue;
	else
	    atoms[natoms++] = netWmState[i];

    if (pCD->maxConfig)
    {
	if (pCD->isFullscreen)
	{
	    atoms[natoms++] = wmGD.xa__NET_WM_STATE_FULLSCREEN;
	}
	else
	{
	    atoms[natoms++] = wmGD.xa__NET_WM_STATE_MAXIMIZED_VERT;
	    atoms[natoms++] = wmGD.xa__NET_WM_STATE_MAXIMIZED_HORZ;
	}
    }

    XChangeProperty (DISPLAY, pCD->client, wmGD.xa__NET_WM_STATE, XA_ATOM, 32,
		    PropModeReplace, (unsigned char *) atoms, natoms);

done:
    XFree (netWmState);
    XFree (atoms);
}

static void ProcessNetWmStateFullscreen (ClientData *pCD, long action)
{
    switch (action)
    {
	case _NET_WM_STATE_REMOVE:
	    if (!pCD->isFullscreen) return;
	    pCD->isFullscreen = False;
	    break;
	case _NET_WM_STATE_ADD:
	    if (pCD->isFullscreen) return;
	    pCD->isFullscreen = True;
	    break;
	case _NET_WM_STATE_TOGGLE:
	    pCD->isFullscreen = !pCD->isFullscreen;
	    break;
	default:
	    return;
    }

    SetClientState (pCD, NORMAL_STATE, GetTimestamp ());

    if (pCD->isFullscreen)
	SetClientState (pCD, MAXIMIZED_STATE, GetTimestamp ());
}

static void ProcessNetWmStateMaximized (ClientData *pCD, long action)
{
    int newState;

    switch (action)
    {
	case _NET_WM_STATE_REMOVE:
	    if (pCD->clientState != MAXIMIZED_STATE) return;
	    newState = NORMAL_STATE;
	    break;
	case _NET_WM_STATE_ADD:
	    if (pCD->clientState == MAXIMIZED_STATE) return;
	    newState = MAXIMIZED_STATE;
	    break;
	case _NET_WM_STATE_TOGGLE:
	    newState = pCD->clientState == MAXIMIZED_STATE ?
		NORMAL_STATE : MAXIMIZED_STATE;
	    break;
	default:
	    return;
    }

    SetClientState (pCD, newState, GetTimestamp ());
}

static void ProcessNetWmNameNetWmIconName (ClientData *pCD, Atom name)
{
    unsigned long nitems;
    unsigned char *netNameProp;
    XTextProperty nameProp = {0};

    nitems = GetWindowProperty(pCD->client, name, wmGD.xa_UTF8_STRING,
		    &netNameProp);

    if (!nitems) goto done;

    if (Xutf8TextListToTextProperty (DISPLAY, (char **) &netNameProp, 1,
			    XUTF8StringStyle, &nameProp) != Success) goto done;

    if (name == wmGD.xa__NET_WM_NAME)
	XSetWMName (DISPLAY, pCD->client, &nameProp);
    else if (name == wmGD.xa__NET_WM_ICON_NAME)
	XSetWMIconName (DISPLAY, pCD->client, &nameProp);

done:
    XFree (netNameProp);
    XFree ((char*) nameProp.value);
}

/**
* @brief Processes the _NET_WM_FULLSCREEN_MONITORS protocol.
*
* @param pCD
* @param top
* @param bottom
* @param left
* @param right
*/
void ProcessNetWmFullscreenMonitors (ClientData *pCD,
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
}

/**
* @brief Processes the _NET_WM_STATE client message.
*
* @param pCD
* @param action
* @param firstProperty
* @param secondProperty
*/
void ProcessNetWmState (ClientData *pCD, long action,
    long firstProperty, long secondProperty)
{
    if (pCD->clientState & UNSEEN_STATE) return;

    if (firstProperty  == wmGD.xa__NET_WM_STATE_MAXIMIZED_VERT &&
	secondProperty == wmGD.xa__NET_WM_STATE_MAXIMIZED_HORZ ||
	firstProperty  == wmGD.xa__NET_WM_STATE_MAXIMIZED_HORZ &&
	secondProperty == wmGD.xa__NET_WM_STATE_MAXIMIZED_VERT)
	ProcessNetWmStateMaximized (pCD, action);
    else if (firstProperty  == wmGD.xa__NET_WM_STATE_FULLSCREEN ||
	     secondProperty == wmGD.xa__NET_WM_STATE_FULLSCREEN)
	ProcessNetWmStateFullscreen (pCD, action);

    if (!ClientInWorkspace (ACTIVE_WS, pCD))
	SetClientState (pCD, pCD->clientState | UNSEEN_STATE, GetTimestamp ());

    UpdateNetWmState (pCD);
}

/**
* @brief Processes the _NET_WM_NAME property.
*
* @param pCD
*/
void ProcessNetWmName (ClientData *pCD)
{
    ProcessNetWmNameNetWmIconName (pCD, wmGD.xa__NET_WM_NAME);
}

/**
* @brief Processes the _NET_WM_ICON_NAME property.
*
* @param pCD
*/
void ProcessNetWmIconName (ClientData *pCD)
{
    ProcessNetWmNameNetWmIconName (pCD, wmGD.xa__NET_WM_ICON_NAME);
}

/**
* @brief Sets up the window manager handling of the EWMH.
*/
void SetupWmEwmh (void)
{
    enum {
	XA_UTF8_STRING,
	XA__NET_SUPPORTED,
	XA__NET_SUPPORTING_WM_CHECK,
	XA__NET_WM_NAME,
	XA__NET_WM_ICON_NAME,
	XA__NET_WM_FULLSCREEN_MONITORS,
	XA__NET_WM_STATE,
	XA__NET_WM_STATE_FULLSCREEN,
	XA__NET_WM_STATE_MAXIMIZED_VERT,
	XA__NET_WM_STATE_MAXIMIZED_HORZ
    };

    static char *atom_names[] = {
	"UTF8_STRING",
	_XA__NET_SUPPORTED,
	_XA__NET_SUPPORTING_WM_CHECK,
	_XA__NET_WM_NAME,
	_XA__NET_WM_ICON_NAME,
	_XA__NET_WM_FULLSCREEN_MONITORS,
	_XA__NET_WM_STATE,
	_XA__NET_WM_STATE_FULLSCREEN,
	_XA__NET_WM_STATE_MAXIMIZED_VERT,
	_XA__NET_WM_STATE_MAXIMIZED_HORZ
    };

    Window childWindow;
    Atom atoms[XtNumber(atom_names) + 1];

    XInternAtoms(DISPLAY, atom_names, XtNumber(atom_names), False, atoms);

    wmGD.xa_UTF8_STRING = atoms[XA_UTF8_STRING];
    wmGD.xa__NET_WM_NAME = atoms[XA__NET_WM_NAME];
    wmGD.xa__NET_WM_ICON_NAME = atoms[XA__NET_WM_ICON_NAME];
    wmGD.xa__NET_WM_FULLSCREEN_MONITORS = atoms[XA__NET_WM_FULLSCREEN_MONITORS];
    wmGD.xa__NET_WM_STATE = atoms[XA__NET_WM_STATE];
    wmGD.xa__NET_WM_STATE_FULLSCREEN = atoms[XA__NET_WM_STATE_FULLSCREEN];
    wmGD.xa__NET_WM_STATE_MAXIMIZED_VERT =
	atoms[XA__NET_WM_STATE_MAXIMIZED_VERT];
    wmGD.xa__NET_WM_STATE_MAXIMIZED_HORZ =
	atoms[XA__NET_WM_STATE_MAXIMIZED_HORZ];

    for (int scr = 0; scr < wmGD.numScreens; ++scr)
    {
	childWindow = XCreateSimpleWindow(DISPLAY, wmGD.Screens[scr].rootWindow,
			-1, -1, 1, 1, 0, 0, 0);

	XChangeProperty(DISPLAY, childWindow, atoms[XA__NET_WM_NAME],
			atoms[XA_UTF8_STRING], 8, PropModeReplace,
			DT_WM_RESOURCE_NAME, 5);

	XChangeProperty(DISPLAY, childWindow,
			atoms[XA__NET_SUPPORTING_WM_CHECK], XA_WINDOW, 32,
			PropModeReplace, (unsigned char *)&childWindow, 1);

	XChangeProperty(DISPLAY, wmGD.Screens[scr].rootWindow,
			atoms[XA__NET_SUPPORTING_WM_CHECK], XA_WINDOW, 32,
			PropModeReplace, (unsigned char *)&childWindow, 1);

	XChangeProperty(DISPLAY, wmGD.Screens[scr].rootWindow,
			atoms[XA__NET_SUPPORTED], XA_ATOM, 32, PropModeReplace,
			(unsigned char *)&atoms[XA__NET_SUPPORTING_WM_CHECK],
			8);
    }
}
