MAINTAINERCLEANFILES = Makefile.in

bin_PROGRAMS = dtmailpr

dtmailpr_CXXFLAGS = -I../include -I../../dtcompat -I../../../. \
		    -I$(srcdir)/lib $(TIRPCINC)

dtmailpr_LDADD = ../libDtMail/libDtMail.a @DTCLIENTLIBS@ \
		 -lXm @LIBXIN@ -lXinerama $(XTOOLLIB) ${X_LIBS} $(TIRPCLIB)

if FREEBSD
dtmailpr_LDADD += -liconv
endif

# FIXME - solaris
#if SOLARIS
# if SUNPRODIR
# SUNPRO_DIR = /opt/SUNWspro
# else
# SUNPRO_DIR = SUNPRODIR
#endif
#if I386
# JET -- i386 is NOT big endian...
#dtmailpr_CXXFLAGS += -DBIG_ENDIAN
#endif
#if USE_SPRO_V3
#dtmailpr_CXXFLAGS += -noex -USPRO_V2
#if DEBUGTREE
#dtmailpr_CXXFLAGS += -xsb
#endif
#endif
#
#dtmailpr_CXXFLAGS += -L$(SUNPRO_DIR)/lib -xstrconst -Xc -v -DMMAP_NORESERVE \
#                    -DSPRO_V2 +p +w
#dtmailpr_LDADD += -Bstatic -lC -Bdynamic -lc -Bstatic -ldl -lgen -lm -lw \
#		  -lintl -lnsl
#endif

dtmailpr_SOURCES = main.C message.C mailbox.C utils.C
