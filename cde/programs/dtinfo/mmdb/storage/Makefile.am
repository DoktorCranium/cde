MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libstorage.a

AUTOMAKE_OPTIONS = no-dependencies

libstorage_a_CXXFLAGS = -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs

libstorage_a_SOURCES = ../../DtMmdb/storage/abs_storage.C \
		      	../../DtMmdb/storage/chunks_index.C \
		       	../../DtMmdb/storage/heap_comp_funcs.C \
			../../DtMmdb/storage/lru.C \
	      		../../DtMmdb/storage/page.C \
	       		../../DtMmdb/storage/page_cache.C \
			../../DtMmdb/storage/page_rep.C \
		   	../../DtMmdb/storage/page_storage.C \
		       	../../DtMmdb/storage/rep_cell.C \
			../../DtMmdb/storage/rep_policy.C \
		     	../../DtMmdb/storage/store_test.C \
		     	../../DtMmdb/storage/unixf_storage.C \
			../../DtMmdb/storage/version.C \
		  	../../DtMmdb/storage/vm_storage.C
