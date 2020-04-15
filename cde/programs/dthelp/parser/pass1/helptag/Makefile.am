MAINTAINERCLEANFILES = Makefile.in

# Due to the wierd interdepencencies between helptag and parser,
# disable parallel builds here.  This is some really horrible code and
# design - not surprising since it dates to 1989.
.NOTPARALLEL:

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

XLATESRCS = XlationSvc.c LocaleXlate.c

XLATESRCDIR = ${top_srcdir}/lib/DtSvc/DtUtil2

$(XLATESRCS): XDONE

XDONE: $(XLATESRCDIR)/XlationSvc.c $(XLATESRCDIR)/LocaleXlate.c
	$(RM) $(XLATESRCS)
	$(CP) $(XLATESRCDIR)/XlationSvc.c XlationSvc.c
	$(CP) $(XLATESRCDIR)/LocaleXlate.c LocaleXlate.c
	cd ../parser; $(MAKE) CDONE
	touch XDONE

BUILT_SOURCES = $(XLATESRCS)
CLEANFILES = $(BUILT_SOURCES) XDONE

AM_CPPFLAGS = -I. -I$(HELPPARSERSRC) -I$(HELPUTILSRC) \
	    -I$(HELPELTDEFSRC) -I$(XLATESRCDIR) $(DT_INCDIR)

# needed by parser/
noinst_LIBRARIES = libhelptag.a
libhelptag_a_SOURCES = custom.c default.c help.c make.c option.c	\
		      special.c out.c xref.c $(XLATESRCS)		\
		      ../parser/delim.h

