MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libcompression.a

AUTOMAKE_OPTIONS = no-dependencies

libcompression_a_CXXFLAGS = -I../../DtMmdb -I../../DtMmdb/dti_excs

libcompression_a_SOURCES = ../../DtMmdb/compression/abs_agent.C \
			    ../../DtMmdb/compression/zip.C \
			    ../../DtMmdb/compression/huffman.C \
			    ../../DtMmdb/compression/trie.C \
			    ../../DtMmdb/compression/code.C \
			    ../../DtMmdb/compression/lzss.C \
			    ../../DtMmdb/compression/sgml.C \
			    ../../DtMmdb/compression/ps.C
