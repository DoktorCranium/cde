MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dticon

dticon_CFLAGS = -D__TOOLTALK $(TIRPCINC)

if SOLARIS
LIBHELP =
endif

dticon_LDADD = ${X_LIBS} -lm $(LIBHELP) $(LIBWIDGET) $(LIBSVC) $(LIBTT) \
	       $(XTOOLLIB) -lXm

if SOLARIS
dticon_LDADD += -ldl
endif

if AIX
dticon_LDADD += -liconv
endif

dticon_SOURCES = dtIconShell.c   event.c         fileIO.c \
                 fileIODialog.c  globals.c       graphics.c \
                 help.c          image.c         main.c \
                 newIconDialog.c process.c       queryDialog.c \
                 stdErrDialog.c  utils.c
