MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = il

lib_LTLIBRARIES = libDtHelp.la

libDtHelp_la_CFLAGS = -I./il -I./jpeg -I../DtSvc/DtUtil2 -DDTLIB \
		      -DCDE_INSTALLATION_TOP='"${prefix}"' \
		      -DCDE_CONFIGURATION_TOP='"$(CDE_CONFIGURATION_TOP)"'

libDtHelp_la_LIBADD = -ljpeg il/libil.la

if SOLARIS
libDtHelp_la_CFLAGS += -DICONV_INBUF_CONST=const -DLSB_BIT_ORDER
libDtHelp_la_LIBADD += -lw -lgen -lm -lc $(XTOOLLIB) ${X_LIBS}
endif

if AIX
libDtHelp_la_CFLAGS += -DICONV_INBUF_CONST=const
libDtHelp_la_LIBADD += $(XTOOLLIB) ${X_LIBS} -liconv
endif

if LINUX
libDtHelp_la_CFLAGS += -DLSB_BIT_ORDER
endif

if BSD
libDtHelp_la_CFLAGS += -DLSB_BIT_ORDER
libDtHelp_la_LIBADD += -liconv $(XTOOLLIB) ${X_LIBS}
endif

if HPUX
libDtHelp_la_LIBADD += $(LIBSVC) -lXm -lm $(XTOOLLIB) ${X_LIBS}
endif

libDtHelp_la_SOURCES = Actions.c       AsciiSpc.c      Callbacks.c \
		       Destroy.c       Environ_c.c     FileListUtils.c \
		       FileUtils.c     Font.c          Format.c \
		       FormatMan.c     FormatTerm.c    GifUtils.c \
		       GlobSearch.c    Graphics.c      HelpAccess.c \
		       HelpDialog.c    HelpQuickD.c    HelpUtil.c \
		       Helpos.c        History.c       HourGlass.c \
		       HyperText.c     JpegUtils.c     Messages.c \
		       PathArea.c      Print.c         Resize.c \
		       SetList.c       VolSelect.c     XInterface.c \
		       XUICreate.c     XbmUtils.c      Access.c     \
		       AccessCCDF.c    AccessSDL.c     CCDFUtil.c   \
		       CleanUp.c       FontAttr.c      FormatCCDF.c \
		       FormatSDL.c     FormatUtil.c    GenUtils.c   \
		       Obsolete.c      StringFuncs.c   UtilSDL.c    \
		       bufio.c         decompress.c    HelpXlate.c  \
		       Canvas.c        CanvasOs.c      CvString.c \
		       Layout.c        LayoutUtil.c    LinkMgr.c \
		       Selection.c     VirtFuncs.c

libDtHelp_la_LDFLAGS = -version-info 2:1:0
