MAINTAINERCLEANFILES = Makefile.in

# get our env variables
include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

infolibdir = $(CDE_INSTALLATION_TOP)/infolib/etc
infolib_PROGRAMS = valBase

valBase_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
valBase_LDADD = $(MMDB_LIBS) $(DTCLIENTLIBS) $(XTOOLLIB)
valBase_SOURCES = valBase.C

infolib_SCRIPTS = DeInstallBase ChangeCaseTitle Librarian

