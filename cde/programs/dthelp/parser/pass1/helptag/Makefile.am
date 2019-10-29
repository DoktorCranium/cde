MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dthelp_htag1

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

XLATESRC  = $(DTHELPSRC)
XLATEHDRS = $(XLATESRC)/XlationSvc.h $(XLATESRC)/LocaleXlate.h
XLATESRCS = ${top_srcdir}/lib/DtSvc/DtUtil2/XlationSvc.c \
	    ${top_srcdir}/lib/DtSvc/DtUtil2/LocaleXlate.c

ELTHDRS = $(HELPUTILSRC)/entdef.h $(HELPUTILSRC)/entext.h

# PARSEHDRS are header files used by many parser routines
PARSEHDRS = $(HELPUTILSRC)/basic.h $(HELPUTILSRC)/trie.h \
        $(HELPUTILSRC)/common.h $(HELPUTILSRC)/dtddef.h \
        $(HELPUTILSRC)/dtdext.h $(HELPUTILSRC)/sparse.h \
        parser.h proto.h

APPLHDRS = $(PARSEHDRS) $(ELTHDRS) \
        $(HELPUTILSRC)/version.h \
        $(HELPTAGSRC)/global.h $(HELPTAGSRC)/charconv.h \
        $(HELPTAGSRC)/roman8.h $(HELPTAGSRC)/fproto.h \
        ../parser/pval.h ../parser/globdec.h ../parser/signonx.h \
        ../parser/userinc.h

dthelp_htag1_CFLAGS = -I$(HELPUTILSRC) -I$(HELPPARSERSRC) -I$(HELPELTDEFSRC) \
		      -I$(XLATESRC)

dthelp_htag1_LDADD = $(HELPUTILLIB)

if HPUX
dthelp_htag1_LDFLAGS = -Wl,-a archive
endif

if SOLARIS
dthelp_htag1_LDADD += -lm -ldl -lgen
endif

dthelp_htag1_SOURCES = custom.c default.c help.c make.c option.c out.c \
		      special.c xref.c $(XLATESRCS)

dthelp_htag1$(EXEEXT): $(HELPPARSERSRC)/parser
        $(RM) dthelp_htag1
        $(CP) $(HELPPARSERSRC)/parser dthelp_htag1

arcappl archptag :
        if exist hptag.arc $(CP) hptag.arc hptag.old
        $(ARCCMD) hptag.arc *.c *.h linkcmd.dos linkcmd.unx $(HELPDTDFILE) \
        tex.if makefile makefile.doc make.ini delim.*

unarcappl unarchptag :
        $(UNARCCMD) hptag.arc

