MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtdspmsg

if HPUX
dtdspmsg_CFLAGS = +e
endif

dtdspmsg_LDADD = -lm

if SOLARIS
dtdspmsg_LDADD += -ldl -lgen
endif

dtdspmsg_SOURCES = dtdspmsg.c
