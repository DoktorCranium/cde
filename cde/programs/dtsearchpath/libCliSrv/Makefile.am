MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libCliSrv.a

libCliSrv_a_CXXFLAGS = $(TIRPCINC)

if SUN
libCliSrv_a_CXXFLAGS += -DIOSTREAMSWORKS
libCliSrv_a_LDADD = -ldl -lintl -Bstatic -Bdynamic -lm -lc -ladm -Bstatic
endif

if AIX
libCliSrv_a_CXXFLAGS += -DIOSTREAMSWORKS
endif

libCliSrv_a_SOURCES = DirIterator.C Environ.C TTFile.C UnixEnv.C cstring.C
