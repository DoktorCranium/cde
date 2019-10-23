MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libDtUtil1.la

libDtUtil1_la_CFLAGS = -I../include $(TIRPCINC) -DMULTIBYTE \
		       -DCDE_INSTALLATION_TOP=\"${prefix}\" \
		       -DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\"

if SOLARIS
libDtUtil1_la_CFLAGS += -DNO_REGCOMP
endif

if HPUX
libDtUtil1_la_CFLAGS += -DMESSAGE_CAT
endif

libDtUtil1_la_SOURCES = Action.c ActionTt.c ActionDb.c ActionFind.c \
			ActionUtil.c DbReader.c DbUtil.c CmdSpc.c \
			CmdMain.c CmdProcess.c CmdUtilityP.c Dnd.c \
			DndDrag.c DndDrop.c DndIcon.c DndBuff.c DndFile.c \
			DndText.c Dt.c Dts.c DtsDb.c DtsSort.c DbLoad.c \
			DtsInit.c DtHash.c intarray.c inttab.c strtab.c \
		        DtsMM.c MMDb.c GetVWmHint.c GetMwmW.c Qualify.c \
			Saver.c SetVWmHint.c SmComm.c SmUtil.c WmAddDelWs.c \
			WmBackWin.c WmChBackD.c WmGWsInfo.c WmGWsList.c \
			WmMarquee.c WmRestart.c WmRmWsFcn.c WmSetTitle.c \
			WmWsCallB.c WmSetWs.c WmWsHints.c WmWsOccupy.c
