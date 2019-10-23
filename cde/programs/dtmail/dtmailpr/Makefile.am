MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtmailpr

dtmailpr_CXXFLAGS = -I../include -I../../dtcompat -I../../../. \
		    -I$(srcdir)/lib $(TIRPCINC)

dtmailpr_LDADD = ../libDtMail/libDtMail.a $(LIBPRINT) $(LIBHELP) $(LIBWIDGET) \
		 $(LIBSVC) $(LIBTT) -lXm $(XTOOLLIB) ${X_LIBS} -lm

if FREEBSD
dtmailpr_LDADD += -liconv
endif

if AIX
dtmailpr_CXXFLAGS += -DI_HAVE_NO_BOOL -DI_HAVE_SELECT_H \
		     -DBIG_ENDIAN -DSTRCASECMP_NOT_DEFINED -DDO_ANONYMOUS_MAP \
		     -DSENDMAIL_LOCKS -DMAILGROUP_REQUIRED \
		     -DMAIL_SPOOL_PATH=\"/var/spool/mail/%s\"

dtmailpr_LDADD += -ldl -liconv -lgen
endif

if HPUX
dtmailpr_CXXFLAGS += -DBIG_ENDIAN -DDO_ANONYMOUS_MAP -DNEED_MMAP_WRAPPER \
		     -DSENDMAIL_LOCKS -DMAILGROUP_REQUIRED \
		     -DMAIL_SPOOL_PATH=\"/var/mail/%s\"
endif

if SUN
 if SUNPRODIR
 SUNPRO_DIR = /opt/SUNWspro
 else
 SUNPRO_DIR = SUNPRODIR
endif
 if I386
 dtmailpr_CXXFLAGS += -DBIG_ENDIAN
 endif
 if USE_SPRO_V3
 dtmailpr_CXXFLAGS += -noex -USPRO_V2
  if DEBUGTREE
  dtmailpr_CXXFLAGS += -xsb
  endif
 endif
dtmailpr_CXXFLAGS += -L$(SUNPRO_DIR)/lib -xstrconst -Xc -v -DMMAP_NORESERVE \
                    -DSPRO_V2 +p +w
dtmailpr_LDADD += -Bstatic -lC -Bdynamic -lc -Bstatic -ldl -lgen -lm -lw \
		  -lintl -lnsl
endif

dtmailpr_SOURCES = main.C message.C mailbox.C utils.C
