MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/schema
BUILT_SOURCES = desc.C store_desc.C object_dict.C			\
		       stored_object_desc.C index_desc.C inv_desc.C	\
		       agent_desc.C container_desc.C sheet.C token.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libschema.la

libschema_la_CXXFLAGS = $(DTINFO_DEFINES) -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs \
			-I../../DtMmdb/misc -I$(BASE)

libschema_la_SOURCES = $(BUILT_SOURCES)
