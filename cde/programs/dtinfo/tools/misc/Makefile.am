MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = dfiles pmaker msgsets

noinst_SCRIPTS = treeres

LOCAL_SED_DEFINES = -e 's|PERL|$(PERL)|g'

dfiles_SOURCES = dfiles.c

pmaker_SOURCES = pmaker.c

msgsets_SOURCES = msgsets.C

treeres: treeres.src
	$(RM) $@
	$(SED) $(LOCAL_SED_DEFINES) $< > $@
	chmod +x $@
