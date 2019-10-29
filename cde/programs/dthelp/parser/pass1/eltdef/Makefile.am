MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = eltdef

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
HELPIFFILE    = $(HELPTAGSRC)/help.if
HELPTSSFILE   = $(HELPTAGSRC)/htag.tss

eltdef_LDADD = -l$(HELPUTILLIB)

if HPUX
eltdef_LDFLAGS = -Wl,-a archive
endif

if SOLARIS
.NO_PARALLEL:
endif

eltdef_CFLAGS = -I$(HELPUTILSRC) -I$(HELPBUILDSRC)

eltdef_SOURCES = eltdef.c eltutil.c entity.c scan.c

CCPRODS = case.c
ECPRODS = efile.c entfile.c pfile.c sfile.c stfile.c tfile.c

CHPRODS = context.h delim.h
EHPRODS = entity2.h globdec.h globdef.h if.h pval.h signon.h signonx.h

CPRODS  = $(CCPRODS) $(CHPRODS)
EPRODS  = $(ECPRODS) $(EHPRODS)

CTRASH  = delim.dat error
ETRASH  = estring.h error
TRASH   = delim.dat estring.h error

PRODUCTS = $(CPRODS) $(EPRODS)

all:: $(PRODUCTS)

$(EPRODS): eltdef  $(HELPIFFILE) $(HELPTSSFILE)
	$(RM) $(EPRODS) $(ETRASH)
	./eltdef $(HELPIFFILE)

$(CPRODS):  $(HELPUTILSRC)/context $(HELPTAGSRC)/delim.elt context.dat
	$(RM) $(CPRODS) $(CTRASH)
	$(CP) $(HELPTAGSRC)/delim.elt delim.dat  # appl.-specific delim.dat
	$(HELPUTILSRC)/context

$(HELPUTILSRC)/context:
	cd $(HELPUTILSRC); make context

arc package :
        if exist util.arc $(CP) build.arc old.arc
        $(ARCCMD) util.arc *.c *.h makefile

unarc dearc :
        $(UNARCCMD) util.arc

clean::
        $(RM) $(PRODUCTS) $(TRASH)
