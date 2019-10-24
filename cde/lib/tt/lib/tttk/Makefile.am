headerdir = ${prefix}/share/include/Tt

MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

header_HEADERS = tttk.h

noinst_LTLIBRARIES = libtttk.la

# We need to build a symlink to ../api/c/ so that contructs like
# include <Tt/somefile.h> can work, since we no longer have a global
# 'includes' phase during the build that installes include files
# similiar to what you would expect if they were installed on the
# system.

BUILT_SOURCES = Tt
CLEANFILES = Tt
Tt: Makefile
	$(RM) Tt
	$(LN_S) ../api/c Tt

libtttk_la_CXXFLAGS = $(TIRPCINC) $(TT_VERSION_DEFINE) -I../ -I../../lib

libtttk_la_SOURCES = ttdesktop.C     ttdtfile.C      ttdtprocid.C \
	             ttmedia.C       tttk.C          tttk2free.C \
		     tttkmessage.C   tttkpattern.C   tttkutils.C
