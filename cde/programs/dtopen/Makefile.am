MAINTAINERCLEANFILES = Makefile.in

dist_bin_SCRIPTS = dtopen

SCRIPTFLAGS = -DCDE_INSTALLATION_TOP=${prefix} \
	      -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \

CPPTARGET = dtopen
CPPSRC = dtopen.src
include $(srcdir)/include/cppfile.tmpl
