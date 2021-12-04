MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo/src/templates/dtinfo_env.mk

BASE = ../../DtMmdb/index
BUILT_SOURCES = btree_index.C dyn_disk_index.C dyn_index.C		\
		      dyn_memory_index.C fast_mphf.C hash.C index.C	\
		      inv_lists.C mphf_index.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libindex.la

libindex_la_CXXFLAGS = $(DTINFO_DEFINES) -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs \
			-I$(BASE)

libindex_la_SOURCES = $(BUILT_SOURCES)
