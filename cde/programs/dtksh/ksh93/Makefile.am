MAINTAINERCLEANFILES = Makefile.in

SUBCFLAGS = -O
UFLAGS = $(SUBCFLAGS)
ULDFLAGS =
IFFECDEBUGFLAGS = -O0

if AIX
CCFLAGS = CCFLAGS="  "
else
CCFLAGS =
endif

if SOLARIS
.NO_PARALLEL:
endif

FORCE_SHIP = -F

MALLOCOBJ =

KSHSRC = ./src/cmd/ksh93

KSHLIBS = \
                $(KSHSRC)/../../lib/libcmd/libcmd.a

KSH_OBJS = \
                $(KSHSRC)/main.o \
                $(KSHSRC)/timers.o \
                $(KSHLIBS)

OBJS = $(KSH_OBJS) $(KSH_LIBS)

SUIDEXECDEFINES = \
        -DPROFILEPATH=\"$(CDE_CONFIGURATION_TOP)/config/profile\" \
        -DSUIDPROFILEPATH=\"$(CDE_CONFIGURATION_TOP)/config/suid_profile\" \
        -DSUIDEXECPATH=\"${prefix}/bin/suid_exec\" \
        -DCDE_INSTALLATION_TOP=\"${prefix}\"

CCFLAGS = $(CDEBUGFLAGS) $(SUIDEXECDEFINES) $(STD_DEFINES) $(ANSI_DEFINES)
ICCFLAGS = $(IFFECDEBUGFLAGS) $(STD_DEFINES) $(ANSI_DEFINES)

all:: ksh93src ksh93.o

SHIP_DIR = ship
ALL_SUBS = *

ksh93src:
        $(RM) $(SHIP_DIR)/$(ALL_SUBS)/$(ALL_SUBS)/BUILT; \
        SHELL=$(KSH) CC="$(CC)" CCFLAGS="$(CCFLAGS)" ICCFLAGS="$(ICCFLAGS)" $(KORNSHELL) ship/shipin $(FORCE_SHIP)

ksh93.o: $(OBJS)
        $(LD) -r -o $@ $(OBJS)

clobber:: clobmine

clobmine:
        $(RM) -f libksh93.a

install::
