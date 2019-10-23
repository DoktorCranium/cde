configdir = ${prefix}/config/C

SUBDIRS = dtcopy

bin_PROGRAMS = dtfile

dist_config_DATA = dtfile.config

dist_bin_SCRIPTS = dtfile_error

dtfile_CPPFLAGS = -I./dtcopy -I(TIRPCINC) -DSHAPE -D_ILS_MACROS -DSUN_PERF \
		-DUSE_XINERAMA -DCDE_INSTALLATION_TOP=\"${prefix}\" \
		-DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\" \
		-DKORNSHELL=\"$(KSH)\" -I${x_includes}/freetype2

dtfile_LDADD = $(LIBPRINT) $(LIBHELP) $(LIBWIDGET) $(LIBSVC) $(LIBTT) -lXm \
	       $(XTOOLLIB) ${X_LIBS} -lXinerama dtcopy/sharedFuncs.o \
	       dtcopy/fsrtns.o

if OPENBSD
dtfile_CPPFLAGS += -DFILE_MAP_OPTIMIZE
endif

if LINUX
dtfile_CPPFLAGS += -DFILE_MAP_OPTIMIZE
endif

if SUN
dtfile_CFLAGS += -xF
dtfile_LDADD += -lintl -lresolv
endif

dtfile_SOURCES = ChangeDir.c     ChangeDirP.c    Command.c       Common.c \
		 Desktop.c       Directory.c     Encaps.c        File.c \
		 FileDialog.c    FileManip.c     FileMgr.c       FileOp.c \
		 Filter.c        FilterP.c       Find.c          FindP.c \
		 Help.c          HelpCB.c        HelpP.c         IconWindow.c \
		 IconicPath.c    Main.c          Menu.c          MkDir.c \
		 ModAttr.c       ModAttrP.c      MultiView.c     OverWrite.c \
		 Prefs.c         PrefsP.c        SharedMsgs.c    SharedProcs.c \
		 ToolTalk.c      Trash.c         Utils.c         fsDialog.c

CPPSRC = dtfile.config.cpp
CPPTARGET = dtfile.config
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtfile_error
CPPTARGET = dtfile_error
include $(srcdir)/include/cppfile.tmpl
