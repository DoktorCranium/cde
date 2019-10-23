MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.tmpl

bin_PROGRAMS = ttmv ttrm ttcp ttrmdir

AM_CXXFLAGS = -I../../lib $(TIRPCINC) $(TT_VERSION_DEFINE)

AM_LDADD = $(LIBTT) $(X_LIBS)

if LINUX
AM_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SOLARIS
AM_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if OPENBSD
AM_LDADD += $(XTOOLLIB)
endif

ttmv_SOURCES = ttmv.C mover.C

ttrm_SOURCES = ttrm.C remover.C

ttcp_SOURCES = ttcp.C copier.C

ttrmdir_SOURCES = ttrm.C remover.C
