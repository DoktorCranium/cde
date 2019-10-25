MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = api db mp util tttk

include ../tooltalk.inc

lib_LTLIBRARIES = libtt.la

libtt_la_CFLAGS = $(TIRPCINC)

if AIX
libtt_la_SOURCES = realpath.c
else
libtt_la_SOURCES =
endif

libtt_la_LIBADD = api/c/libapi.la api/dnd/libdnd.la db/libdb.la mp/libmp.la \
		  util/libutil.la tttk/libtttk.la -lstdc++

if SOLARIS
libtt_la_LIBADD += -lnsl -lsocket -lintl -ldl -lc -lw
endif

libtt_la_LDFLAGS = -version-info 2:1:0
