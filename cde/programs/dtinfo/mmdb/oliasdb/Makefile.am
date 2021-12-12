MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/oliasdb
BUILT_SOURCES = asciiIn_filters.C collectionIterator.C dlp_hd.C		\
			dlp_test.C doc_hd.C doc_test.C graphic_hd.C	\
			graphic_test.C loc_test.C locator_hd.C mark.C	\
			mark_base.C mark_test.C mmdb.C node_hd.C	\
			node_test.C olias_funcs.C olias_test.C		\
			stylesheet_hd.C stylesheet_test.C toc_hd.C	\
			toc_test.C user_base.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = liboliasdb.la

liboliasdb_la_CXXFLAGS = $(DTINFO_DEFINES) -DNO_DB_LOCK -DCDE_NEXT -I../../DtMmdb \
			 -I../../DtMmdb/misc -I../../DtMmdb/dti_excs \
			 -I../../DtMmdb/dti_cc -I../.. -I../../DtMmdb/oliasdb \
			 -I$(BASE)

liboliasdb_la_SOURCES = $(BUILT_SOURCES)
