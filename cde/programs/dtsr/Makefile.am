MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtsrcreate dtsrdbrec dtsrhan dtsrload dtsrindex dtsrdelete \
	       huffcode dtsrkdump
PROGRAMS_CFLAGS = -I../../lib/DtSearch -I../../lib/DtSearch/raima \
		  -DMAIN_PROGRAM -lc -lm ${X_LIBS}
PROGRAMS_LDADD = ../../lib/DtSearch/libDtSearch.so

dtsrcreate_SOURCES = dtsrcreate.c

dtsrdbrec_SOURCES = dtsrdbrec.c

dtsrhan_SOURCES = dtsrhan.c

dtsrload_SOURCES = dtsrload.c

dtsrindex_SOURCES = dtsrindex.c

dtsrdelete_SOURCES = dtsrdelete.c

huffcode_SOURCES = huffcode.c

dtsrkdump_SOURCES = dtsrkdump.c
