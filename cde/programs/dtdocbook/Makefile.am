MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = doc_utils dtsr instant locales sgml spec tcl tpt

include dtdocbook.am

bin_SCRIPTS = dtdocbook2man dtdocbook2sdl
bin_PROGRAMS = dtdocbook2infolib

AM_LDFLAGS = $(XTOOLLIB) $(DTCLIENTLIBS)

dtdocbook2infolib_CPPFLAGS = \
			     -DDTDCBK_DATAROOTDIR=\"$(dtdcbk_datarootdir)\" \
			     -DINFOLIB_LIBEXECDIR=\"$(PWD)\"
