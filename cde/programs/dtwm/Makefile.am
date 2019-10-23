configdir = ${prefix}/config/C

bin_PROGRAMS = dtwm dtfplist

dist_config_DATA = sys.dtwmrc

AM_CPPFLAGS = -DLARGECURSORS -DR2_COMPAT -DOPAQUE -DSHAPE -DUNMAP_ON_RESTART \
	      -DBATCH_DRAG_REQUESTS -DCDE_INSTALLATION_TOP=\"${prefix}\" \
	      -DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\" \
	      -I$(TIRPCINC)

AM_LDADD = $(LIBXIN) -lXinerama $(LIBPRINT) $(LIBHELP) $(LIBWIDGET) \
	   $(LIBSVC) $(LIBTT) -lXm $(XTOOLLIB) ${X_LIBS}

if SUN
AM_LDADD += -lintl -lresolv
endif

if HPUX
AM_CFLAGS += -D_HPUX_SOURCE
endif

dtwm_SOURCES = WmCDInfo.c      WmCDecor.c      WmCEvent.c \
               WmCPlace.c      WmColormap.c    WmError.c \
               WmEvent.c       WmFeedback.c    WmFunction.c \
               WmGraphics.c    WmIDecor.c      WmIPlace.c \
               WmIconBox.c     WmImage.c       WmInitWs.c \
               WmKeyFocus.c    WmMain.c        WmManage.c \
               WmMenu.c        WmProperty.c    WmProtocol.c \
               WmResCvt.c      WmResParse.c    WmResource.c \
               WmSignal.c      WmWinConf.c     WmWinInfo.c \
               WmWinList.c     WmWinState.c    WmMultiHead.c
	       Button.c        Callback.c      Clock.c \
               DataBaseLoad.c  PanelS.c        Parse.c \
               PopupMenu.c     Session.c       UI.c \
               WmBackdrop.c    WmFP.c          WmHelp.c \
               WmIPC.c         WmOL.c          WmParse.c \
               WmParseP.c      WmPresence.c    WmWrkspace.c \
               WmXSMP.c

dtfplist_SOURCES = Print.c Parse.c DataBaseLoad.c WmParse.c Session.c

SCRIPTFLAGS = -DCDE_INSTALLATION_TOP=${prefix} \
              -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP)

CPPSRC = Dtwm.defs.src
CPPTARGET = Dtwm.defs
include $(srcdir)/include/cppfile.tmpl

CPPSRC = sys.dtwmrc.src
CPPTARGET = sys.dtwmrc
include $(srcdir)/include/cppfile.tmpl
