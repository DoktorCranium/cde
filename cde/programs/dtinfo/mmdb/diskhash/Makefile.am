MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/diskhash
BUILT_SOURCES = disk_bucket.C bucket_array.C disk_hash.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libdiskhash.la

libdiskhash_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb -I../../DtMmdb/dti_excs -I$(BASE)

libdiskhash_la_SOURCES = $(BUILT_SOURCES)
