MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libManagers.a

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libManagers_a_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libManagers_a_SOURCES = ../Prelude.h $(Managers_SRCS)

BUILT_SOURCES = Managers.msg
CLEANFILES = $(BUILT_SOURCES)

Managers.msg:
	cat $(Managers_MSGS) > $@
