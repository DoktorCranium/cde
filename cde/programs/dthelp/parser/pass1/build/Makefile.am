MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = build

ARCCMD = arc u
UNARCCMD = arc x
ARCDELCMD = arc d

HELPTAG       = ..
HELPTAGSRC    = $(HELPTAG)/helptag
HELPPARSERSRC = $(HELPTAG)/parser
HELPELTDEFSRC = $(HELPTAG)/eltdef
HELPDTDFILE   = $(HELPTAGSRC)/hptag.dtd
HELPUTILSRC   = $(HELPTAG)/util
HELPBUILDSRC  = $(HELPTAG)/build
HELPUTILLIB   = $(HELPTAG)/util/libutil.a

build_CFLAGS = -I$(HELPUTILSRC)

build_LDADD = -l$(HELPUTILLIB)

if HPUX
build_LDFLAGS = -Wl,-a archive
endif

if SOLARIS
.NO_PARALLEL:
endif

build_SOURCES = build.c buildutl.c eltree.c except.c fsa.c out.c param.c \
		scan.c sref.c tree.c

CHPRODS = context.h delim.h
CCPRODS = case.c

BHPRODS = arc.h dtd.h entity.h
BCPRODS =

CTRASH  = error delim.dat
BTRASH  = error template

CPRODS  = $(CHPRODS) $(CCPRODS)
BPRODS  = $(BHPRODS) $(BCPRODS)
TRASH   = error delim.dat template

PRODUCTS = $(CPRODS) $(BPRODS)

all:: $(PRODUCTS)

$(BPRODS): build $(HELPDTDFILE)
        $(RM) $(BPRODS) $(BTRASH)
        ./build < $(HELPDTDFILE)

$(CPRODS):  $(HELPUTILSRC)/context $(HELPTAGSRC)/delim.bld context.dat
        $(RM) $(CPRODS) $(CTRASH)
        $(CP) $(HELPTAGSRC)/delim.bld delim.dat  #appl.-specific delim.dat
        $(HELPUTILSRC)/context sparse

$(HELPUTILSRC)/context:
        cd $(HELPUTILSRC); make context

arc package :
        if exist util.arc $(CP) build.arc old.arc
        $(ARCCMD) util.arc *.c *.h makefile

unarc dearc :
        $(UNARCCMD) util.arc

clean::
        $(RM) $(PRODUCTS) $(TRASH)
