MAINTAINERCLEANFILES = Makefile.in

lib_LTLIBRARIES = libDtPrint.la

libDtPrint_la_CFLAGS = -DMULTIBYTE -DI18N_MSG @DT_INCDIR@
libDtPrint_la_LDFLAGS = -version-info 3:0:1

if SOLARIS
libDtPrint_la_CFLAGS += -DNO_REGCOMP
endif

libDtPrint_la_SOURCES = PrintMsgs.c PrintDlgMgr.c PrintOptions.c PrintSetupB.c \
			PsubDefProc.c PsubUtil.c
