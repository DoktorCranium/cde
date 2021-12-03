MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libOther.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libOther_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libOther_la_SOURCES = ../Prelude.h $(Other_SRCS)

BUILT_SOURCES = Other.msg
CLEANFILES = $(BUILT_SOURCES)

Other.msg:
	cat $(Other_MSGS) > $@
