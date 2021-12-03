MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libBasic.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libBasic_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libBasic_la_SOURCES = ../Prelude.h $(Basic_SRCS)

