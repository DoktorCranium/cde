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

noinst_LIBRARIES = libmmdb.a

libmmdb_a_SOURCES =

libmmdb_a_LIBADD = api/libapi.a btree/libbtree.a \
		   btree_berkeley/libbtree_berkeley.a \
		   compression/libcompression.a \
		   diskhash/libdiskhash.a dstr/libdstr.a \
		   dti_excs/libdti_excs.a dynhash/libdynhash.a \
		   hmphf/libhmphf.a index/libindex.a mgrs/libmgrs.a \
		   misc/libmisc.a object/libobject.a oliasdb/liboliasdb.a \
		   schema/libschema.a storage/libstorage.a utility/libutility.a
