MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtdspmsg

# this is just to initialize so the += ops can work later if needed
dtdspmsg_LDADD =

if SOLARIS
dtdspmsg_LDADD += -ldl -lgen
endif

dtdspmsg_SOURCES = dtdspmsg.c
