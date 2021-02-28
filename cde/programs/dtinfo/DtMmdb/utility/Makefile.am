MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libutility.la

libutility_la_CXXFLAGS = -DC_API -DPORTABLE_DB -I.. -I../dti_excs -I../misc


#FIXME: This should be done in autotools_config.h
if I386
libutility_la_CXXFLAGS += -DMMDB_LITTLE_ENDIAN
endif

if X86_64
libutility_la_CXXFLAGS += -DMMDB_LITTLE_ENDIAN
endif

if ARM
libutility_la_CXXFLAGS += -DMMDB_LITTLE_ENDIAN
endif

if PPC
libutility_la_CXXFLAGS += -DMMDB_BIG_ENDIAN
endif

if SPARC
libutility_la_CXXFLAGS += -DMMDB_BIG_ENDIAN
endif

libutility_la_SOURCES = funcs.C         ostring.C       pm_random.C \
			atoi_pearson.C 	xtime.C         buffer.C \
		        atoi_larson.C   atomic_lock.C 	rw_lock.C \
		        atoi_fast.C     filter.C        mmdb_exception.C \
			randomize.C	streambuf.C     charbuf.C \
		        filebuf.C       string.C 	stringstream.C \
			iostream.C      fstream.C       stream.C 	ios.C
