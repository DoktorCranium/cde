# Some common env variables needed by the various modules

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

# where stuff is
OLIAS = $(top_srcdir)/programs/dtinfo
CONTROL=$(OLIAS)/control
LIBRARY = $(OLIAS)/library
WWL = $(OLIAS)/dtinfo/wwl
MMDB = $(OLIAS)/DtMmdb
EXCEPTIONS = $(MMDB)/dti_excs
TOOLS = $(OLIAS)/tools
UAS = $(OLIAS)/dtinfo/src/UAS

WWL_INCLUDES = -I$(WWL)/include
WWL_LIBS=$(STATIC) -L$(WWL)/src -lWWL
EXCEPTIONS_INCLUDES = -I$(EXCEPTIONS)
MMDB_INCLUDES = -I$(MMDB)
MMDB_LIBS=$(OLIAS)/mmdb/libMMDB.la
UAS_INCLUDES = -I$(UAS)/Base
COMMON_CLASS_INCLUDES = -I$(MMDB)/dti_cc -I$(MMDB)
COMMON_CLASS_LIBDIR = $(STATIC) -L$(MMDB)/dti_cc
STYLE_SHEET_INCLUDES = -I$(MMDB)/StyleSheet
TREERES = $(TOOLS)/misc/treeres
MSGSETS = $(TOOLS)/misc/msgsets

DTINFO_INCLUDES = -I.. $(UAS_INCLUDES) $(EXCEPTIONS_INCLUDES)	\
	$(WWL_INCLUDES) $(TREE_INCLUDES) $(STYLE_SHEET_INCLUDES) \
	$(COMMON_CLASS_INCLUDES)
