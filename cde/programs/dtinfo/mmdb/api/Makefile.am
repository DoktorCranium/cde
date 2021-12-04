MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo/src/templates/dtinfo_env.mk

BASE = ../../DtMmdb/api
BUILT_SOURCES = base.C info_base.C info_lib.C smart_ptr.C	\
		    transaction.C utility.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libapi.la

libapi_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb -I../../DtMmdb/misc \
                     -I../../DtMmdb/dti_excs -I$(BASE) $(DTINFO_DEFINES)

libapi_la_SOURCES = $(BUILT_SOURCES)



