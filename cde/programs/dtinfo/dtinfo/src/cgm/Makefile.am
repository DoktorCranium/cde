MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libcgm.la

# get our env
include ../templates/dtinfo_env.mk

# class info
libcgm_la_CFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)	\
	-I$(top_srcdir)/include/DtI

libcgm_la_SOURCES = cgmcmds.c cgmcommon.c cgmio.c cgmtext.c getcgm.c

noinst_PROGRAMS = testcgm
testcgm_CPPFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)	\
	-I$(top_srcdir)/include/DtI
testcgm_SOURCES = testcgm.c
testcgm_LDADD = libcgm.la $(DTCLIENTLIBS) $(XTOOLLIB)
