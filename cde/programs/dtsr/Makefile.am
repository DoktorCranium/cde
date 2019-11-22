MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtsrcreate dtsrdbrec dtsrhan dtsrload dtsrindex dtsrdelete \
	       huffcode dtsrkdump dtsrclean

AM_CFLAGS = -I../../lib/DtSearch -I../../lib/DtSearch/raima	\
	$(DT_INCDIR) -DMAIN_PROGRAM

if I386
AM_CFLAGS += -DBYTE_SWAP
endif

if X86_64
AM_CFLAGS += -DBYTE_SWAP
endif

if ARM
AM_CFLAGS += -DBYTE_SWAP
endif

LDADD = ../../lib/DtSearch/libDtSearch.la

dtsrcreate_SOURCES = dtsrcreate.c

dtsrdbrec_SOURCES = dtsrdbrec.c

dtsrhan_SOURCES = dtsrhan.c

dtsrload_SOURCES = dtsrload.c

dtsrclean_SOURCES = dtsrclean.c

dtsrindex_SOURCES = dtsrindex.c

dtsrdelete_SOURCES = tomita.c

huffcode_SOURCES = huffcode.c

dtsrkdump_SOURCES = dtsrkdump.c
