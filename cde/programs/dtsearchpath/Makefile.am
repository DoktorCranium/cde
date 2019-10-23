xsessiondir = ${prefix}/config/Xsession.d

MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = libCliSrv dtsp dtappg

dist_xsession_SCRIPTS

AM_CPPFLAGS = -DCDE_INSTALLATION_TOP=${prefix} \
              -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \
              -DKORNSHELL=$(KSH)

CPPSRC = 0010.dtpaths.src
CPPTARGET = 0010.dtpaths
include $(srcdir)/include/cppfile.tmpl

CPPSRC = 0030.dttmpdir.src
CPPTARGET = 0030.dttmpdir
include $(srcdir)/include/cppfile.tmpl
