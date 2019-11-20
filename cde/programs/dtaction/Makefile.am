MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtaction

dtaction_SOURCES = Main.c

dtaction_LDADD = $(DTCLIENTLIBS) $(XTOOLLIB)

if SOLARIS
dtaction_LDADD += -ldl
endif

if LINUX
dtaction_LDADD += -lcrypt
endif

if FREEBSD
dtaction_LDADD += -lcrypt
endif

if NETBSD
dtaction_LDADD += -lcrypt
endif
