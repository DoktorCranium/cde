MAINTAINERCLEANFILES = Makefile.in

CLEANFILES = init.c FEATURE DtFuncs.dtsh

SUBDIRS = examples

kshdir = ${libdir}/dtksh

dist_ksh_SCRIPTS = DtFuncs.dtsh

KSH93SRC = ./ksh93

KSH93LIBSHELL = $(KSH93SRC)/lib/libshell.a

bin_PROGRAMS = dtksh

BUILT_SOURCES = init.c

dtksh_CPPFLAGS = -I$(KSH93SRC)/include/ast -I$(KSH93SRC)/src/cmd/ksh93/include \
		 -I$(KSH93SRC)/src/cmd/ksh93 -I${srcdir}/lib/DtPrint \
		 -I${srcdir}/lib/DtHelp '-DAST_VERSION=20111111' \
		 -DSHOPT_STATS -DSHOPT_NAMESPACE -DSHOPT_2DMATCH \
		 -DSHOPT_MULTIBYTE -DSHOPT_BGX -DSHOPT_AUDIT -D_PACKAGE_ast \
		 -DSHOPT_DYNAMIC -D_BLD_shell -DSHOPT_KIA -DKSHELL \
		 -DSHOPT_HISTEXPAND -DSHOPT_EDPREDICT -DSHOPT_ESH -DSHOPT_VSH \
		 -DSHOPT_FIXEDARRAY '-DERROR_CONTEXT_T=Error_context_t' \
		 -DSHOPT_SUID_EXEC -D_API_ast=20100309 -DSHOPT_BRACEPAT \
		 -DBUILD_DTKSH

dtksh_LDADD = $(DTCLIENTLIBS) pmain.o $(XTOOLLIB) \
	      libshell.a $(KSH93SRC)/lib/libcmd.a $(KSH93SRC)/lib/libast.a \
	      $(KSH93SRC)/lib/libdll.a

if LINUX
dtksh_LDADD += -ldl
endif

if SOLARIS
dtksh_LDADD += -lsecdb -lsocket -lnsl
endif

if AIX
dtksh_CPPFLAGS += -D_IBMRPC_
dtksh_LDFLAGS = -bE:dtksh.exp
endif

dtksh_SOURCES = init.c \
                widget.c \
                dtkcvt.c \
                dtkcmds.c \
                XtCvtrs.c \
                xmcvt.c \
                xmcmds.c \
                xmwidgets.c \
                extra.c \
                msgs.c

init.c:
	cd ksh93; ./bin/package flat make CCFLAGS='$(SUIDEXECDEFINES) -g -D_std_malloc'
	cp ./ksh93/src/cmd/ksh93/sh/init.c init.c
	$(PATCH) --posix init.c -i init.patch
	./setup.sh


libshell.a: $(KSH93SLIBSHELL) dtksh-init.o
	$(CP) $(KSH93LIBSHELL) libshell.a; \
	$(AR) d libshell.a init.o; \
	$(AR) cq libshell.a dtksh-init.o

clean-local:
	cd ksh93 && ./bin/package flat clean

DtFuncs.dtsh:
	$(CP) DtFuncs.sh DtFuncs.dtsh
