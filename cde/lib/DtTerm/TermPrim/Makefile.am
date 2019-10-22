MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libTermPrim.la

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

if AIX
libTermPrim_la_SOURCES += TermPrimGetPty-clone.c
else
 if BSD
 libTermPrim_la_SOURCES += TermPrimGetPty-bsd.c
 else
 libTermPrim_la_SOURCES += TermPrimGetPty-svr4.c
 endif
endif
