MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo/src/templates/dtinfo_env.mk

BASE = ../../DtMmdb/btree
BUILT_SOURCES = mmdb_btree.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libbtree.la

libbtree_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb -I../../DtMmdb/dti_excs -I$(BASE)

libbtree_la_SOURCES = $(BUILT_SOURCES)
