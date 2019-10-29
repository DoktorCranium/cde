MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtdbcache

dtdbcache_LDADD = -lm $(LIBSVC) $(LIBTT) $(XTOOLLIB) ${X_LIBS}

if HPUX
dtdbcache_LDADD += +e
endif

if SOLARIS
dtdbcache_LDADD += -ldl -lw -lgen
endif

dtdbcache_SOURCES = Main.c
