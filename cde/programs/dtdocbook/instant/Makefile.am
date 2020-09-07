MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = instant

instant_CFLAGS = -I../lib/tptregexp $(DT_INCDIR)

instant_LDADD = $(DTCLIENTLIBS) $(XTOOLLIB) -L../lib/tptregexp \
		-ltptregexp

instant_CFLAGS += @TCL_INCLUDE_SPEC@
instant_LDADD += @TCL_LIB_SPEC@

instant_SOURCES = main.c util.c info.c translate.c traninit.c tranvar.c \
		  tables.c browse.c
