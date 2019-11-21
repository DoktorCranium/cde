MAINTAINERCLENAFILES = Makefile.in

include ../../tooltalk.inc

bin_PROGRAMS = tttar

tttar_CXXFLAGS = -I../../lib $(TT_VERSION_DEFINE)

tttar_LDADD = @LIBTT@ ../../slib/libstt.a ../../mini_isam/libisam.a \
	$(XTOOLLIB)

if SOLARIS
tttar_LDADD += -ldl -lintl -lsocket -lnsl
endif

tttar_SOURCES = tttar.C \
		archiver.C \
		tttar_utils.C \
		tttar_api.C \
		tttar_spec.C \
		tttar_file_utils.C \
		tttar_string_map.C
