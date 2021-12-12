MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/dynhash
BUILT_SOURCES = data_t.C imp_bucket.C imp_die.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libdynhash.la

libdynhash_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb -I../../DtMmdb/dti_excs -I$(BASE)

libdynhash_la_SOURCES = $(BUILT_SOURCES)
