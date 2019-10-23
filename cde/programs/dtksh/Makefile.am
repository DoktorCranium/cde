kshdir = ${libdir}/dtksh

dist_ksh_SCRIPTS = DtFuncs.dtsh

KSH93SRC = ./ksh93

if SUN
.NO_PARALLEL:
endif

SUBDIRS = examples ksh93
KSH93OBJ = $(KSH93SRC)/ksh93.o
KSH93LIBSHELL = $(KSH93SRC)/src/cmd/ksh93/libshell.a

bin_PROGRAMS = dtksh

dtksh_CPPFLAGS = -I$(KSH93SRC)/include/ast -I$(KSH93SRC)/src/cmd/ksh93/include \
	       -I$(KSH93SRC)/src/cmd/ksh93 $(TIRPCINC) -I${srcdir}/lib/DtPrint \
	       -I${srcdir}/lib/DtHelp
dtksh_LDADD = $(DTHELPLIB) $(DTWIDGETLIB) $(DTSVCLIB) $(DTPRINTLIB) $(TTLIB) \
	      -lXm $(XTOOLLIB) ${X_LIB} $(KSH93SRC)/lib/libcmd.a  \
	      $(KSH93SRC)/lib/libast.a -lm

if LINUX
dtksh_LDADD += -ldl
endif

if SUN
dtksh_CPPFLAGS += -DDYNLIB
endif

if HPUX
dtksh_CFLAGS += -Wl,-E -DHPUX_DYNLIB -Wp,-H12000
dtksh_LDADD += -lm -ldld
endif

if AIX
dtksh_CPPFLAGS += -DDYNLIB -D_IBMRPC_
dtksh_LDADD += -bE:dtksh.exp
endif

dtksh_SOURCES = \
                userinit.c \
                builtins.c \
                aliases.c \
                widget.c \
                dtkcvt.c \
                dtkcmds.c \
                XtCvtrs.c \
                xmcvt.c \
                xmcmds.c \
                xmwidgets.c \
                extra.c \
                xmdtksym.c \
                findsym.c \
                msgs.c

all:: dtksh

$(KSH93SRC)/ksh93.o:
        cd $(KSH93SRC); $(MAKE)

# Must replace standard ksh tables of builtins and aliases
# with our augmented versions.

libshell.a: $(KSH93SLIBSHELL) userinit.o builtins.o aliases.o
        $(CP) $(KSH93LIBSHELL) libshell.a; \
        ar d libshell.a userinit.o builtins.o aliases.o ; \
        $(AR) libshell.a userinit.o builtins.o aliases.o

clean::
        @echo " Cleaning ksh directories"
        $(SHELL) MakeClean
