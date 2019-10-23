MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libMotifUI.a

libMotifUI_a_CXXFLAGS = -I.. -DKORNSHELL=\"$(KSH)\"

if AIX
libMotifUI_a_CXXFLAGS = -DHAS_EXCEPTIONS

libMotifUI_a_SOURCES = Application.C   Button.C        ComboBoxObj.C \
		       Container.C     Debug.c         Dialog.C \
		       DtDND.C         Group.C         HelpSystem.C \
		       Icon.c          IconObj.C       LabelObj.C \
		       MainWindow.C    Menu.C          MenuBar.C \
		       MotifThread.C   MotifUI.C       Prompt.C \
		       ScaleObj.C      Sep.C           WorkArea.c
