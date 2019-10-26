MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libTermPrim.la

AM_CPPFLAGS = @DT_INCDIR@

libTermPrim_la_SOURCES = TermPrim.c \
        TermPrimAction.c \
        TermPrimBuffer.c \
        TermPrimBufferWc.c \
        TermPrimCursor.c \
        TermPrimDebug.c \
        TermPrimFunction.c \
        TermPrimLineDraw.c \
        TermPrimParse.c \
        TermPrimParseTable.c \
        TermPrimParser.c \
        TermPrimPendingText.c \
        TermPrimRender.c \
        TermPrimRenderMb.c \
        TermPrimRenderFont.c \
        TermPrimRenderFontSet.c \
        TermPrimRenderLineDraw.c \
        TermPrimRepType.c \
	TermPrimScroll.c \
        TermPrimSelect.c \
        TermPrimSetPty.c \
        TermPrimSetUtmp.c \
        TermPrimSubproc.c \
        TermPrimUtil.c    \
        TermPrimVersion.c \
        TermPrimWMProtocols.c

# JET there may be some more missing here...

if AIX
libTermPrim_la_SOURCES += TermPrimGetPty-clone.c
endif

if SOLARIS
libTermPrim_la_SOURCES += TermPrimGetPty-svr4.c
AM_CPPFLAGS += -DSUN_ARCHITECTURE
endif

# uses CSRG_BASED...
if BSD
libTermPrim_la_SOURCES += TermPrimGetPty-bsd.c
endif

if OPENBSD
AM_CPPFLAGS += -DOPENBSD_ARCHITECTURE
endif

if LINUX
libTermPrim_la_SOURCES += TermPrimGetPty-svr4.c
AM_CPPFLAGS += -DLINUX_ARCHITECTURE
endif
