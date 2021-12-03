MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libGraphics.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libGraphics_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libGraphics_la_SOURCES = ../Prelude.h $(Graphics_SRCS)

