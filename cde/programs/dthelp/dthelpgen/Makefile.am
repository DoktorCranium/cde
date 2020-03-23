MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dthelpgen

bin_SCRIPTS = dthelpgen.dtsh

dthelpgen_CPPFLAGS = -I.. -DCDE_INSTALLATION_TOP=\"$(CDE_INSTALLATION_TOP)\" \
		   -DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\"

dthelpgen_LDADD = $(LIBHELP) $(LIBSVC) $(LIBTT) $(XTOOLLIB) ${X_LIBS}

dthelpgen_SOURCES = helpgen.c
