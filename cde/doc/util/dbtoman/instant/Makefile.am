MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = instant

instant_CFLAGS = -I$(srcdir)/programs/dtdocbook/lib/tptregexp

instant_LDFLAGS = -L$(srcdir)/programs/dtdocbook/lib/tptregexp -ltptregexp

instant_SOURCES = main.c util.c info.c translate.c traninit.c tranvar.c \
		  tables.c browse.c
