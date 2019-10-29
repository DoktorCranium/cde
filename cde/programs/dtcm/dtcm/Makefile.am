MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtcm dtcm_delete dtcm_insert dtcm_lookup dtcm_editor

AM_CFLAGS = -I../../../lib/csa -I../libDtCmP -I../../dthelp $(TIRPCINC)

AM_LDADD = ../libDtCmP/libDtCmP.a $(LIBCSA) $(LIBPRINT) $(LIBHELP) \
	   $(LIBWIDGET) $(LIBSVC) $(LIBTT) -lXm $(XTOOLLIB) ${X_LIBS}

if SOLARIS
AM_CFLAGS += -xstrconst -Xc -v
endif

if HPUX
AM_LDADD += -lrpcsvc -lV3
endif

if AIX
AM_LDADD += -lrpcsvc -lPW -ldiag
endif

if FREEBSD
AM_LDADD += -lcompat
endif

if NETBSD
AM_LDADD += -lcompat
endif

dtcm_SOURCES = MonthPanel.c    RFCMIME.c       about.c \
               alarm.c         blist.c         browser.c \
               calendarA.c     cm_i18n.c       cmtt.c \
               datefield.c     dayglance.c     deskset.c \
               dnd.c           dssw.c          editor.c \
               find.c          fns.c           font.c \
               format.c        goto.c          graphics.c \
               group_editor.c  help.c          i18nxlate.c \
               icon.c          md5.c           misc.c \
               monthglance.c   namesvc.c       print.c \
               props.c         props_pu.c      reminders.c \
               rfp.c           select.c        session.c \
	       submit.c        tempbr.c        timezone.c \
               todo.c          weekglance.c    x_graphics.c \
               yearglance.c

dtcm_delete_SOURCES = cm_delete.c

dtcm_insert_SOURCES = cm_insert.c

dtcm_lookup_SOURCES = cm_lookup.c

dtcm_editor_SOURCES = datefield.c     deskset.c       dssw.c \
		      dtcm_editor.c   help.c          misc.c \
		      reminders.c     rfp.c
