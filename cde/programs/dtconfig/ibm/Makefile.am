MAINTAINERCLEANFILE = Makefile.in

dist_bin_SCRIPTS = dtconfig rc.dt

SCRIPTFLAGS = -DCDE_INSTALLATION_TOP=${prefix} \
              -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP)

CPPTARGET = dtconfig
CPPSRC = dtconfig.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = rc.dt
CPPSRC = rc.dt.src
include $(srcdir)/include/cppfile.tmpl
