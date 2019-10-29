bin_PROGRAMS = dthelpprint dthelpprint.sh

dthelpprint_CPPFLAGS = -I.. -DCDE_CONFIGURATION_TOP='"${prefix}"' \
		     -DCDE_INSTALLATION_TOP='"$(CDE_INSTALLATION_TOP)"'

dthelpprint_LDADD = $(LIBSVC) $(LIBTT) $(LIBHELP) $(XTOOLLIB) ${X_LIBS}

if SOLARIS
dthelpprint_LDADD += -lw -ldl -lgen -lm
endif

dthelpprint_SOURCES = Main.c Initialize.c PrintUtil.c PrintTopics.c \
		      PrintManStrFile.c
