MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/dti_excs
BUILT_SOURCES = Jump_Environment.C Exceptions.C Exception.C	\
			 Destructable.C terminate.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libdti_excs.la

libdti_excs_la_CXXFLAGS = $(DTINFO_DEFINES) -DCC_VERSION=30 -DCHECK_INITIALIZED \
			 -I../../DtMmdb/dti_excs -I$(BASE)

libdti_excs_la_SOURCES = $(BUILT_SOURCES)
