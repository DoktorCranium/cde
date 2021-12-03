MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = Base MMDB DtSR

noinst_LTLIBRARIES = libUAS.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libUAS_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libUAS_la_SOURCES =
# this should make sure this is linked with a C++ compiler
nodist_EXTRA_libUAS_la_SOURCES = dummy.cxx
libUAS_la_LIBADD = Base/libBase.la MMDB/libMMDB.la DtSR/libDtSR.la

noinst_DATA = UAS.msg

UAS.msg: $(UAS_MSGS)
	cat $(UAS_MSGS) > $@

CLEANFILES = UAS.msg
