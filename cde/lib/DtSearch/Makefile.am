MAINTAINERCLEANFILES = Makefile.in

CLEANFILES = y.tab.c y.tab.h boolyac.h boolyac.c

SUBDIRS = raima

lib_LTLIBRARIES = libDtSearch.la

YFLAGS = -d

libDtSearch_la_CFLAGS = -DI18N_MSG -DMULTIBYTE -I./raima

libDtSearch_la_LIBADD = raima/libraima.la

if LINUX
libDtSearch_la_CFLAGS += -DBYTE_SWAP
libDtSearch_la_LIBADD += -lm
endif

if BSD
libDtSearch_la_CFLAGS += -DBYTE_SWAP
endif

if SUN
libDtSearch_la_CFLAGS += -DBYTE_SWAP
libDtSearch_la_LIBADD += -lm -lc
endif

if AIX
libDtSearch_la_LIBADD += -lisode
endif

if HPUX
libDtSearch_la_LIBADD += -lm
endif

libDtSearch_la_SOURCES = apndext.c	ausdopen.c	ausexit.c \
			 bmstrstr.c	boolpars.c	boolsrch.c \
			 boolyac.c	cuslang.c	dbchange.c \
			 dberr.c	delspace.c	dtoe.c \
			 dtoeinit.c	dtsrapi.c	dtsrdbrec.c \
			 dtsrjoint.c	dtsrswab.c	dtsrutil.c  \
			 dtsrve.c	endslash.c	fileman.c \
			 globals.c	hdecode.c	hencode.c \
			 hilite.c	iscompat.c	isduprec.c \
			 jpn.c		lang.c		langmap.c \
			 msgs.c		msgutil.c	objdate.c \
			 ocf.c		opendblk.c	ophuf.c \
			 readchar.c	strupr.c	userint.c \
			 vedelete.c	vestatis.c	vstfunct.c

all:: boolyac.c

boolyac.h boolyac.c: boolyac.y
	$(YACC) $(YFLAGS) boolyac.y
	$(MV) y.tab.c boolyac.c
	@if [ -f y.tab.h ]; then set -x; $(MV) y.tab.h boolyac.h; \
	else exit 0; fi
