MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libMarks.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libMarks_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libMarks_la_SOURCES = ../Prelude.h $(Marks_SRCS)

