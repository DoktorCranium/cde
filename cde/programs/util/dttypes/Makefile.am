MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dttypes

dttypes_LDADD = $(DTCLIENTLIBS) $(XTOOLLIB)

if SOLARIS
dttypes_LDADD += -ldl -lgen
endif

