MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libutility.la

libutility_la_CXXFLAGS = -DC_API -DPORTABLE_DB -I.. -I../dti_excs -I../misc

libutility_la_SOURCES = funcs.C         ostring.C       pm_random.C \
			atoi_pearson.C 	xtime.C         buffer.C \
		        atoi_larson.C   atomic_lock.C 	rw_lock.C \
		        atoi_fast.C     filter.C        mmdb_exception.C \
			randomize.C	streambuf.C     charbuf.C \
		        filebuf.C       string.C 	stringstream.C \
			iostream.C      fstream.C       stream.C 	ios.C
