MAINTAINERCLEANFILES = Makefile.in

INFOLIBDESC = "CDE and Motif Information Library"

# get some important variables
include $(top_srcdir)/doc/common/guides/guides_env.am

# prime the pump
BUILT_SOURCES =
CLEANFILES =

# this sets the LANG and HELP_LANG variables
include $(top_srcdir)/programs/localized/templates/C.am

# build guide TOCs and deps
include $(top_srcdir)/doc/common/guides/usersGuide.am
include $(top_srcdir)/doc/common/guides/infoUGuide.am
include $(top_srcdir)/doc/common/guides/infoAPGuide.am
include $(top_srcdir)/doc/common/guides/sysAdminGuide.am
include $(top_srcdir)/doc/common/guides/progGuide.am
include $(top_srcdir)/doc/common/guides/man.am
include $(top_srcdir)/doc/common/guides/builderGuide.am
include $(top_srcdir)/doc/common/guides/dtkshGuide.am
include $(top_srcdir)/doc/common/guides/glossary.am
include $(top_srcdir)/doc/common/guides/i18nGuide.am
include $(top_srcdir)/doc/common/guides/progOview.am
include $(top_srcdir)/doc/common/guides/ttGuide.am
include $(top_srcdir)/doc/common/guides/helpGuide.am
include $(top_srcdir)/doc/common/guides/docbookGuide.am


# build the infolib + search DB
INFOLIBDEPS = $(SGMLDEPS) $(top_srcdir)/doc/common/docbook/docbook.stl

$(INFOLIB)/$(BOOKCASE)/dtsearch/dtsearch.ocf: $(INFOLIBDEPS)
	$(MKDIR_P) $(INFOLIB)
	$(DGENV) $(DTINFOGEN) build -v -T $(DTINFOGENTMPDIR) $(DTINFOGENOPTIONS) $(DGOPTS) $(SSENTS) -l $(INFOLIB) bookcase.bc

BUILT_SOURCES += $(INFOLIB)/$(BOOKCASE)/dtsearch/dtsearch.ocf
CLEANFILES += $(INFOLIB)/$(BOOKCASE)/dtsearch/dtsearch.ocf
