MAINTAINERCLEANFILES= Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/misc
BUILT_SOURCES = unique_id.c

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libmisc.la

libmisc_la_CFLAGS = $(DTINFO_DEFINES) -DPORTABLE_DB -I$(BASE)

libmisc_la_SOURCES = $(BUILT_SOURCES)
