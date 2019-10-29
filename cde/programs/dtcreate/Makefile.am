MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtcreate

dtcreate_CPPFLAGS = $(TIRPCINC)

if SOLARIS
LIBHELP =
endif

dtcreate_LDADD = $(LIBHELP) $(LIBWIDGET) $(LIBSVC) $(LIBTT) -lXm \
		 $(XTOOLLIB) ${X_LIBS} -lm

if HPUX
dtcreate_CFLAGS += -Aa +e -DANSICPP -D_POSIX_SOURCE=1 -D_HPUX_SOURCE
endif

if AIX
dtcreate_LDADD += -liconv
endif

if SOLARIS
dtcreate_LDADD += -ldl
endif

dtcreate_SOURCES = main.c AddFiletype.c   \
        Confirmed.c     \
        CreateActionAppShell.c  \
        FileCharacteristics.c   \
        OpenFile.c      \
        UxXt.c          \
        ca_aux.c        \
        cmncbs.c        \
        cmnutils.c      \
        cmnrtns.c       \
        ErrorDialog.c   \
        fileio.c        \
        af_aux.c        \
        icon_selection_dialog.c \
        parser.c
