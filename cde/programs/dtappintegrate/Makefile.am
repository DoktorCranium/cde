MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtappintegrate

dtappintegrate_CPPFLAGS = -DKORNSHELL=$(KSH)
			  -DCDE_INSTALLATION_TOP=${prefix} \
			  -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \

all: dtappintegrate

CPPSRC = dtappintegrate.src
CPPTARGET = dtappintegrate
include $(srcdir)/include/cppfile.src
