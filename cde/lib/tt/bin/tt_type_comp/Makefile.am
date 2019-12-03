MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

BUILT_SOURCES = mp_types_gram.h
CLEANFILES = mp_types_gram.h

mp_types_gram.h:
	$(RM) mp_types_gram.h
	$(LN_S) frozen.mp_types_gram.h mp_types_gram.h

bin_PROGRAMS = tt_type_comp

tt_type_comp_CXXFLAGS = -I../../lib -I../../slib \
			$(TT_VERSION_DEFINE) -DCPP_PROGRAM="\"$(GENCPP)\""

tt_type_comp_SOURCES = mp_type_comp.C        mp_types_table.C \
		frozen.mp_types_lex.C frozen.mp_types_gram.C

tt_type_comp_LDADD = $(LIBTT) ../../slib/libstt.a $(XTOOLLIB)

if SOLARIS
tt_type_comp_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

frozen.mp_types_lex.o: frozen.mp_types_gram.h
