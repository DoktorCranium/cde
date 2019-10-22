MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = DtUtil1 DtUtil2 DtEncap DtCodelibs DtXpm

lib_LTLIBRARIES = libDtSvc.la

libDtSvc_la_SOURCES =

libDtSvc_la_LIBADD = $(LIBXIN) -lXinerama DtUtil1/libDtUtil1.la \
		    DtUtil2/libDtUtil2.la DtEncap/libDtEncap.la \
		    DtCodelibs/libDtCodelibs.la DtXpm/libDtXpm.la
libDtSvc_la_LDFLAGS = -version-info 2:1:0
