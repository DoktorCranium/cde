MAINTAINERCLENAFILES = Makefile.in

bin_PROGRAMS = tttar

tttar_CXXFLAGS = $(TIRPCINC) -I../../lib $(TT_VERSION_DEFINE)

tttar_LDADD = @LIBTT@ $(X_LIBS) ../../slib/libstt.a ../../mini_isam/libisam.a

if LINUX
tttar_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SOLARIS
tttar_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if OPENBSD
tttar_LDADD += $(XTOOLLIB)
endif

tttar_SOURCES = tttar.C \
		archiver.C \
		tttar_utils.C \
		tttar_api.C \
		tttar_spec.C \
		tttar_file_utils.C \
		tttar_string_map.C
