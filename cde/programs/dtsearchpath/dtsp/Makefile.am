MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtsearchpath

dtsearchpath_CFLAGS = -I../libCliSrv $(TIRPCINC)

if SOLARIS
dtsearchpath_CFLAGS += -DIOSTREAMSWORKS
endif

if AIX
dtsearchpath_CFLAGS += -DIOSTREAMSWORKS
endif

dtsearchpath_LDADD = ../libCliSrv/libCliSrv.a $(LIBTT) $(XTOOLLIB) ${X_LIB}

dtsearchpath_SOURCES = AppSearchPath.C DbSearchPath.C HelpSearchPath.C \
		       IconSearchPath.C InfoLibSearchPath.C ManSearchPath.C \
		       Options.C SearchPath.C dtsearchpath.C
