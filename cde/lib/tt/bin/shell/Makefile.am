MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

bin_PROGRAMS = ttmv ttrm ttcp ttrmdir

AM_CXXFLAGS = -I../../lib $(TT_VERSION_DEFINE)

LDADD = @LIBTT@ $(TIRPCLIB) $(XTOOLLIB)

if SOLARIS
LDADD += -ldl -lintl -lsocket -lnsl
endif

ttmv_SOURCES = ttmv.C mover.C

ttrm_SOURCES = ttrm.C remover.C

ttcp_SOURCES = ttcp.C copier.C

ttrmdir_SOURCES = ttrm.C remover.C
