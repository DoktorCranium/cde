# Some common env variables needed by the various modules.  This file
# is included by various Makefile.am files in the dtinfo hierarchy.

# common defines
DTINFO_DEFINES = -DDtinfoClient -DUseWideChars -DInternationalize	\
-DUseMotifXpm -DUseTooltalk -DUseSessionMgmt -DDTSEARCH -DCDE_NEXT	\
-DEXPAND_TEMPLATES

if LINUX
DTINFO_DEFINES += -DNATIVE_EXCEPTIONS
endif

if BSD
DTINFO_DEFINES += -DNATIVE_EXCEPTIONS
endif

if SOLARIS
DTINFO_DEFINES += -DHAS_TERMINATE -DNATIVE_EXCEPTIONS
endif

# where stuff is... This may need to be fixed further if we want to be
# able to support shadow builds someday
OLIAS = $(top_builddir)/programs/dtinfo
OLIASSRC = $(top_srcdir)/programs/dtinfo
WWL = $(OLIAS)/dtinfo/wwl
WWLSRC = $(OLIASSRC)/dtinfo/wwl
MMDB = $(OLIAS)/DtMmdb
MMDBSRC = $(OLIASSRC)/DtMmdb
EXCEPTIONS = $(MMDB)/dti_excs
EXCEPTIONSSRC = $(MMDBSRC)/dti_excs
TOOLS = $(OLIAS)/tools
UAS = $(OLIAS)/dtinfo/src/UAS
UASSRC = $(OLIASSRC)/dtinfo/src/UAS

WWL_INCLUDES = -I$(WWLSRC)/include
WWL_LIBS=$(STATIC) -L$(WWL)/src -lWWL
EXCEPTIONS_INCLUDES = -I$(EXCEPTIONSSRC)
MMDB_INCLUDES = -I$(MMDBSRC)
MMDB_LIBS=$(OLIAS)/mmdb/libMMDB.la
UAS_INCLUDES = -I$(UASSRC)/Base
COMMON_CLASS_INCLUDES = -I$(MMDBSRC)/dti_cc -I$(MMDBSRC)
STYLE_SHEET_INCLUDES = -I$(MMDBSRC)/StyleSheet
TREERES = $(TOOLS)/misc/treeres
MSGSETS = $(TOOLS)/misc/msgsets

DTINFO_INCLUDES = -I.. $(UAS_INCLUDES) $(EXCEPTIONS_INCLUDES)	\
	$(WWL_INCLUDES) $(STYLE_SHEET_INCLUDES)			\
	$(COMMON_CLASS_INCLUDES)
