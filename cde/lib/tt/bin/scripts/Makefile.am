MAINTAINERCLEANFILES = Makefile.in

include ../../tooltalk.tmpl

noinst_SCRIPTS = ttce2xdr

ttce2xdr_CPPFLAGS = $(TIRPCINC) $(TT_VERSION_DEFINE)

all:: ttce2xdr

CPPTARGET = ttce2xdr
CPPSRC = ttce2xdr.cpp

include $(srcdir)/include/cppfile.tmpl
