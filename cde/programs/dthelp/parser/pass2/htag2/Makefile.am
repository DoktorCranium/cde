MAINTAINERCLEANFILES = Makefile.in

# Due to the wierd interdepencencies between helptag and parser,
# disable parallel builds here.  This is some really horrible code and
# design - not surprising since it dates to 1989.
.NOTPARALLEL:

HTAG2       = ..
HTAG2SRC    = $(HTAG2)/htag2
SDLPARSERSRC = $(HTAG2)/parser
SDLELTDEFSRC = $(HTAG2)/eltdef
SDLDTDFILE   = $(HTAG2SRC)/sdl.dtd
SDLUTILSRC   = $(HTAG2)/util
SDLBUILDSRC  = $(HTAG2)/build
SDLUTILLIB   = $(HTAG2)/util/libutil.a
SDLIFFILE    = $(HTAG2SRC)/help.if

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

AM_CPPFLAGS = -I$(SDLPARSERSRC) -I$(SDLUTILSRC) \
	    -I$(SDLELTDEFSRC) -I$(XLATESRCDIR) $(DT_INCDIR)

# needed by parser/
noinst_LIBRARIES = libhelptag.a
libhelptag_a_SOURCES = custom.c sdl.c option.c	\
		      out.c $(XLATESRCS)		\
		      global.c ../parser/delim.h

