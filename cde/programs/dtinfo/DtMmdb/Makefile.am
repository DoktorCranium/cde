MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = \
        api                     btree \
        btree_berkeley          compression \
        diskhash                dstr \
        dti_excs                dynhash \
        hmphf                   index \
        mgrs                    misc \
        object                  oliasdb \
        schema                  storage \
        utility

lib_LTLIBRARIES = libDtMmdb.la

libDtMmdb_la_SOURCES =
# fake things so libtool creates this as a C++ library
nodist_EXTRA_libDtMmdb_la_SOURCES = dummy.cxx
libDtMmdb_la_LIBADD = api/libapi.la btree/libbtree.la \
		      btree_berkeley/libbtree_berkeley.la \
		      compression/libcompression.la diskhash/libdiskhash.la \
		      dstr/libdstr.la dti_excs/libdti_excs.la \
		      dynhash/libdynhash.la hmphf/libhmphf.la \
		      index/libindex.la mgrs/libmgrs.la misc/libmisc.la \
		      object/libobject.la oliasdb/liboliasdb.la \
		      schema/libschema.la storage/libstorage.la \
		      utility/libutility.la

# in order to try to keep lib versions the same across platforms, (2.1.0)
if BSD
libDtMmdb_la_LDFLAGS = -version-info 2:1:0
else
libDtMmdb_la_LDFLAGS = -version-info 3:0:1
endif

infolibdir = $(CDE_INSTALLATION_TOP)/infolib/etc
dist_infolib_DATA = oliasdb/mmdb.infolib.spec	\
	StyleSheet/hardcopy.feature.spec	\
	StyleSheet/online.feature.spec
