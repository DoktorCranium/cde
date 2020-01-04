MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

bin_PROGRAMS = ttsession

ttsession_CXXFLAGS = -I../../slib -I../../lib $(TT_VERSION_DEFINE)

ttsession_LDADD = @LIBTT@ $(X_LIBS) ../../slib/libstt.a

if LINUX
ttsession_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SOLARIS
ttsession_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if BSD
ttsession_LDADD += $(XTOOLLIB)
endif

ttsession_SOURCES = mp_server.C
