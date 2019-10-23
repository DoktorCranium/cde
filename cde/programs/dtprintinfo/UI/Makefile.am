MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libDtPrintinfo.a

libDtPrintinfo_a_CXXFLAGS = -I.. -I../libUI -I../libUI/MotifUI -I../objects \
			    -I../util -I../objects -I../objects/PrintObj

if AIX
libDtPrintinfo_a_CXXFLAGS += -DHAS_EXCEPTIONS
endif

libDtPrintinfo_a_SOURCES = DtActions.C     DtApp.C         DtDetailsLabel.C \
			   DtFindD.C       DtFindSet.C     DtMainW.C \
			   DtPrinterIcon.C DtProps.C       DtPrtJobIcon.C \
			   DtPrtProps.C    DtSetModList.C  DtSetPref.C \
			   DtWorkArea.C
