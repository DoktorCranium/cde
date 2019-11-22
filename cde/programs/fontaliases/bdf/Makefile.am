MAINTAINERCLEANFILES = Makefile.in

noinst_DATA = $(DTINFO_FONT)

DTINFO_FONT = dtinfo.pcf.gz

BUILT_SOURCES = $(DTINFO_FONT)
CLEANFILES = $(BUILT_SOURCES)

dtinfo.pcf.gz: dtinfo.bdf
	$(RM) $@
	$(BDFTOPCF) -t $< |$(GZIP) > $@

