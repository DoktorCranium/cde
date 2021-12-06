MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/dti_cc
BUILT_SOURCES = CC_Listbase.C cc_exceptions.C CC_String.C	\
		       CC_Tokenizer.C CC_Stack.C CC_Slist.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)


noinst_LTLIBRARIES = libdti_cc.la

libdti_cc_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb	\
		-I../../DtMmdb/dti_cc -I../../DtMmdb/dti_excs -I$(BASE)

libdti_cc_la_SOURCES = $(BUILT_SOURCES)
