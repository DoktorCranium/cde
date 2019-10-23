defaultdir = ${prefix}/app_defaults/C

bin_PROGRAMS = dtscreen

dist_default_DATA = Dtscreen

dtscreen_LDADD = -lm $(SVCLIB) $(LIBTT) $(XTOOLLIB) ${X_LIBS}

if SUN
dtscreen_LDADD += -ldl -lgen
endif

dtscreen_SOURCES = blank.c         dtscreen.c      flame.c         hopalong.c \
		   hsbramp.c       image.c         life.c          pyro.c \
		   qix.c           resource.c      rotor.c         swarm.c \
		   usleep.c        worm.c

CPPTARGET = Dtscreen
CPPSRC = Dtscreen.src
include $(srcdir)/include/cppfile.tmpl
