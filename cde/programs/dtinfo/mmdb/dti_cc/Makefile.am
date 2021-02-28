MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libdti_cc.a

AUTOMAKE_OPTIONS = no-dependencies

libdti_cc_a_CXXFLAGS = -DEXPAND_TEMPLATES -I../../DtMmdb -I../../DtMmdb/dti_cc \
		       -I../../DtMmdb/dti_excs

libdti_cc_a_SOURCES = ../../DtMmdb/dti_cc/CC_Listbase.C \
		       ../../DtMmdb/dti_cc/cc_exceptions.C \
		       ../../DtMmdb/dti_cc/CC_String.C \
        	       ../../DtMmdb/dti_cc/CC_Tokenizer.C \
		       ../../DtMmdb/dti_cc/CC_Stack.C \
		       ../../DtMmdb/dti_cc/CC_Slist.C
