MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo/src/templates/dtinfo_env.mk

BASE = ../../DtMmdb/HardCopy
BUILT_SOURCES = FPset.C HardCopyFP.C autoNumber.C autoNumberFP.C

if LINUX
BUILT_SOURCES += TemplatesAutoNumber.C
endif

if BSD
BUILT_SOURCES += TemplatesAutoNumber.C
endif

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libHardCopy.la

libHardCopy_la_CXXFLAGS = $(DTINFO_DEFINES) \
    -I../../DtMmdb -I../../DtMmdb/HardCopy -I../../DtMmdb/dti_excs	\
    -I$(BASE)

libHardCopy_la_SOURCES = $(BUILT_SOURCES)
