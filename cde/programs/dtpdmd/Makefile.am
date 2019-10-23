MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtpdmd

dtpdmd_CFLAGS = -DCDE_INSTALLATION_TOP='"'${prefix}'"'

dtpdmd_LDADD = $(XTOOLLIB) ${X_LIBS}

if SUN
dtpdmd_LDADD += -lm -ldl
endif

dtpdmd_SOURCES = dispatch.c      dtpdmd.c        mailbox.c \
		 manager.c       records.c       setup.c \
		 util.c
