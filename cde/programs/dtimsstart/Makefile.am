xsessiondir = ${prefix)/config/Xsession.d

MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtimsstart

dist_xsession_SCRIPTS = 0020.dtims

0020.dtims_CPPFLAGS = -P

dtimsstart_CFLAGS = -DNLS -I../../lib

dtimsstart_LDADD = $(LIBHELP) $(LIBSVC) $(LIBTT) -lXm $(XTOOLLIB) ${X_LIBS}

if SOLARIS
dtimsstart_CFLAGS += -xF
endif

if AIX
dtimsstart_CFLAGS += -DANSICPP
endif

all: 0020.dtims

dtimsstart_SOURCES = action.c        env.c           file.c \
		     main.c          remote.c        select.c \
		     start.c         util.c

CPPSRC = 0020.dtims.src
CPPTARGET = 0020.dtims
include $(srcdir)/include/cppfile.tmpl
