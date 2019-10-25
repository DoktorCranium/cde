MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

bin_PROGRAMS = ttmv ttrm ttcp ttrmdir

AM_CXXFLAGS = -I../../lib $(TIRPCINC) $(TT_VERSION_DEFINE)

LDADD = @LIBTT@ $(X_LIBS)

if LINUX
LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SOLARIS
LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if OPENBSD
LDADD += $(XTOOLLIB)
endif

ttmv_SOURCES = ttmv.C mover.C

ttrm_SOURCES = ttrm.C remover.C

ttcp_SOURCES = ttcp.C copier.C

ttrmdir_SOURCES = ttrm.C remover.C
