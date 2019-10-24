MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

bin_PROGRAMS = tttrace

tttrace_CXXFLAGS = $(TIRPCINC) -I../../lib

tttrace_LDADD = $(LIBTT) $(X_LIBS)

if LINUX
tttrace_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SOLARIS
tttrace_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if OPENBSD
tttrace_LDADD += $(XTOOLLIB)
endif

tttrace_SOURCES = tttrace.C tttrace_objs.C
