MAINTAINERCLEANFILES = Makefile.in

include $(top_srcdir)/programs/dtinfo/dtinfo_env.mk

BASE = ../../DtMmdb/StyleSheet
BUILT_SOURCES = Attribute.C AttributeList.C BitVector.C DocParser.C	\
       Element.C Expression.C Feature.C FeatureDefDictionary.C		\
       FeatureSet.C FeatureValue.C PathQualifier.C PathTable.C		\
       Resolver.C ResolverStack.C SSPath.C StyleSheet.C			\
       StyleSheetExceptions.C SymTab.C VariableTable.C defParser.C	\
       defToken.C style.C tokenStyle.C RendererHCV.C

SPECFILES = hardcopy.feature.spec online.feature.spec

BUILT_SOURCES += $(SPECFILES)

if LINUX
BUILT_SOURCES += SSTemplates.C
endif

if BSD
BUILT_SOURCES += SSTemplates.C
endif

$(BUILT_SOURCES):
	$(LN_S) $(BASE)/$@ $@

CLEANFILES = $(BUILT_SOURCES)

noinst_LTLIBRARIES = libStyleSheet.la

libStyleSheet_la_CXXFLAGS = $(DTINFO_DEFINES) -I../../DtMmdb \
                            -I../../DtMmdb/StyleSheet -I../../DtMmdb/dti_excs \
			    -I../../DtMmdb/dti_cc -I$(BASE)

libStyleSheet_la_SOURCES = $(BUILT_SOURCES)
