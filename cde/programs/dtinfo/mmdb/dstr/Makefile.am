MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/dstr
BUILT_SOURCES = set.C bset.C slist.C dlist_cell.C dlist.C heap.C	\
	void_ptr_array.C void_ptr_stack.C memory_pool.C dstr_test.C	\
	index_agent.C token_stack.C slist_char_ptr_cell.C

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libdstr.la

libdstr_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb -I../../DtMmdb/dti_excs -I$(BASE)

libdstr_la_SOURCES = $(BUILT_SOURCES)
