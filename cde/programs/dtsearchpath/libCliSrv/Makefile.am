MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libCliSrv.a

libCliSrv_a_CXXFLAGS = $(DT_INCDIR) $(TIRPCINC)

if SOLARIS
libCliSrv_a_CXXFLAGS += -DIOSTREAMSWORKS
libCliSrv_a_LIBADD = -ldl -lintl -lc -ladm
endif

libCliSrv_a_SOURCES = DirIterator.C Environ.C TTFile.C UnixEnv.C	\
	cstring.C cstring.h DirIterator.h Environ.h TTFile.h
