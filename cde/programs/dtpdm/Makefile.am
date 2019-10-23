MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtpdm

dtpdm_CFLAGS = -DI18N_MSG -DCDE_INSTALLATION_TOP=\"${prefix}\"

dtpdm_LDADD = $(LIBPRINT) $(LIBHELP) $(LIBWIDGET) $(LIBSVC) $(LIBTT) -lXm \
	      $(XTOOLLIB) ${X_LIBS}

if SUN
dtpdm_LDADD += -lintl -lm -lgen -ldl -lresolv
endif

if AIX
dtpdm_LDADD += -lmsaa -liconv
endif

dtpdm_SOURCES = JobBox.c        Main.c          MainWindow.c \
		PdmMsgs.c       PdmOid.c        PdmXp.c \
		PrinterBox.c
