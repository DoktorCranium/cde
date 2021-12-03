MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libOnlineRender.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libOnlineRender_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libOnlineRender_la_SOURCES = ../Prelude.h $(OnlineRender_SRCS)

BUILT_SOURCES = OnlineRender.msg
CLEANFILES = $(BUILT_SOURCES)

OnlineRender.msg:
	cat $(OnlineRender_MSGS) > $@
