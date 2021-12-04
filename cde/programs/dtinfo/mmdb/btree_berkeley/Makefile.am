MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo/src/templates/dtinfo_env.mk

BASE = ../../DtMmdb/btree_berkeley
BUILT_SOURCES = bt_close.c bt_conv.c bt_debug.c bt_delete.c bt_get.c	\
				bt_open.c bt_overflow.c bt_page.c	\
				bt_put.c bt_search.c bt_seq.c		\
				bt_split.c bt_stack.c bt_utils.c	\
				\
				mktemp.c realloc.c snprintf.c \
				\
				mpool.c \
				\
				db.c

if LINUX
BUILT_SOURCES += memmove.c
endif

if BSD
BUILT_SOURCES += memmove.c
endif

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libbtree_berkeley.la

libbtree_berkeley_la_CFLAGS = $(DTINFO_DEFINES) -DMEMMOVE -I../../DtMmdb	\
                              -I../../DtMmdb/btree_berkeley -I$(BASE)

libbtree_berkeley_la_SOURCES = $(BUILT_SOURCES)
