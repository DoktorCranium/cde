MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = etc C.ISO-8859-1 ja_JP.EUC-JP

C:: C.ISO-8859-1
	$(RM) $@
	$(LN) $? $@

clean::
	$(RM) C
