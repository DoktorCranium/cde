MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtdbcache

dtdbcache_LDADD = $(DTCLIENTLIBS) $(XTOOLLIB)

if SOLARIS
dtdbcache_LDADD += -ldl -lw -lgen
endif

dtdbcache_SOURCES = Main.c
