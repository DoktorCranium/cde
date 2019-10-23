bin_PROGRAMS = dtcalc

dtcalc_CPPFLAGS = -DCDE_INSTALLATION_TOP=${prefix}

dtcalc_LDADD = ${X_LIBS} -lm $(TTLIB) $(LIBSVC) $(LIBHELP)

if AIX
dtcalc_LDADD += -lmsaa -liconv
endif

if SUN
dtcalc_LDADD += -lintl -ldl
endif


dtcalc_SOURCES = calctool.c      ds_common.c     ds_popup.c \
		 ds_widget.c     ds_xlib.c       functions.c \
		 help.c          motif.c         mp.c \
		 text.c
