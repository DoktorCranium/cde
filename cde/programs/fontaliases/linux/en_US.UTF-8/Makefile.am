MAINTAINERCLEANFILES = Makefile.in

include ../../../localized/templates/English.am
include ../../bdf/fonts.am

noinst_PROGRAMS = mk_fonts_alias test_fonts_alias

mk_fonts_alias_SOURCES = mk_fonts_alias.c
test_fonts_alias_SOURCES = test_fonts_alias.c
test_fonts_alias_LDADD = $(XTOOLLIB)

fonts.alias: mk_fonts_alias
	./$< > $@
