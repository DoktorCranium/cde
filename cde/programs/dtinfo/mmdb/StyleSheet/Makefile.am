MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libStyleSheet.a

AUTOMAKE_OPTIONS = no-dependencies

libStyleSheet_a_CXXFLAGS = -DEXPAND_TEMPLATES -DCDE_NEXT -I../../DtMmdb \
                            -I../../DtMmdb/StyleSheet -I../../DtMmdb/dti_excs \
			    -I../../DtMmdb/dti_cc

libStyleSheet_a_SOURCES = ../../DtMmdb/StyleSheet/Attribute.C \
		       	   ../../DtMmdb/StyleSheet/AttributeList.C \
		   	   ../../DtMmdb/StyleSheet/BitVector.C \
			   ../../DtMmdb/StyleSheet/DocParser.C \
		       	   ../../DtMmdb/StyleSheet/Element.C \
	     		   ../../DtMmdb/StyleSheet/Expression.C \
        		   ../../DtMmdb/StyleSheet/Feature.C \
		     	   ../../DtMmdb/StyleSheet/FeatureDefDictionary.C \
			   ../../DtMmdb/StyleSheet/FeatureSet.C \
			   ../../DtMmdb/StyleSheet/FeatureValue.C \
			   ../../DtMmdb/StyleSheet/PathQualifier.C \
		   	   ../../DtMmdb/StyleSheet/PathTable.C \
			   ../../DtMmdb/StyleSheet/Resolver.C \
		      	   ../../DtMmdb/StyleSheet/ResolverStack.C \
		   	   ../../DtMmdb/StyleSheet/SSPath.C \
			   ../../DtMmdb/StyleSheet/StyleSheet.C \
			   ../../DtMmdb/StyleSheet/StyleSheetExceptions.C \
			   ../../DtMmdb/StyleSheet/SymTab.C \
			   ../../DtMmdb/StyleSheet/VariableTable.C \
			   ../../DtMmdb/StyleSheet/defParser.C \
	       		   ../../DtMmdb/StyleSheet/defToken.C \
			   ../../DtMmdb/StyleSheet/style.C \
		   	   ../../DtMmdb/StyleSheet/tokenStyle.C \
			   ../../DtMmdb/StyleSheet/RendererHCV.C

if LINUX
libStyleSheet_a_SOURCES += ../../DtMmdb/StyleSheet/SSTemplates.C
endif

if BSD
libStyleSheet_a_SOURCES += ../../DtMmdb/StyleSheet/SSTemplates.C
endif
