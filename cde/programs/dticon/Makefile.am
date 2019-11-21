MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dticon

dticon_CFLAGS = -D__TOOLTALK

dticon_LDADD = $(DTCLIENTLIBS) $(XTOOLLIB)

if SOLARIS
dticon_LDADD += -ldl
endif

dticon_SOURCES = dtIconShell.c event.c fileIO.c fileIODialog.c	\
                 globals.c graphics.c help.c image.c main.c	\
                 newIconDialog.c process.c queryDialog.c	\
                 stdErrDialog.c utils.c constants.h externals.h	\
                 help.h main.h
