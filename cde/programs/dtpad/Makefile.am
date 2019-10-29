MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtpad

dtpad_CFLAGS = -DDT_LITE -DWORDWRAP -UNLS16 $(TIRPCINC)

dtpad_LDADD = $(LIBPRINT) $(LIBHELP) $(LIBWIDGET) $(LIBSVC) $(LIBTT) -lXm \
	      $(TIRPCLIB) $(XTOOLLIB)

if SOLARIS
dtpad_CFLAGS += -xF
dtpad_LDFLAGS = -lintl -lresolv
endif

dtpad_SOURCES = dtpad.c         editCB.c        fileCB.c \
		fileDlg.c       fileIo.c        formatCB.c \
		helpCB.c        helpDlg.c       main.c \
		optionsCB.c     printJob.c      printOutput.c \
		printSetup.c    session.c       ttMsgSupport.c \
		ttSaveSupport.c
