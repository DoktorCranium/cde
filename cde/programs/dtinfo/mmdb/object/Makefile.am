MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libobject.a

AUTOMAKE_OPTIONS = no-dependencies

libobject_a_CXXFLAGS = -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs

libobject_a_SOURCES = ../../DtMmdb/object/composite.C \
		       ../../DtMmdb/object/compressed_pstring.C \
		       ../../DtMmdb/object/cset.C \
		       ../../DtMmdb/object/dl_list.C \
		       ../../DtMmdb/object/dl_list_cell.C \
	      	       ../../DtMmdb/object/handler.C \
		       ../../DtMmdb/object/integer.C \
		       ../../DtMmdb/object/long_pstring.C \
	      	       ../../DtMmdb/object/oid.C \
		       ../../DtMmdb/object/oid_list.C \
		       ../../DtMmdb/object/oid_t.C \
       		       ../../DtMmdb/object/primitive.C \
		       ../../DtMmdb/object/pstring.C \
		       ../../DtMmdb/object/random_gen.C \
	    	       ../../DtMmdb/object/root.C \
		       ../../DtMmdb/object/short_list.C \
		       ../../DtMmdb/object/tuple.C
