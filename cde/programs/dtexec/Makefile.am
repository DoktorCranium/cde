MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtexec

dtexec_CFLAGS = $(TIRPCINC) -DMSGLOG_CLIENT_ONLY

dtexec_LDADD = $(LIBTT) $(XTOOLLIB) ${X_LIBS}

DtSvcLock.h: ../../lib/DtSvc/include/DtSvcLock.h
	$(RM) $@
	$(LN_S) $? $@

dtexec_SOURCES = ../../lib/DtSvc/DtUtil2/DtGetMessage.c \
		 ../../lib/DtSvc/DtUtil/MsgLog.c Main.c
