MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libDtCodelibs.la

libDtCodelibs_la_CXXFLAGS = -I../include -DMULTIBYTE

if AIX
libDtCodelibs_la_CXXFLAGS = -qlanglvl=compat
endif

if SOLARIS
libDtCodelibs_la_CXXFLAGS = -DNO_REGCOMP
endif

if HPUX
libDtCodelibs_la_CXXFLAGS = -DMESSAGE_CAT
endif

libDtCodelibs_la_SOURCES = buf.C           filegen.C       mbschr.C \
			   pathcollapse.C  shellscan.C     strend.C \
			   strhash.C       stringio.C      strtokx.C \
			   strwcmp.C       privbuf.C       strcase.C
