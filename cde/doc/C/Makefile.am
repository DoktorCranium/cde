MAINTAINERCLEANFILES = Makefile.in

all:
	$(MKDIR_P) help-sdl
	$(MKDIR_P) cde.dti
	$(MKDIR_P) m-guides/common
	$(LN_S) ../../guides/common/ManLinksMotif.sgm \
	m-guides/common/ManLinks.sgm

SUBDIRS = man guides help

clean::
        $(RM) -r help-sdl cde.dti
