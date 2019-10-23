MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = ttauth

ttauth_CFLAGS = -I../../slib -I../../lib -DSIGNALRETURNSINT

ttauth_LDADD = $(LIBTT) $(X_LIBS)

if LINUX
ttauth_LDADD += $(TIRPCLIB) $(XTOOLLIB)
endif

if SUN
ttauth_LDADD += $(XTOOLLIB) -ldl -lintl -lsocket -lnsl
endif

if OPENBSD
ttauth_LDADD += $(XTOOLLIB)
endif

ttauth_SOURCES = ttauth.c process.c
