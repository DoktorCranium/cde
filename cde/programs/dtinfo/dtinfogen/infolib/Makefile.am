MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = etc C.ISO-8859-1

# Not supported, but we'll keep it here in case someday...
# SUBDIRS += ja_JP.EUC-JP

BUILT_SOURCES = C
CLEANFILES = $(BUILT_SOURCES)

C:
	$(LN_S) C.ISO-8859-1 $@

