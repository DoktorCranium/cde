MAINTAINERCLEANFILES = Makefile.in

lib_LTLIBRARIES = libDtMrm.la

libDtMrm_la_CFLAGS = -I../DtTerm/Term -I../DtTerm/TermPrim -I../DtHelp \
		     @DT_INCDIR@ @DTI_INCDIR@

libDtMrm_la_SOURCES = DtMrm.c

libDtMrm_la_LDFLAGS = -version-info 2:1:0
