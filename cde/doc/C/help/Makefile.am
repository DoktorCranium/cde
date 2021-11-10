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

# need to setup a symlink for the en_US locale to point toward C
install-data-hook:
	$(RM) $(DESTDIR)$(CDE_INSTALLATION_TOP)/appconfig/help/en_US.UTF-8
	cd $(DESTDIR)$(CDE_INSTALLATION_TOP)/appconfig/help/ && $(LN_S) C en_US.UTF-8
