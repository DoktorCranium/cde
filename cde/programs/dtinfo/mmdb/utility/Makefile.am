MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libutility.a

AUTOMAKE_OPTIONS = no-dependencies

libutility_a_CXXFLAGS = -DPORTABLE_DB -I../../DtMmdb -I../../DtMmdb/dti_excs \
			 -I../../DtMmdb/misc

#FIXME: This should be done in autotools_config.h
if I386
libutility_a_CXXFLAGS += -DMMDB_LITTLE_ENDIAN
endif

if X86_64
libutility_a_CXXFLAGS += -DMMDB_LITTLE_ENDIAN
endif

if ARM
libutility_a_CXXFLAGS += -DMMDB_LITTLE_ENDIAN
endif

if PPC
libutility_a_CXXFLAGS += -DMMDB_BIG_ENDIAN
endif

if SPARC
libutility_a_CXXFLAGS += -DMMDB_BIG_ENDIAN
endif

libutility_a_SOURCES = ../../DtMmdb/utility/funcs.C \
			../../DtMmdb/utility/ostring.C \
		  	../../DtMmdb/utility/pm_random.C \
			../../DtMmdb/utility/atoi_pearson.C \
			../../DtMmdb/utility/xtime.C \
			../../DtMmdb/utility/buffer.C \
		        ../../DtMmdb/utility/atoi_larson.C \
		      	../../DtMmdb/utility/atomic_lock.C \
			../../DtMmdb/utility/rw_lock.C \
		        ../../DtMmdb/utility/atoi_fast.C \
		    	../../DtMmdb/utility/filter.C \
		 	../../DtMmdb/utility/mmdb_exception.C \
			../../DtMmdb/utility/randomize.C \
			../../DtMmdb/utility/streambuf.C \
		    	../../DtMmdb/utility/charbuf.C \
		        ../../DtMmdb/utility/filebuf.C \
		  	../../DtMmdb/utility/string.C \
			../../DtMmdb/utility/stringstream.C \
			../../DtMmdb/utility/iostream.C \
		   	../../DtMmdb/utility/fstream.C \
		  	../../DtMmdb/utility/stream.C \
			../../DtMmdb/utility/ios.C
