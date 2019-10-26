MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = libDtEncap.la

libDtEncap_la_CFLAGS = -DMULTIBYTE -I../include -I../DtUtil2 $(TIRPCINC) \
		       -I$(top_builddir)/include/Dt \
		       -DCDE_CONFIGURATION_TOP=\"$(CDE_CONFIGURATION_TOP)\" \
		       -DCDE_INSTALLATION_TOP=\"${prefix}\" \
		       -DCDE_LOGFILES_TOP=\"$(CDE_LOGFILES_TOP)/tmp\"

if SOLARIS
libDtEncap_la_CFLAGS += -DNO_REGCOMP
endif

if HPUX
libDtEncap_la_CFLAGS += -DMESSAGE_CAT
endif

libDtEncap_la_SOURCES = MemoryMgr.c SbEvent.c Symbolic.c bmsglob.c \
			connect.c local.c nls.c noio.c \
			pathwexp.c pipe.c pty.c remote.c \
			sbstdinc.c scoop.c spc-env.c spc-error.c \
			spc-exec.c spc-net.c spc-obj.c spc-proto.c \
			spc-sm.c spc-termio.c spc-util.c spc-xt.c \
			spc.c stringbuf.c usersig.c
