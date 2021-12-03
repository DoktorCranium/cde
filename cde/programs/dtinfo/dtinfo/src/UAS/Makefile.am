MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libUAS.a

# get our env
include ../templates/dtinfo_env.mk

# class info
include Classlist.mk

libUAS_a_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libUAS_a_SOURCES = ../Prelude.h $(UAS_SRCS)
