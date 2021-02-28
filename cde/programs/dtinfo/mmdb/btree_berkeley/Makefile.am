MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libbtree_berkeley.a

AUTOMAKE_OPTIONS = no-dependencies

libbtree_berkeley_a_CFLAGS = -DMEMMOVE -I../../DtMmdb \
			     -I../../DtMmdb/btree_berkeley

libbtree_berkeley_a_SOURCES =  ../../DtMmdb/btree_berkeley/bt_close.c \
				../../DtMmdb/btree_berkeley/bt_conv.c \
				../../DtMmdb/btree_berkeley/bt_debug.c \
				../../DtMmdb/btree_berkeley/bt_delete.c \
				../../DtMmdb/btree_berkeley/bt_get.c \
				../../DtMmdb/btree_berkeley/bt_open.c \
				../../DtMmdb/btree_berkeley/bt_overflow.c \
				../../DtMmdb/btree_berkeley/bt_page.c \
				../../DtMmdb/btree_berkeley/bt_put.c \
				../../DtMmdb/btree_berkeley/bt_search.c \
				../../DtMmdb/btree_berkeley/bt_seq.c \
				../../DtMmdb/btree_berkeley/bt_split.c \
				../../DtMmdb/btree_berkeley/bt_stack.c \
				../../DtMmdb/btree_berkeley/bt_utils.c \
				../../DtMmdb/btree_berkeley/mktemp.c \
				../../DtMmdb/btree_berkeley/realloc.c \
				../../DtMmdb/btree_berkeley/snprintf.c \
				../../DtMmdb/btree_berkeley/mpool.c \
				../../DtMmdb/btree_berkeley/db.c

if AIX
else
libbtree_berkeley_a_SOURCES += ../../DtMmdb/btree_berkeley/memmove.c
endif

