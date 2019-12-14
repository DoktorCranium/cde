MAINTAINERCLEANFILES = Makefile.in

dist_bin_SCRIPTS = dtopen

LOCAL_CPP_DEFINES = -DCDE_INSTALLATION_TOP=$(CDE_INSTALLATION_TOP) \
		-DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \
		-DKORNSHELL=$(KSH)

BUILT_SOURCES = dtopen
CLEANFILES = $(BUILT_SOURCES)

dtopen: dtopen.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(LOCAL_CPP_DEFINES) $< > $@

install-data-hook:
	$(RM) $(DESTDIR)$(CDE_INSTALLATION_TOP)/bin/dtopen_*
	cd $(DESTDIR)$(CDE_INSTALLATION_TOP)/bin && $(LN_S) dtopen dtopen_video
	cd $(DESTDIR)$(CDE_INSTALLATION_TOP)/bin && $(LN_S) dtopen dtopen_image
	cd $(DESTDIR)$(CDE_INSTALLATION_TOP)/bin && $(LN_S) dtopen dtopen_ps
	cd $(DESTDIR)$(CDE_INSTALLATION_TOP)/bin && $(LN_S) dtopen dtopen_pdf
