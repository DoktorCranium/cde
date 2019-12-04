MAINTAINERCLEANFILES = Makefile.in

DTINFO_FONT = dtinfo.pcf.gz
noinst_DATA = $(DTINFO_FONT)

BUILT_SOURCES = $(DTINFO_FONT)
CLEANFILES = $(BUILT_SOURCES)

dtinfo.pcf.gz: dtinfo.bdf
	$(RM) $@
	$(BDFTOPCF) -t $< |$(GZIP) > $@

