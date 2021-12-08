MAINTAINERCLEANFILES = Makefile.in

INFOLIBDESC = "CDE and Motif Information Library"

# get some important variables
include $(top_srcdir)/doc/common/guides/guides_env.am

# prime the pump
BUILT_SOURCES =
CLEANFILES =

# this sets the LANG and HELP_LANG variables
include $(top_srcdir)/programs/localized/templates/C.am

# build guides
include $(top_srcdir)/doc/common/guides/usersGuide.am
include $(top_srcdir)/doc/common/guides/infoUGuide.am
include $(top_srcdir)/doc/common/guides/infoAPGuide.am
include $(top_srcdir)/doc/common/guides/sysAdminGuide.am
include $(top_srcdir)/doc/common/guides/progGuide.am
include $(top_srcdir)/doc/common/guides/man.am
include $(top_srcdir)/doc/common/guides/builderGuide.am
include $(top_srcdir)/doc/common/guides/dtkshGuide.am
include $(top_srcdir)/doc/common/guides/glossary.am
include $(top_srcdir)/doc/common/guides/progOview.am
include $(top_srcdir)/doc/common/guides/ttGuide.am

