MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

# JET - this is kind of hacky - we need to have ylwrap compile as C++
# not C, but the default lex/yac suffices are /l and .y, which means
# C.  So we "fix" that.

BUILT_SOURCES = mp_types_lex.L mp_types_gram.Y
CLEANFILES = mp_types_lex.L mp_types_gram.Y
mp_types_lex.L:
	$(LN_S) mp_types_lex.l mp_types_lex.L

mp_types_gram.Y:
	$(LN_S) mp_types_gram.y mp_types_gram.Y

AM_YFLAGS = -d

bin_PROGRAMS = tt_type_comp

tt_type_comp_CXXFLAGS = $(TIRPCINC) -I../../lib -I../../slib \
			$(TT_VERSION_DEFINE) -I../../lib

tt_type_comp_SOURCES = mp_type_comp.C        mp_types_table.C \
		frozen.mp_types_lex.C frozen.mp_types_gram.C \
		mp_types_lex.L mp_types_gram.Y

tt_type_comp_LDADD = @LIBTT@ $(X_LIBS) ../../slib/libstt.a

if LINUX
tt_type_comp_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SOLARIS
tt_type_comp_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if OPENBSD
tt_type_comp_LDADD += $(XTOOLLIB)
endif

