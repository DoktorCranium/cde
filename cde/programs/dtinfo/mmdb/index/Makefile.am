MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libindex.a

AUTOMAKE_OPTIONS = no-dependencies

libindex_a_CXXFLAGS = -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs

libindex_a_SOURCES = ../../DtMmdb/index/btree_index.C \
		      ../../DtMmdb/index/dyn_disk_index.C \
		      ../../DtMmdb/index/dyn_index.C \
		      ../../DtMmdb/index/dyn_memory_index.C \
		      ../../DtMmdb/index/fast_mphf.C \
		      ../../DtMmdb/index/hash.C \
		      ../../DtMmdb/index/index.C \
		      ../../DtMmdb/index/inv_lists.C \
		      ../../DtMmdb/index/mphf_index.C
