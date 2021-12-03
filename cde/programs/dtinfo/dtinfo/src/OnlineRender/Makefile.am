MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libOnlineRender.a

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libOnlineRender_a_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libOnlineRender_a_SOURCES = ../Prelude.h $(OnlineRender_SRCS)

BUILT_SOURCES = OnlineRender.msg
CLEANFILES = $(BUILT_SOURCES)

OnlineRender.msg:
	cat $(OnlineRender_MSGS) > $@
