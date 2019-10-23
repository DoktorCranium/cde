SUBDIRS = util libUI objects UI

all:: dtprintinfo_cat.h dtprintinfo_msg.h dtprintinfo.msg

if SUN
.NO_PARALLEL:
endif

bin_PROGRAMS = dtprintinfo

dtprintinfo_CXXFLAGS = -I./UI -I./libUI -I./util -I./libUI/MotifUI -I./objects \
		       -I./objects/PrintObj

dtprintinfo_LDADD = ./UI/libDtPrintinfo.a ./util/libUtil.a \
        ./libUI/MotifUI/libMotifUI.a ./objects/PrintObj/libPrintObj.a \
	$(LIBHELP) $(LIBWIDGET) $(LIBSVC) $(LIBTT) $(XTOOLLIB) ${X_LIBS}

if SUN
dtprintinfo_LDADD += -lm -ldl
endif

if AIX
dtprintinfo_CXXFLAGS += -DHAS_EXCEPTIONS
endif

#special processing for message files
SYM2NUM_CMD = $(KSH) sym2num

dtprintinfo_SOURCES = libUI/BaseUI.C libUI/Test.C objects/BaseObj.C \
		      DtPrintinfo.C

dtprintinfo_msg.h dtprintinfo.msg: dtprintinfo.msg.src
	rm -f dtprintinfo_msg.h dtprintinfo.msg
	$(SYM2NUM_CMD) dtprintinfo dtprintinfo.msg.src > dtprintinfo.msg

dtprintinfo_cat.h: dtprintinfo.msg.src
	rm -f dtprintinfo_cat.h
	$(AWK) -f msg.awk dtprintinfo.msg.src > dtprintinfo_cat.h

CLEANFILES = *.map dtprintinfo_cat.h dtprintinfo_msg.h dtprintinfo.msg
