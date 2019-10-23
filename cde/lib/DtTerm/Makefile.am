MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = util TermPrim Term TermView

lib_LTLIBRARIES = libDtTerm.la

libDtTerm_la_SOURCES =

libDtTerm_la_LIBADD = Term/libTerm.la TermPrim/libTermPrim.la \
		       TermView/libTermView.la

if OPENBSD
libDtTerm_la_LIBADD += -lutil
endif

if SOLARIS
libDtTerm_la_LIBADD += -ldl -lgen
endif

libDtTerm_la_LDFLAGS = -version-info 2:1:0
