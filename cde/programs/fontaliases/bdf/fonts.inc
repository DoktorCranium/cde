# to be included by OS/LANG/Makefile.am's


dtinfo.pcf.gz: $(top_builddir)/programs/fontaliases/bdf/dtinfo.pcf.gz
	$(RM) $@
	$(CP) $< $@

fonts.dir: fonts.alias dtinfo.pcf.gz
	$(MKFONTDIR) .

