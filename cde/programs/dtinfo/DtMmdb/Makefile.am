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

libDtMmdb_la_LIBADD += libapi.la libbtree.la libbtree_berkeley.la \
		       libcompression.la libdiskhash.la libdstr.la \
		       libdti_excs.la libdynhash.la libhmphf.la libindex.la \
		       libmgrs.la libmisc.la libobject.la liboliasdb.la \
		       libschema.la libstorage.la libutility.la

libDtMmdb_la_LDFLAGS = -version-info 2:1:0
