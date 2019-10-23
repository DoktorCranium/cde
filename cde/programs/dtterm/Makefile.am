MAINTAINERCLEANFILES = Makefile.in

if SUN
.NO_PARALLEL:
endif

all:: dtterm.ti DtTermFallBackResources.c

SUBDIRS = util

bin_PROGRAMS = dtterm

if BSD
UTILLIB = -lutil
endif

if SUN
LIBHELP =
endif

dtterm_LDADD = $(LIBTERM) $(XINPUTLIB) $(LIBHELP) \
        -lXm $(XTOOLLIB) ${X_LIB} $(UTILLIB) $(LIBSVC) $(LIBTT)

dtterm_CFLAGS = -I$(DTTERMSRC)/TermPrim -I$(DTTERMSRC)/Term \
		-I$(DTTERMSRC)/TermView $(TIRPCINC)

if AIX
dtterm_CFLAGS += -DHAS_KNL -DHAS_KTAB
endif

if HPVUE
AM_CPPFLAGS += -DBUILD_HPVUE -DHPVUE
endif

dtterm_SOURCES = DtTermLogit.c 	DtTermMain.c	DtTermFallBackResources.c \
		 sunDtTermServer.c 		DtTermSyntax.c

CPPSRC = Dtterm.ad.src
CPPTARGET = Dtterm.ad
include $(srcdir)/include/cppfile.tmpl

CPPSRC = Dtterm.ad.src
CPPTARGET = DtTermFallBackResources.c.src
AM_CPPFLAGS = -DFALLBACK_RESOURCES
include $(srcdir)/include/cppfile.tmpl

DtTermFallBackResources.c: DtTermFallBackResources.c.src
	$(RM) $@
	./mkfallbk < DtTermFallBackResources.c.src > $@

dtterm.ti: terminfoChecklist
	$(RM) $@
	CPP="$(CPP) $(TIC_DEFINES)" $(SHELL) terminfoCreate < terminfoChecklist > $@
