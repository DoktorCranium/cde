MAINTAINERCLEANFILES = Makefile.in

BUILT_SOURCES = docbook.dtd dtinfo.af
CLEANFILES = $(BUILT_SOURCES)

docbook.dtd: $(top_srcdir)/programs/dtinfo/dtinfogen/infolib/C.ISO-8859-1/SGML/docbook.dtd
	$(LN_S) $< $@

dtinfo.af: $(top_srcdir)/programs/dtinfo/dtinfogen/infolib/C.ISO-8859-1/SGML/dtinfo.af
	$(LN_S) $< $@

