MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libhmphf.la

libhmphf_la_CXXFLAGS = -DC_API -DPORTABLE_DB -I.. -I../dti_excs

libhmphf_la_SOURCES = buckets.C       mphf_funcs.C    mphf_hash_table.C \
		      params.C        pattern.C       sorter.C
