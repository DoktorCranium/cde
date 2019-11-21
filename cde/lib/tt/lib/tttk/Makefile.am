headerdir = ${prefix}/share/include/Tt

MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

noinst_LTLIBRARIES = libtttk.la

libtttk_la_CXXFLAGS = $(TT_VERSION_DEFINE) -I../ -I../../lib

libtttk_la_SOURCES = ttdesktop.C     ttdtfile.C      ttdtprocid.C \
	             ttmedia.C       tttk.C          tttk2free.C \
		     tttkmessage.C   tttkpattern.C   tttkutils.C
