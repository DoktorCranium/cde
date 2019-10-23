MAINTAINERCLEANFILES = Makefile.in

lib_LTLIBRARIES = libDtPrint.la

libDtPrint_la_CFLAGS = -DMULTIBYTE -DI18N_MSG

if SOLARIS
libDtPrint_la_CFLAGS += -DNO_REGCOMP
endif

if HPUX
libDtPrint_la_CFLAGS += -DMESSAGE_CAT
endif

libDtPrint_la_SOURCES = PrintMsgs.c PrintDlgMgr.c PrintOptions.c PrintSetupB.c \
			PsubDefProc.c PsubUtil.c
