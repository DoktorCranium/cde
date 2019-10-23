MAINTAINERCLEANFILES = Makefile.in

AM_CPPFLAGS = -DCDE_INSTALLATION_TOP=${prefix} \
	      -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \
	      -DKORNSHELL=$(KSH) -DDTKORNSHELL=/usr/dt/bin/dtksh

TARGETS = IconBrowse.dt   autoStart.dt    datatypes.dt \
	 develop.dt      dt.dt           dt.softinit \
	 dtappman.dt     dtfile.dt       dthelp.dt \
	 dthelpprint.dt  dthelptag.dt    dtims.dt \
	 dtinfo.dt       dtpad.dt        dtscreen.dt \
	 dtwm.fp         error.ds        hp.dt \
	 ibm.dt          miscActions.dt  miscImages.dt \
	 print.dt        user-prefs.dt   uxstd.dt \
	 xclients.dt



CPPSRC = IconBrowse.dt.src
CPPTARGET = IconBrowse.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = autoStart.dt.src
CPPTARGET = autoStart.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = datatypes.dt.src
CPPTARGET = datatypes.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = develop.dt.src
CPPTARGET = develop.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dt.dt.src
CPPTARGET = dt.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dt.softinit.src
CPPTARGET = dt.softinit
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtappman.dt.src
CPPTARGET = dtappman.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtfile.dt.src
CPPTARGET = dtfile.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dthelp.dt.src
CPPTARGET = dthelp.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dthelpprint.dt.src
CPPTARGET = dthelpprint.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dthelptag.dt.src
CPPTARGET = dthelptag.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtims.dt.src
CPPTARGET = dtims.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtinfo.dt.src
CPPTARGET = dtinfo.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtpad.dt.src
CPPTARGET = dtpad.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtscreen.dt.src
CPPTARGET = dtsreen.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = dtwm.fp.src
CPPTARGET = dtwm.fp
include $(srcdir)/include/cppfile.tmpl

CPPSRC = error.ds.src
CPPTARGET = error.ds
include $(srcdir)/include/cppfile.tmpl

if HPUX
CPPSRC = hp.dt.src
CPPTARGET = hp.dt
include $(srcdir)/include/cppfile.tmpl
endif

if AIX
CPPSRC = ibm.dt.src
CPPTARGET = ibm.dt
include $(srcdir)/include/cppfile.tmpl
endif

CPPSRC = miscActions.dt.src
CPPTARGET = miscActions.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = miscImages.dt.src
CPPTARGET = miscImages.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = print.dt.src
CPPTARGET = print.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = user-prefs.dt.src
CPPTARGET = user-prefs.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = uxstd.dt.src
CPPTARGET = uxstd.dt
include $(srcdir)/include/cppfile.tmpl

CPPSRC = xclients.dt.src
CPPTARGET = xclients.dt
include $(srcdir)/include/cppfile.tmpl
