MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/object
BUILT_SOURCES = composite.C compressed_pstring.C cset.C dl_list.C	\
		       dl_list_cell.C handler.C integer.C		\
		       long_pstring.C oid.C oid_list.C oid_t.C		\
		       primitive.C pstring.C random_gen.C root.C	\
		       short_list.C tuple.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libobject.la

libobject_la_CXXFLAGS = $(DTINFO_DEFINES) -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs \
			-I$(BASE)

libobject_la_SOURCES = $(BUILT_SOURCES)
