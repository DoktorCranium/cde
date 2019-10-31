MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.inc

noinst_SCRIPTS = ttce2xdr
BUILT_SOURCES = ttce2xdr
CLEANFILES = ttce2xdr

AM_CPPFLAGS = $(TIRPCINC) $(TT_VERSION_DEFINE)


ttce2xdr: ttce2xdr.cpp
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

