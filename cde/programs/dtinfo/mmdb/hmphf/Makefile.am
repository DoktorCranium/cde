MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/hmphf
BUILT_SOURCES = buckets.C mphf_funcs.C mphf_hash_table.C params.C	\
		      pattern.C sorter.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libhmphf.la

libhmphf_la_CXXFLAGS = $(DTINFO_DEFINES) -DPORTABLE_DB -I../../DtMmdb	\
-I../../DtMmdb/dti_excs -I$(BASE)

libhmphf_la_SOURCES = $(BUILT_SOURCES)

