MAINTAINERCLEANFILES = Makefile.in

# get our env variables
include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

infolibdir = $(CDE_INSTALLATION_TOP)/infolib/etc
infolib_PROGRAMS = validator

validator_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
validator_LDADD = $(MMDB_LIBS) $(DTCLIENTLIBS) $(XTOOLLIB)
validator_SOURCES = validator.C

