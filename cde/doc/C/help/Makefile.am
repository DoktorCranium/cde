MAINTAINERCLEANFILES = Makefile.in

# FIXME dtdocbook needs to be fixed to allow parallel building here
.NOTPARALLEL:

# This is only available for the C locale, it will be blank for other
# languages
APPBUILDER = AppBuilder.sdl

# this sets the LANG and HELP_LANG variables
include $(top_srcdir)/programs/localized/templates/C.am
# this does all the work
include $(top_srcdir)/doc/common/help/sdl-docs.am
