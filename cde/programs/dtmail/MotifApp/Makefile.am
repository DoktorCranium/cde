MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libMotifApp.a

libMotifApp_a_CXXFLAGS = -I../include/MotifApp -I../include -I../include/utils \
			 $(TIRPCINC)
if SUN

 if USE_SPRO_V3
 libMotifApp_a_CXXFLAGS += -noex -xO0 -USPRO_V2
  if DEBUGTREE
  libMotifApp_a_CXXFLAGS += -xsb
  endif
 endif

libMotifApp_a_CXXFLAGS += -DMMAP_NORESERVE -DSPRO_V2

 if I386
 libMotifApp_a_CXXFLAGS += -DBIG_ENDIAN
 endif

endif

if HPUX
libMotifApp_a_CXXFLAGS += -DUSE_SOCKSTREAM -DBIG_ENDIAN -DDO_ANONYMOUS_MAP \
                        -DNEED_MMAP_WRAPPER -DSENDMAIL_LOCKS +p \
                        -DMAILGROUP_REQUIRED -DMAIL_SPOOL_PATH=\"/var/mail/%s\"
endif

if AIX
libMotifApp_a_CXXFLAGS += -DI_HAVE_NO_BOOL -DI_HAVE_SELECT_H -DBIG_ENDIAN \
                        -DSTRCASECMP_NOT_DEFINED -DDO_ANONYMOUS_MAP \
                        -DSENDMAIL_LOCKS -DMAILGROUP_REQUIRED \
                        -DMAIL_SPOOL_PATH=\"/var/spool/mail/%s\"
endif

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

if SUN
clean::
	$(RM) -r .sb
	$(RM) .make.state*
endif
