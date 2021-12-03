MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libSupport.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libSupport_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libSupport_la_SOURCES = ../Prelude.h $(Support_SRCS)

