MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libMMDB.la

# get our env
include ../../templates/dtinfo_env.mk

# class info
include Classlist.mk

libMMDB_la_CXXFLAGS = -I../Base -I../.. $(DTINFO_DEFINES)	\
	$(DTINFO_INCLUDES)
libMMDB_la_SOURCES = $(MMDB_SRCS)

BUILT_SOURCES = MMDB.msg
CLEANFILES = $(BUILT_SOURCES)

MMDB.msg:
	cat $(MMDB_MSGS) > $@
