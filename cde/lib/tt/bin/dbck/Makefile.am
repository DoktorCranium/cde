MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

bin_PROGRAMS = ttdbck

ttdbck_LDADD = $(LIBTT) $(X_LIBS) ../../slib/libstt.a ../../mini_isam/libisam.a

if LINUX
ttdbck_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SOLARIS
ttdbck_LDADD += $(XTOOLLIB)
endif

if OPENBSD
ttdbck_LDADD += $(XTOOLLIB)
endif

ttdbck_CXXFLAGS = $(TIRPCINC) -I../../slib -I../../lib -I../../mini_isam \
		   $(TT_VERSION_DEFINE)

ttdbck_SOURCES = binkey.C        binkey_utils.C  common.C \
		 options.C       options_tt.C    prop.C \
		 prop_utils.C    spec.C          spec_repair.C \
		 spec_utils.C    ttdbck.C
