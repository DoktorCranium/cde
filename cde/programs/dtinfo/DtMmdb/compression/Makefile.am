MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libcompression.la

libcompression_la_CXXFLAGS = -DC_API -I.. -I../dti_excs

libcompression_la_SOURCES = abs_agent.C zip.C huffman.C trie.C code.C lzss.C \
			    sgml.C ps.C
