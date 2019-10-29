MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = instant

instant_CFLAGS = -I../lib/tptregexp -I$(SVCSRC)/DtUtil2

instant_LDADD = $(LIBSVC) $(LIBTT) $(XTOOLLIB) ${X_LIB} -L../lib/tptregexp \
		-ltptregexp -lm
if LINUX
instant_CFLAGS += -I/usr/include/tcl
instant_LDADD += -ltcl
endif

if FREEBSD
instant_CFLAGS += -I/usr/local/include/tcl8.6
instant_LDADD += -ltcl86
endif

if OPENBSD
instant_CFLAGS += -I/usr/local/include/tcl8.6
instant_LDADD += -ltcl86
endif

if NETBSD
instant_CFLAGS += -I/usr/pkg/include/tcl
instant_LDADD += -ltcl86
endif

if SOLARIS
instant_LDADD += -lsocket -lnsl -lgen
endif

instant_SOURCES = main.c util.c info.c translate.c traninit.c tranvar.c \
		  tables.c browse.c
