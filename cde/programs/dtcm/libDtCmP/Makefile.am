MAINTAINERCLEANFILES = Makefile.in

CLEANFILES = y.tab.c getdate.c

noinst_LIBRARIES = libDtCmP.a

libDtCmP_a_CFLAGS = -I../../../lib/csa -DRFC_MIME -DLINE_COUNT -DV2 -DOW_I18N \
		  $(TIRPCINC)

if SOLARIS
libDtCmP_a_CFLAGS += -xstrconst -Xc -v
endif

libDtCmP_a_SOURCES = cm_tty.c        cmfns.c         dtfns.c \
		     getdate.c       props.c         resource.c \
		     timeops.c       util.c

all:: getdate.c

getdate.c: getdate.y
	$(YACC) getdate.y
	$(MV) y.tab.c getdate.c
