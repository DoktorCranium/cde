MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libapi.a

AUTOMAKE_OPTIONS = no-dependencies

libapi_a_CXXFLAGS = -I../../DtMmdb -I../../DtMmdb/misc -I../../DtMmdb/dti_excs

libapi_a_SOURCES = ../../DtMmdb/api/base.C \
		    ../../DtMmdb/api/info_base.C \
		    ../../DtMmdb/api/info_lib.C \
		    ../../DtMmdb/api/smart_ptr.C \
		    ../../DtMmdb/api/transaction.C \
		    ../../DtMmdb/api/utility.C
