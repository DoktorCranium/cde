MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libCommon.a

libCommon_a_CXXFLAGS = -I../../include -I../../include/utils -I$(srcdir)/lib \
		       $(TIRPCINC) -DDL_NOT_DYNAMIC

if COMMENT
These are here in case we want to build as a shared library
DYNLIB_SRCS = DlDynamicLib.C
DYNLIB_DEFINES = -DDL_DYNAMIC_LIBS
endif

if SUN
libCommon_a_CXXFLAGS += -DMMAP_NORESERVE -DSPRO_V2
 if I386
 libCommon_a_CXXFLAGS += -DBIG_ENDIAN
 endif
endif

if HPUX
libCommon_a_CXXFLAGS += -DUSE_SOCKSTREAM -DBIG_ENDIAN -DDO_ANONYMOUS_MAP \
			-DNEED_MMAP_WRAPPER -DSENDMAIL_LOCKS \
			-DMAILGROUP_REQUIRED -DMAIL_SPOOL_PATH=\"/var/mail/%s\"
endif

if AIX
libCommon_a_CXXFLAGS += -DI_HAVE_NO_BOOL -DI_HAVE_SELECT_H -DBIG_ENDIAN \
			-DSTRCASECMP_NOT_DEFINED -DDO_ANONYMOUS_MAP \
			-DSENDMAIL_LOCKS -DMAILGROUP_REQUIRED \
			-DMAIL_SPOOL_PATH=\"/var/spool/mail/%s\"
endif

libCommon_a_SOURCES = APOPServer.C \
		      AUTOServer.C \
		      Buffer.C \
		      DetermineFileLocality.C \
		      DtMailBodyPart.C \
		      DtMailEnvelope.C \
		      DtMailError.C \
		      DtMailMailBox.C \
		      DtMailMessage.C \
		      DtMailRc.C \
		      DtMailServer.C \
		      DtMailTransport.C \
		      DtMailValuesBuiltin.C \
		      DtMailXtProc.C \
		      DtVirtArray.C \
		      DynamicLib.C \
		      FileShare.C \
		      HashTable.C \
		      IMAPServer.C \
		      IO.C \
		      LanguagePortability.C \
		      ObjectKey.C \
		      NotDynamic.C
		      POP2Server.C \
		      POP3Server.C \
		      Process.C \
		      Session.C \
		      Threads.C \
		      md5.C \
		      str_utils.C
