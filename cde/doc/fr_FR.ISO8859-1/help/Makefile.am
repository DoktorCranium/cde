MAINTAINERCLEANFILES = Makefile.in

# FIXME dtdocbook needs to be fixed to allow parallel building here
.NOTPARALLEL:

# this sets the LANG and HELP_LANG variables
include $(top_srcdir)/programs/localized/templates/French.am
# this does all the work
include $(top_srcdir)/doc/common/help/sdl-docs.am
# install all of the extra assets
include $(top_srcdir)/doc/common/help/sdl-data.am
