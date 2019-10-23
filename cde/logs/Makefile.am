MAINTAINERCLEANFILES = Makefile.in

all::
	@FILES=`ls -rt | egrep -v "Makefile.am|Makefile.in|Makefile|logerr.sed" || true`; \
	set -- $$FILES; \
	while [ $$# -gt 10 ];do \
	rm -rf $$1; \
	echo "removing log file $$1"; shift; done

clean::
