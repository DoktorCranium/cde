MAINTAINERCLEANFILES = Makefile.in

noinst_PROGRAMS = dtinfo_start

dtinfo_start_CFLAGS = -I.

dtinfo_start_LDADD = ${X_LIBS} $(LIBTT) $(LIBSVC) $(XTOOLLIB) -lXm

dtinfo_start.opnums: $(srcdir)/tttypes/dtinfo_start.opnums
	$(RM) dtinfo_start.opnums
	$(LN_S) $? $@

dtinfo_start_SOURCES = dtinfo_start.c
