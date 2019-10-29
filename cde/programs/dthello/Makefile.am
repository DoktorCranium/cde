MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dthello

dthello_LDADD = ${X_LIBS} -lm $(XTOOLLIB) ../DtSvc/DtUtil2/EnvControl.o \
                ../DtSvc/DtUtil2/DtNlUtils.o ../DtSvc/DtUtil2/GetDispRes.o

if HPUX
dthello_LDADD = -DHP_COLOR
endif

if SOLARIS
dthello_LDADD = -ldl -lgen
endif

dthello_SOURCES = dthello.c
