MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libdiskhash.a

AUTOMAKE_OPTIONS = no-dependencies

libdiskhash_a_CXXFLAGS = -I../../DtMmdb -I../../DtMmdb/dti_excs

libdiskhash_a_SOURCES = ../../DtMmdb/diskhash/disk_bucket.C \
			 ../../DtMmdb/diskhash/bucket_array.C \
			 ../../DtMmdb/diskhash/disk_hash.C
