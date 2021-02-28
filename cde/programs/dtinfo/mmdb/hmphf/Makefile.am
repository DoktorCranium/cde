MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libhmphf.a

AUTOMAKE_OPTIONS = no-dependencies

libhmphf_a_CXXFLAGS = -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs

libhmphf_a_SOURCES = ../../DtMmdb/hmphf/buckets.C \
		      ../../DtMmdb/hmphf/mphf_funcs.C \
		      ../../DtMmdb/hmphf/mphf_hash_table.C \
		      ../../DtMmdb/hmphf/params.C \
	       	      ../../DtMmdb/hmphf/pattern.C \
		      ../../DtMmdb/hmphf/sorter.C
