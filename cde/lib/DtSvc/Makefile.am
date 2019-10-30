MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = DtUtil1 DtUtil2 DtEncap DtCodelibs DtXpm

lib_LTLIBRARIES = libDtSvc.la

libDtSvc_la_SOURCES =

libDtSvc_la_LIBADD = DtUtil1/*.lo DtUtil2/*.lo DtEncap/*.lo \
		    DtCodelibs/*.lo DtXpm/*.lo
libDtSvc_la_LDFLAGS = -fPIC -version-info 2:1:0
