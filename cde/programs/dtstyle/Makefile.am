MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtstyle

noinst_PROGRAMS = Dtstyle Dtstyle.iso Backdrops Backdrops.iso Palettes \
		  Palettes.iso

dtstyle_CPPFLAGS = -DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\" \
		 -DCDE_INSTALLATION_TOP=\"${prefix}\" -I../dthelp $(TIRPCINC)

dtstyle_LDADD = $(LIBPRINT) $(LIBHELP) $(LIBWIDGET) $(LIBSVC) $(LIBTT) \
		-lm $(XTOOLLIB) ${X_LIBS}

if AIX
dtstyle_CFLAGS += -DANSICPP -Aa -D_POSIX_SOURCE
endif

if SUN
EXTRA_SRC = OWsync.c
endif

dtstyle_SOURCES = Main.c MainWin.c Font.c Audio.c \
		  Startup.c Mouse.c SaveRestore.c Backdrop.c Screen.c \
		  Keyboard.c ColorMain.c ColorPalette.c ColorFile.c \
		  ColorEdit.c Resource.c Protocol.c Dtwm.c Help.c HelpCB.c \
		  I18nMain.c I18nEnv.c I18nUtil.c $(EXTRA_SRC)

SCRIPTFLAGS = -DCDE_INSTALLATION_TOP=${prefix}

CPPTARGET = Dtstyle
CPPSRC = Dtstyle.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = Palettes
CPPSRC = Palettes.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = Backdrops
CPPSRC = Backdrops.src
include $(srcdir)/include/cppfile.tmpl
