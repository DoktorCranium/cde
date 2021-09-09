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

#ifndef _Dt_WmEwmh_h_
#define _Dt_WmEwmh_h_

#define _NET_WM_STATE_REMOVE	0
#define _NET_WM_STATE_ADD	1
#define _NET_WM_STATE_TOGGLE	2

#define _XA_NET_SUPPORTED		"_NET_SUPPORTED"
#define _XA_NET_SUPPORTING_WM_CHECK	"_NET_SUPPORTING_WM_CHECK"
#define _XA_NET_WM_NAME			"_NET_WM_NAME"
#define _XA_NET_WM_ICON_NAME		"_NET_WM_ICON_NAME"
#define _XA_NET_WM_FULLSCREEN_MONITORS	"_NET_WM_FULLSCREEN_MONITORS"
#define _XA_NET_WM_STATE		"_NET_WM_STATE"
#define _XA_NET_WM_STATE_FULLSCREEN	"_NET_WM_STATE_FULLSCREEN"

void HandleClientMessageEwmh (ClientData *pCD,
		XClientMessageEvent *clientEvent);
void HandlePropertyNotifyEwmh (ClientData *pCD, XPropertyEvent *propertyEvent);
void SetupWmEwmh (void);

#endif /* _Dt_WmEwmh_h_ */
