MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libAgents.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libAgents_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libAgents_la_SOURCES = ../Prelude.h $(Agents_SRCS)

BUILT_SOURCES = Agents.msg
CLEANFILES = $(BUILT_SOURCES)

Agents.msg:
	cat $(Agents_MSGS) > $@
