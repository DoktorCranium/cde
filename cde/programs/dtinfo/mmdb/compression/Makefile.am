MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/compression
BUILT_SOURCES = abs_agent.C zip.C huffman.C trie.C code.C lzss.C

PARSER_FILES = sgml.C ps.C
BUILT_SOURCES += $(PARSER_FILES)

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libcompression.la

libcompression_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb -I../../DtMmdb/dti_excs -I$(BASE)

libcompression_la_SOURCES = $(BUILT_SOURCES)
