MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo/src/templates/dtinfo_env.mk

BASE = ../../DtMmdb/storage
BUILT_SOURCES = abs_storage.C chunks_index.C heap_comp_funcs.C lru.C	\
			page.C page_cache.C page_rep.C page_storage.C	\
			rep_cell.C rep_policy.C store_test.C		\
			unixf_storage.C version.C vm_storage.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libstorage.la

libstorage_la_CXXFLAGS = $(DTINFO_DEFINES) -DPORTABLE_DB	\
-I../../DtMmdb -I../../DtMmdb/dti_excs -I$(BASE)

libstorage_la_SOURCES = $(BUILT_SOURCES)
