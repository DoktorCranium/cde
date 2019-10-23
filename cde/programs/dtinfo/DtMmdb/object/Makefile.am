MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libobject.la

libobject_la_CXXFLAGS = -DC_API -DPORTABLE_DB -I.. -I../dti_excs

libobject_la_SOURCES = composite.C     compressed_pstring.C    cset.C \
		       dl_list.C       dl_list_cell.C          handler.C \
		       integer.C       long_pstring.C          oid.C \
		       oid_list.C      oid_t.C                 primitive.C \
		       pstring.C       random_gen.C            root.C \
		       short_list.C    tuple.C
