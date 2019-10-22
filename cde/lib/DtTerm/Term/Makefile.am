MAINTAINERCLEANFILES = Makefile.in

CLEANFILES = TermLineData.c

dtdir = ${includedir}/Dt

dt_HEADERS = Term.h

noinst_LTLIBRARIES = libTerm.la

libTerm_la_CFLAGS = -I../TermPrim

TermLineData.c: TermLineData.data
	$(RM) $@
	../util/lineToData -p _DtTerm -f TermLineData.data > $@

includes:: TermLineData.c

libTerm_la_SOURCES = \
        Term.c \
        TermAction.c \
        TermBuffer.c \
        TermColor.c \
        TermEnhance.c \
        TermFunction.c \
        TermFunctionKey.c \
        TermLineData.c \
        TermParse.c \
        TermParseTable.c \
        TermVersion.c
