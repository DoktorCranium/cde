MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libRFC.a

libRFC_a_CXXFLAGS = -I../Common -I../../include -I../../include/utils \
		    -I$(srcdir)/lib $(TIRPCINC) -DTTLOCK_OFF

if HPUX
libRFC_a_CXXFLAGS += -DUSE_SOCKSTREAM -DBIG_ENDIAN -DDO_ANONYMOUS_MAP \
                        -DNEED_MMAP_WRAPPER -DSENDMAIL_LOCKS \
                        -DMAILGROUP_REQUIRED -DMAIL_SPOOL_PATH=\"/var/mail/%s\"
endif

if AIX
libRFC_a_CXXFLAGS += -DI_HAVE_NO_BOOL -DI_HAVE_SELECT_H -DBIG_ENDIAN \
                        -DSTRCASECMP_NOT_DEFINED -DDO_ANONYMOUS_MAP \
                        -DSENDMAIL_LOCKS -DMAILGROUP_REQUIRED \
                        -DMAIL_SPOOL_PATH=\"/var/spool/mail/%s\"
endif

if SUN
libRFC_a_CXXFLAGS += -DMMAP_NORESERVE -DSPRO_V2
 if I386
 libRFC_a_CXXFLAGS += -DBIG_ENDIAN
 endif
endif

libRFC_a_SOURCES += AliasExpand.C           MIMEBodyPart.C \
		    MIMEPartial.C           RFCBodyPart.C \
		    RFCEnvelope.C           RFCFormat.C \
		    RFCMIME.C               RFCMailBox.C \
		    RFCMailValues.C         RFCMessage.C \
		    RFCTransport.C          SunV3.C \
		    V3BodyPart.C
