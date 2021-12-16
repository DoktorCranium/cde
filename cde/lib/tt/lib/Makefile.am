MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = api db mp util tttk


lib_LTLIBRARIES = libtt.la

if AIX
libtt_la_SOURCES = realpath.c
else
libtt_la_SOURCES =
endif

# fake things so libtool creates this as a C++ library
nodist_EXTRA_libtt_la_SOURCES = dummy.cxx
libtt_la_LIBADD = api/c/libapi.la api/dnd/libdnd.la db/libdb.la mp/libmp.la \
		  util/libutil.la tttk/libtttk.la

if SOLARIS
# This stuff should be figured out by configure
libtt_la_LIBADD += -lnsl -lsocket -lintl -ldl -lc -lw
endif

if LINUX
libtt_la_LIBADD += $(TIRPCLIB)
endif

libtt_la_LDFLAGS = -version-info 3:0:1
