MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libBase.la

# get our env
include ../../templates/dtinfo_env.mk

# class info
include Classlist.mk

libBase_la_CXXFLAGS = -I.. -I ../.. -I../Support $(DTINFO_DEFINES)	\
	$(DTINFO_INCLUDES)
libBase_la_SOURCES = $(Base_SRCS)

BUILT_SOURCES = Base.msg
CLEANFILES = $(BUILT_SOURCES)

Base.msg:
	cat $(Base_MSGS) > $@
