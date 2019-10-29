MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtmail

dtmail_CXXFLAGS = -I../include -I../include/MotifApp -I../include/utils \
		  -I../include/DtMail -I../libDtMail/RFC -I$(x_includes) \
		  $(TIRPCINC) -I$(srcdir)/lib -I../../dthelp -DRELEASE_NOTES \
		  -DDTMAIL_TOOLTALK -DDTEDITOR

dtmail_LDADD = ../libDtMail/libDtMail.a ../MotifApp/libMotifApp.a

# FIXME solaris....
#if SOLARIS
#dtmail_LDFLAGS = -lw
#if SUNPRODIR
#SUNPRO_DIR = SUNPRODIR
#else
#SUNPRO_DIR = /opt/SUNWspro
#endif
#C++LIBPATH = -L$(SUNPRO_DIR)/lib
#
#if USE_SPRO_V3
#SPRO_V3_OPTIONS =      -noex -USPRO_V2
#if DEBUGTREE
#3SPRO_V3_OPTIONS +=      -xsb
#endif
#else
#EXTRA_CCOPTIONS +=      -DSPRO_V2
#endif
#
#EXTRA_C++OPTIONS = -xF +w $(SPRO_V3_OPTIONS)
#EXTRA_CCOPTIONS = -xF -xstrconst -Xa -v
#if USE_EDITRES
#EXTRA_LIBRARIES = $(XMULIB) ExtraLibraries
#endif
#endif SOLARIS


dtmail_SOURCES = AliasListUiItem.C               AlternatesListUiItem.C \
		 AntiCheckBoxUiItem.C            AttachArea.C \
		 Attachment.C			 CheckBoxUiItem.C \
		 CheckForMailUiItem.C		 ComposeCmds.C \
		 CustomListUiItem.C		 Dialog.C \
		 DialogShell.C			 DmxMailbox.C \
		 DmxMessage.C			 DmxPrintJob.C \
		 DmxPrintOptions.C		 DmxPrintOutput.C \
                 DmxPrintSetup.C		 DmxUtils.C \
		 DtEditor.C			 DtMailEditor.C \
		 DtMailGenDialog.C		 DtMailWDM.C \
		 Editor.C			 EncryptedTextFieldUiItem.C \
		 FindDialog.C			 Fonts.C \
		 Icon.C				 IgnoreListUiItem.C \
		 Image.C			 InboxTextFieldUiItem.C \
		 IndexedOptionMenu.C		 IndexedOptionMenuUiItem.C \
		 ListUiItem.C			 MailRcSource.C \
		 MailRetrievalOptions.C		 MailSession.C \
		 MoveMenuListUiItem.C            MsgHndArray.C \
		 MsgScrollingList.C              NoOpCmd.C \
		 OptCmd.C                        PasswordDialogManager.C \
		 PropUi.C                        QueryDialogManager.C \
		 RoamApp.C                       RoamCmds.C \
		 RoamInterruptibleCmd.C          RoamMenuWindow.C \
		 ScaleUiItem.C                   SendMsgDialog.C \
		 Sort.C                          SortCmd.C \
		 SpinBoxUiItem.C                 StringTab.c \
		 TemplateListUiItem.C            TextFieldUiItem.C \
		 Undelete.C                      ViewMsgDialog.C \
		 WMSaveSession.C                 XmStrCollector.C \
		 XmTextEditor.C                  XtArgCollector.C \
		 dtb_utils.C                     options_stubs.C \
		 options_ui.C                    options_util.C
