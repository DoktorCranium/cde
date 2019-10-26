MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libDtUtil2.la

libDtUtil2_la_CFLAGS = -I../include $(TIRPCINC) -DMULTIBYTE \
			@DT_INCDIR@ \
			-DCDE_INSTALLATION_TOP=\"${prefix}\" \
			-DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\" \
			-DMULTIBYTE -DUSE_XINERAMA $(TIRPCINC)


libDtUtil2_la_SOURCES = ChkpntClient.c ChkpntListen.c DtEnvMap.c \
			DtNlUtils.c EnvControl.c FileUtil.c \
			GetDispRes.c GetMessage.c HourGlass.c \
			Info.c SharedProcs.c SmCreateDirs.c \
			UErrNoBMS.c Utility.c ActIndicator.c \
			CmdUtility.c DtGetMessage.c DtUtil.c \
			GetEmbed.c Hash.c PrintXErr.c \
			XmWrap.c addToRes.c lock.c \
			SvcTT.c MsgCat.c MsgLog.c \
			LocaleXlate.c XlationSvc.c

if SOLARIS
libDtUtil2_la_SOURCES += SunDtHelp.c
libDtUtil2_la_CFLAGS += -I../../DtHelp -DNO_REGCOMP
endif

if HPUX
libDtUtil2_la_CFLAGS += -DMESSAGE_CAT
endif


