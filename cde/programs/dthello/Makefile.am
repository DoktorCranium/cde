MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dthello

dthello_LDADD = $(DTCLIENTLIBS) ${X_LIBS} -lXm $(XTOOLLIB)

if SOLARIS
dthello_LDADD += -ldl -lgen
endif

if LINUX
dthello_LDADD += $(TIRPCLIB)
endif

dthello_SOURCES = dthello.c
