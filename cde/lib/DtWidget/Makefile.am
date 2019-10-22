unixdir = ${prefix}/app-defaults/C

MAINTAINERCLEANFILES = Makefile.in

CLEANFILES = UNIXbindings

lib_LTLIBRARIES = libDtWidget.la

unix_PROGRAMS = UNIXbindings

AM_CPPFLAGS = -DCDE_INSTALLATION_TOP=${prefix}

libDtWidget_la_CFLAGS = -DI18N_MSG -DMULTIBYTE

if LINUX
libDtWidget_la_CFLAGS += -I/usr/include/freetype2
endif

if CSRG
libDtWidget_la_CFLAGS += -I$(x_includes)/freetype2
if NETBSD
 libDtWidget_la_CFLAGS += -I$(x_includes)
endif
endif

if SUN
libDtWidget_la_CFLAGS += -DNO_REGCOMP
libDtWidget_la_LIBADD += -lXm -lc -lw -lm -lintl
endif

if HPUX
libDtWidget_la_CFLAGS += -DMESSAGE_CAT
endif

libDtWidget_la_LIBADD += -version-info 2:1:0

libDtWidget_la_SOURCES = ComboBox.c      Control.c       DialogBox.c \
			 DtMsgs.c        DtStrDefs.c     EditAreaData.c \
			 EditCalls.c     Editor.c        Icon.c \
			 MenuButton.c    NewCvt.c        SearchCalls.c \
			 SearchDlg.c     SpinBox.c       TitleBox.c \
			 View.c

CPPTARGET = UNIXbindings
CPPSRC = UNIXbindings.cpp
include $(srcdir)/include/cppfile.tmpl
