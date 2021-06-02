MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtpdmd

dtpdmd_CFLAGS = -DCDE_INSTALLATION_TOP=\"$(CDE_INSTALLATION_TOP)\"

dtpdmd_LDADD = $(DTCLIENTLIBS) $(XTOOLLIB)

if SOLARIS
dtpdmd_LDADD += -ldl
endif

dtpdmd_SOURCES = dispatch.c dtpdmd.c mailbox.c manager.c records.c	\
		 nlmsg.c setup.c util.c dtpdmdP.h nlmsg.h
