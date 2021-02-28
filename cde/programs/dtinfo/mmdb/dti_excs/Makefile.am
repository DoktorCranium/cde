MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libdti_excs.a

AUTOMAKE_OPTIONS = no-dependencies

libdti_excs_a_CXXFLAGS = -DCC_VERSION=30 -DCHECK_INITIALIZED \
			 -I../../DtMmdb/dti_excs

if SOLARIS
libdti_excs_a_CXXFLAGS += -DHAS_TERMINATE
endif

if LINUX
libdti_excs_a_CXXFLAGS += -DNATIVE_EXCEPTIONS
endif

if BSD
libdti_excs_a_CXXFLAGS += -DNATIVE_EXCEPTIONS
endif

libdti_excs_a_SOURCES = ../../DtMmdb/dti_excs/Jump_Environment.C \
		    	 ../../DtMmdb/dti_excs/Exceptions.C \
		      	 ../../DtMmdb/dti_excs/Exception.C \
			 ../../DtMmdb/dti_excs/Destructable.C \
			 ../../DtMmdb/dti_excs/terminate.C
