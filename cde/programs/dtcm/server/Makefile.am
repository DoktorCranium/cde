MAINTAINERCLEANFILES = Makefile.in

CLEANFILES = parser.c

bin_PROGRAMS = rpc.cmsd

rpc.cmsd_CFLAGS = -I$(CSASRC) -I$(HELPSRC) $(TIRPCINC)

rpc.cmsd_LDADD = $(LIBCSA) $(LIBSVC) $(LIBTT) $(LIBWIDGET) $(XTOOLLIB) ${X_LIBS}

if SUN
rpc.cmsd_CFLAGS += -xstrconst -Xc -v
rpc.cmsd_LDADD += -lsocket -lnsl -lintl -lm -ldl
endif

if AIX
rpc.cmsd_LDADD += -lrpcsvc -lPW -ldiag -lc
endif

if HPUX
rpc.cmsd_CFLAGS += -DHPUX -DS9000
rpc.cmsd_LDADD += -lrpcsvc -lV3 -lc -lPW
endif

rpc_cmsd_SOURCES = parser.c        access.c        callback.c \
		   cmscalendar.c   cmsconvert.c    cmsentry.c \
		   cmsmatch.c      delete.c        garbage.c \
		   insert.c        lexit.c         list.c \
		   log.c           lookup.c        reclotick.c \
		   recount.c       relasttick.c    reminder.c \
		   renexttick.c    repeat.c        reprevtick.c \
		   rerule.c        reutil.c        tree.c \
		   utility.c       v4ops.c         v5ops.c \
		   cmsfunc.c       programtable.c  rtable2.c \
		   rtable3.c       rtable4.c       svcmain.c \
		   update.c

all:: rpc.cmsd

.SUFFIXES: .y

.y.c:
	$(YACC) -d $(YFLAGS) $<
	$(SED) -e "s/yy/yyy/g" -e "/# line/d" y.tab.c > $*.c
	$(SED) s/yy/yyy/g y.tab.h >  $*.h
	$(RM) y.tab.c  y.tab.h

parser.o:       parser.c

includes:: parser.c

clean::
	echo -n > parser.h
