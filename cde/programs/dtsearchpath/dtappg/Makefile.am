MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtappgather

dtappgather_CXXFLAGS = -I../libCliSrv

if AIX
dtappgather_CXXFLAGS += -DIOSTREAMSWORKS
endif

dtappgather_LDADD = ../libCliSrv/libCliSrv.a $(LIBTT) $(XTOOLLIB) ${X_LIB}

if SUN
dtappgather_LDADD += -ldl -lintl
endif

dtappgather_SOURCES = Options.C dtappgather.C
