MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libMotifApp.a

libMotifApp_a_CXXFLAGS = -I../include/MotifApp -I../include -I../include/utils \
			 $(TIRPCINC)

# FIXME - some of these aren't set and sould be by configure.ac
#if SOLARIS

#if USE_SPRO_V3
#libMotifApp_a_CXXFLAGS += -noex -xO0 -USPRO_V2
#endif

#if DEBUGTREE
#libMotifApp_a_CXXFLAGS += -xsb
#endif
#
#libMotifApp_a_CXXFLAGS += -DMMAP_NORESERVE -DSPRO_V2

#endif

libMotifApp_a_SOURCES = Application.C           AskFirstCmd.C \
			BasicComponent.C        BusyPixmap.C \
			ButtonInterface.C       Cmd.C \
			CmdInterface.C          CmdList.C \
			DialogManager.C         Help.C \
			IconifyCmd.C            InfoDialogManager.C \
			InterruptibleCmd.C      Main.C \
			MainWindow.C            ManageCmd.C \
			MenuBar.C               MenuWindow.C \
			MotifCmds.C             NoUndoCmd.C \
			PixmapCycler.C          PromptDialogManager.C \
			QuestionDialogManager.C QuitCmd.C \
			ScrollingList.C         SelectFileCmd.C \
			ToggleButtonInterface.C UIComponent.C \
			UndoCmd.C               WarnNoUndoCmd.C \
			WorkingDialogManager.C

if SOLARIS
clean-local:
	$(RM) -r .sb
	$(RM) .make.state*
endif
