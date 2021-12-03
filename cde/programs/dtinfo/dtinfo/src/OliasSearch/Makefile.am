MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libOliasSearch.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libOliasSearch_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libOliasSearch_la_SOURCES = ../Prelude.h $(OliasSearch_SRCS)

