MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libmgrs.a

AUTOMAKE_OPTIONS = no-dependencies

libmgrs_a_CXXFLAGS = -DCOMPACTED_DISK_REP -DPORTABLE_DB -I../../DtMmdb \
		      -I../../DtMmdb/dti_excs

libmgrs_a_SOURCES = ../../DtMmdb/mgrs/managers.C \
		     ../../DtMmdb/mgrs/misc.C \
		     ../../DtMmdb/mgrs/query_mgr.C \
		     ../../DtMmdb/mgrs/template_mgr.C
