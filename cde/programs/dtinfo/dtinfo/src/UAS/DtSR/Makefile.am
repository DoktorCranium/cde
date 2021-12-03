MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libDtSR.la

# get our env
include ../../templates/dtinfo_env.mk

# class info
include Classlist.mk

libDtSR_la_CXXFLAGS = -I../Base -I./Util_Classes -I../..	\
	$(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libDtSR_la_SOURCES = $(DtSR_SRCS)

BUILT_SOURCES = DtSR.msg
CLEANFILES = $(BUILT_SOURCES)

DtSR.msg:
	cat $(DtSR_MSGS) > $@
