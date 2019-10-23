dtrcdir = ${prefix}/config/dtrc.d

initdir = /sbin/init.d

dist_bin_SCRIPTS = dtconfig dtrc

dist_init_DATA = dtlogin.rc

dist_dtrc_DATA = dtrc.dtlogin_st dtrc.getty_wait dtrc.graph_conf

SCRIPTFLAGS = -DCDE_INSTALLATION_TOP=${prefix} \
              -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP)

CPPTARGET = dtconfig
CPPSRC = dtconfig.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = dtrc
CPPSRC = dtrc.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = dtlogin.rc
CPPSRC = dtlogin.rc.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = dtrc.dtlogin_st
CPPSRC = dtrc.dtlogin_st.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = dtrc.getty_wait
CPPSRC = dtrc.getty_wait.src
include $(srcdir)/include/cppfile.tmpl

CPPTARGET = dtrc.graph_conf
CPPSRC =  dtrc.graph_conf.src
include $(srcdir)/include/cppfile.tmpl
