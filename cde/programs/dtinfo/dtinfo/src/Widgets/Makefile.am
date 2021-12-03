MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libWidgets.la

# get our env
include ../templates/dtinfo_env.mk

libWidgets_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)

libWidgets_la_SOURCES = Pixmap.c Tree.c Panner.c Simple.c Porthole.c	\
	XawInitFake.c TabButton.c Restraint.c WXmOpButton.C
