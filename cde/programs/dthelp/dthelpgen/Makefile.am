bin_PROGRAM = dthelpgen dthelpgen.dtsh

dthelpgen_CPPFLAGS = -I.. -DCDE_INSTALLATION_TOP=\"${prefix}\" \
		   -DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\"

dthelpgen_LDADD = $(LIBHELP) $(LIBSVC) $(LIBTT) $(XTOOLLIB) ${X_LIBS}

dthelpgen_SOURCES = helpgen.c
