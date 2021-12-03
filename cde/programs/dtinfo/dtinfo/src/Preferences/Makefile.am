MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libPreferences.la

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libPreferences_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libPreferences_la_SOURCES = ../Prelude.h $(Preferences_SRCS)

