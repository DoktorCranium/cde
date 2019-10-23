MAINTAINERCLEANFILES = Makefile.in

CLEANFILES = *.done types.xdr .tt_lock

.SUFFIXES: .ptype .done

LOCALDEPFILES = \
        dtfile.done \
        dticon.done \
        dtpad.done \
        dtcm.done \
        dtmail.done \
        dtdbcache.done \
        dtterm.done \
        dtinfo.done \
        dtinfo.done

all:: types.xdr

types.xdr: $(LOCALDEPFILES)

TT_TYPE_COMP = $(srcdir)/lib/tt/bin/tt_type_comp/tt_type_comp

.ptype.done:
	$(RM) $@
	TTPATH=. $(TT_TYPE_COMP) -sd user -m $< && touch $@ ; $(RM) .tt_lock
