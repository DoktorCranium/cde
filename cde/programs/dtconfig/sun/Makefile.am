configdir = ${prefix}/config

dist_bin_SCRIPTS = dtconfig

dist_config_DATA = dtlogin.rc dtlogin.xml

SCRIPTFLAGS = -DCDE_INSTALLATION_TOP=${prefix} \
              -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP)

CPPTARGET = dtconfig
CPPSRC = dtconfig.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = dtlogin.rc
CPPSRC = dtlogin.rc.src
include $(srcdir)/include/cppfile.tmpl
