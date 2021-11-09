MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = instant

instant_CFLAGS = -I$(top_builddir)/programs/dtdocbook/lib/tptregexp

instant_LDADD = $(top_builddir)/programs/dtdocbook/lib/tptregexp/libtptregexp.a

instant_SOURCES = main.c util.c info.c translate.c traninit.c tranvar.c \
		  tables.c browse.c
