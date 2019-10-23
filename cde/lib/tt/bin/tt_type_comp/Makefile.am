MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.tmpl

bin_PROGRAMS = tt_type_comp

tt_type_comp_CXXFLAGS = $(TIRPCINC) -I../../lib -I../../slib \
			$(TT_VERSION_DEFINE)

tt_type_comp_LDADD = $(LIBTT) $(X_LIBS) ../../slib/libstt.a

if LINUX
tt_type_comp_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SUN
tt_type_comp_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if OPENBSD
tt_type_comp_LDADD += $(XTOOLLIB)
endif

tt_type_comp_SOURCES = mp_type_comp.C        mp_types_table.C \
		       frozen.mp_types_lex.C frozen.mp_types_gram.C

frozen.mp_types_lex.o: frozen.mp_types_gram.h
