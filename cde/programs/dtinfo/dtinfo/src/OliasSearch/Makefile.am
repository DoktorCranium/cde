MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libOliasSearch.a

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libOliasSearch_a_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libOliasSearch_a_SOURCES = ../Prelude.h $(OliasSearch_SRCS)
