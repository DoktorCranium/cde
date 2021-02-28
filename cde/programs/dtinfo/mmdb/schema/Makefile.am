MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libschema.a

AUTOMAKE_OPTIONS = no-dependencies

libschema_a_CXXFLAGS = -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs \
			-I../../DtMmdb/misc

libschema_a_SOURCES = ../../DtMmdb/schema/desc.C \
		       ../../DtMmdb/schema/store_desc.C \
		       ../../DtMmdb/schema/object_dict.C \
		       ../../DtMmdb/schema/stored_object_desc.C \
		       ../../DtMmdb/schema/index_desc.C \
		       ../../DtMmdb/schema/inv_desc.C \
		       ../../DtMmdb/schema/agent_desc.C \
		       ../../DtMmdb/schema/container_desc.C \
		       ../../DtMmdb/schema/sheet.C \
		       ../../DtMmdb/schema/token.C
