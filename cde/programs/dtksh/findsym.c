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
/* $XConsortium: findsym.c /main/5 1995/11/09 09:32:59 rswiston $ */

/*	Copyright (c) 1991, 1992 UNIX System Laboratories, Inc. */
/*	All Rights Reserved     */

/*	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF    */
/*	UNIX System Laboratories, Inc.			*/
/*	The copyright notice above does not evidence any       */
/*	actual or intended publication of such source code.    */

#include "shell.h"
#include "stdio.h"
#include <sys/types.h>

#ifdef __aix
#include <sys/ldr.h>
#else
#include <dlfcn.h>
#endif

#include <string.h>
#include <search.h>
#include <ctype.h>
#include "msgs.h"

/*
 * This function is currently only used to locate a widget class record,
 * as requested by a DtLoadWidget request.
 */

void *
fsym(
        char *str,
        int lib )
{
   int i = 0;
   void * addr;

   if (liblist == NULL)
      return (NULL);
   while (liblist[i].dll)
   {
      if (addr = dlsym(liblist[i].dll, str))
         return(addr);
      i++;
   }

   return(0);
}
