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
        utility			HardCopy \
	dti_cc			StyleSheet

noinst_LTLIBRARIES = libMMDB.la

libMMDB_la_SOURCES =
# fake things so libtool creates this as a C++ library
nodist_EXTRA_libMMDB_la_SOURCES = dummy.cxx

libMMDB_la_LIBADD = api/libapi.la btree_berkeley/libbtree_berkeley.la	\
			btree/libbtree.la				\
			compression/libcompression.la			\
			diskhash/libdiskhash.la dstr/libdstr.la		\
			dti_cc/libdti_cc.la dti_excs/libdti_excs.la	\
			dynhash/libdynhash.la HardCopy/libHardCopy.la	\
			hmphf/libhmphf.la index/libindex.la		\
			mgrs/libmgrs.la misc/libmisc.la			\
			object/libobject.la oliasdb/liboliasdb.la	\
			schema/libschema.la storage/libstorage.la	\
			StyleSheet/libStyleSheet.la			\
			utility/libutility.la
