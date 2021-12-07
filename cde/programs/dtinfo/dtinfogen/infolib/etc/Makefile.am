MAINTAINERCLEANFILES = Makefile.in

# get our env variables
include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

# symlinks used by dtinfogen when run from the build tree
BUILT_SOURCES = hardcopy.feature.spec online.feature.spec		\
	mmdb.infolib.spec dtsr C.ISO-8859-1 C


PROGRAMSRC = $(top_builddir)/programs

dtsr:
	$(LN_S) $(top_builddir)/programs/dtsr $@

hardcopy.feature.spec:
	$(LN_S) $(MMDB)/StyleSheet/$@ $@

online.feature.spec:
	$(LN_S) $(MMDB)/StyleSheet/$@ $@

mmdb.infolib.spec:
	$(LN_S) $(MMDB)/oliasdb/$@ $@

C.ISO-8859-1:
	$(LN_S) $(PROGRAMSRC)/localized/C $@

C:
	$(LN_S) C.ISO-8859-1 $@

if GERMAN
BUILT_SOURCES += de_DE.UTF-8
de_DE.UTF-8:
	$(LN_S) $(PROGRAMSRC)/localized/de_DE.UTF-8 $@
endif

if SPANISH
BUILT_SOURCES += es_ES.UTF-8
es_ES.UTF-8:
	$(LN_S) $(PROGRAMSRC)/localized/es_ES.UTF-8 $@
endif

if FRENCH
BUILT_SOURCES += fr_FR.UTF-8
fr_FR.UTF-8:
	$(LN_S) $(PROGRAMSRC)/localized/fr_FR.UTF-8 $@
endif

if ITALIAN
BUILT_SOURCES += it_IT.UTF-8
it_IT.UTF-8:
	$(LN_S) $(PROGRAMSRC)/localized/it_IT.UTF-8 $@
endif

# NOT CURRENTLY
# BUILT_SOURCES += ja_JP.EUC-JP
#ja_JP.EUC-JP:
#	$(LN_S) $(PROGRAMSRC)/localized/ja_JP.EUC-JP $@

CLEANFILES = $(BUILT_SOURCES)

# always using DtSearch, so this is the search engine we use
SEARCH_SRCS = AusText.C AusTextStorage.C

# at no time have we ever regenerated the lexer files.  Someday we
# might need/want to, so keep that in mind.  From Imakefile:
#
#LexTarget (gr_type,graphics_task)
#LexTarget (ReplaceIdIdref,nodedata)
#LexTarget (ContentType,ol_data)
#LexTarget (RemoteId,remote)
#YaccTarget(OL_DataExpr,ol_data)

NORMAL_SRCS = AttributeData.C AttributeList.C AttributeRec.C		\
	BookCaseDB.C BookTasks.C BTCollectable.C ConcatTask.C		\
	Content.C OL_DataExpr.C ContentType.C DataBase.C DataTask.C	\
	DataRepository.C Dispatch.C EntityList.C Expression.C		\
	ExprList.C FirstOf.C FlexBuffer.C GenericId.C gr_type.C		\
	GraphicsTask.C Handler.C LcfTask.C NodeData.C NodeTask.C	\
	OL-Data.C OLAF.C ReplaceIdIdref.C SGMLDefn.C SGMLName.C		\
	SearchEng.C SearchPath.C SearchStorage.C StringList.C		\
	StyleTask.C StyleTaskDB.C StyleValidate.C TOCTask.C Task.C	\
	Token.C lex.C $(SEARCH_SRCS)

noinst_LTLIBRARIES = libOLAFParse.la
libOLAFParse_la_CXXFLAGS = $(DTINFO_DEFINES) $(DTINFO_INCLUDES)
libOLAFParse_la_SOURCES = $(NORMAL_SRCS)

if LINUX
TEMPLATE_SRC = TKTemplate.C
endif

if BSD
TEMPLATE_SRC = TKTemplate.C
endif

bin_SCRIPTS = dtinfogen

# helpers

infolibdir = $(CDE_INSTALLATION_TOP)/infolib/etc
infolib_PROGRAMS = NodeParser NCFGen MixedGen StyleUpdate dtinfogen_worker

NodeParser_CXXFLAGS = $(EXCEPTIONS_INCLUDES) $(DTINFO_DEFINES)	\
	$(DTINFO_INCLUDES)
NodeParser_LDADD = libOLAFParse.la $(MMDB_LIBS)
NodeParser_SOURCES = NodeParser.C $(TEMPLATE_SRC)

NCFGen_CXXFLAGS = $(EXCEPTIONS_INCLUDES) $(DTINFO_DEFINES)	\
	$(DTINFO_INCLUDES)
NCFGen_LDADD = libOLAFParse.la $(MMDB_LIBS) $(DTCLIENTLIBS) $(XTOOLLIB)
NCFGen_SOURCES = NCFGen.C $(TEMPLATE_SRC)

MixedGen_CXXFLAGS = $(EXCEPTIONS_INCLUDES) $(DTINFO_DEFINES)	\
	$(DTINFO_INCLUDES)
MixedGen_LDADD = libOLAFParse.la $(MMDB_LIBS) $(DTCLIENTLIBS) $(XTOOLLIB)
MixedGen_SOURCES = MixedGen.C RemoteId.C $(TEMPLATE_SRC)

StyleUpdate_CXXFLAGS = $(EXCEPTIONS_INCLUDES) $(DTINFO_DEFINES)	\
	$(DTINFO_INCLUDES)
StyleUpdate_LDADD = libOLAFParse.la $(MMDB_LIBS) $(DTCLIENTLIBS) $(XTOOLLIB)
StyleUpdate_SOURCES = StyleUpdate.C $(TEMPLATE_SRC)

dtinfogen_worker_CFLAGS = $(EXCEPTIONS_INCLUDES) $(DTINFO_DEFINES)	\
	$(DTINFO_INCLUDES)
dtinfogen_worker_LDADD = $(DTCLIENTLIBS) $(XTOOLLIB)
dtinfogen_worker_SOURCES = dtinfogen_worker.c



