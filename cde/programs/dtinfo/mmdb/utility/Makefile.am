MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/utility
BUILT_SOURCES = atoi_fast.C atoi_larson.C atoi_pearson.C		\
	atomic_lock.C buffer.C filter.C funcs.C mmdb_exception.C	\
	ostring.C pm_random.C randomize.C rw_lock.C xtime.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libutility.la

libutility_la_CXXFLAGS = $(DTINFO_DEFINES) -DPORTABLE_DB		\
	-I../../DtMmdb -I../../DtMmdb/dti_excs -I../../DtMmdb/misc -I$(BASE)

libutility_la_SOURCES = $(BUILT_SOURCES)
