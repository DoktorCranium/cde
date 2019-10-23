configdir = ${prefix}/config

MAITAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtspcd

config_PROGRAMS = dtspcdenv

dtspcd_CFLAGS = $(TIRPCINC) -I../dthelp -DCDE_CONFIGURATION_TOP=\"${prefix}\" \
		-DCDE_INSTALLATION_TOP=\"$(CDE_INSTALLATION_TOP)\"

dtspcd_LDADD = $(LIBHELP) $(LIBSVC) $(LIBTT) -lXm $(XTOOLLIB) ${X_LIBS} -lm

if SUN
dtspcd_LDADD += -ldl -lgen
endif

if HPUX
dtspcd_CFLAGS += -D_XOPEN_SOURCE -D__hpux_8_0 -DFUNCPROTO
endif

dtspcdenv_CPPFLAGS = -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \
                    -DCDE_INSTALLATION_TOP=${prefix} \
                    -DCDE_LOGFILES_TOP=$(CDE_LOGFILES_TOP) \
                    -DDEF_SYSTEM_PATH=$(PATH)

dtspcd_SOURCES = main.c spcd_event.c

CPPTARGET = dtspcdenv
CPPSRC = dtspcdenv.src
include $(srcdir)/include/cppfile.tmpl
