MAINTAINERCLEANFILES = Makefile.in

lib_LTLIBRARIES = libDtPamSvc.la

# the PamSvc.h header file is located in include/Dt/
libDtPamSvc_la_SOURCES = PamSvc.c ${top_srcdir}/include/Dt/PamSvc.h

libDtPamSvc_la_LIBADD = -lpam

# in order to try to keep lib versions the same across platforms, (2.1.0)
if BSD
libDtPamSvc_la_LDFLAGS = -version-info 2:1:0
else
libDtPamSvc_la_LDFLAGS = -version-info 3:0:1
endif


