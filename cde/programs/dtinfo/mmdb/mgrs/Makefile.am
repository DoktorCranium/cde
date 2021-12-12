MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/mgrs
BUILT_SOURCES = managers.C misc.C query_mgr.C template_mgr.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libmgrs.la

libmgrs_la_CXXFLAGS = $(DTINFO_DEFINES) -DCOMPACTED_DISK_REP -DPORTABLE_DB -I../../DtMmdb \
		      -I../../DtMmdb/dti_excs -I$(BASE)

libmgrs_la_SOURCES = $(BUILT_SOURCES)
