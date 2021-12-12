MAINTAINERCLEANFILES = Makefile.in

# get our env variables
include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

infolibdir = $(CDE_INSTALLATION_TOP)/infolib/etc
infolib_PROGRAMS = dbdrv

dbdrv_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
dbdrv_LDADD = $(MMDB_LIBS) $(DTCLIENTLIBS) $(XTOOLLIB)
dbdrv_SOURCES = main.C

noinst_PROGRAMS = restore dbdrv_c_api

restore_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
restore_LDADD = $(MMDB_LIBS) $(DTCLIENTLIBS) $(XTOOLLIB)
restore_SOURCES = restore.C

dbdrv_c_api_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
dbdrv_c_api_LDADD = $(MMDB_LIBS_C_API) $(WWL_LIBS) \
	$(DTCLIENTLIBS) $(XTOOLLIB)
dbdrv_c_api_SOURCES = main_c_api.c



