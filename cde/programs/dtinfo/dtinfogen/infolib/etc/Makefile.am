MAINTAINERCLEANFILES = Makefile.in

dist_bin_SCRIPTS = dtinfogen

libexec_PROGRAMS = MixedGen \
		   NCFGen \
		   NodeParser \
		   StyleUpdate \
		   dtinfogen_worker

AM_CXXFLAGS = -DEXPAND_TEMPLATES -DDtinfoClient -I$(top_builddir)/lib/DtMmdb
AM_LDFLAGS = $(XTOOLLIB) $(LIBMMDB) $(DTCLIENTLIBS)

OLAFPARSESRC = AttributeData.C \
	       AttributeList.C \
	       AttributeRec.C \
	       AusText.C \
	       AusTextStorage.C \
	       BookCaseDB.C \
	       BookTasks.C \
	       BTCollectable.C \
	       ConcatTask.C \
	       Content.C \
	       OL_DataExpr.C \
	       ContentType.C \
	       DataBase.C \
	       DataTask.C \
	       DataRepository.C \
	       Dispatch.C \
	       EntityList.C \
	       Expression.C \
	       ExprList.C \
	       FirstOf.C \
	       FlexBuffer.C \
	       GenericId.C \
	       gr_type.C \
	       GraphicsTask.C \
	       Handler.C \
	       LcfTask.C \
	       NodeData.C \
	       NodeTask.C \
	       OL_Data.C \
	       OLAF.C \
	       ReplaceIdIdref.C \
	       SGMLDefn.C \
	       SGMLName.C \
	       SearchEng.C \
	       SearchPath.C \
	       SearchStorage.C \
	       StringList.C \
	       StyleTask.C \
	       StyleTaskDB.C \
	       StyleValidate.C \
	       TOCTask.C \
	       Task.C \
	       Token.C \
	       lex.ll

NodeParser_SOURCES = NodeParser.C $(OLAFPARSESRC)
NCFGen_SOURCES = NCFGen.C $(OLAFPARSESRC)
MixedGen_SOURCES = MixedGen.C RemoteId.C $(OLAFPARSESRC)
StyleUpdate_SOURCES = StyleUpdate.C $(OLAFPARSESRC)

AM_LFLAGS = -Cf -L -8 -s
AM_YFLAGS = -d

CLEANFILES = OL_DataExpr.C \
	     OL_DataExpr.tab.h \
	     ContentType.C \
	     ReplaceIdIdref.C \
	     RemoteId.C \
	     gr_type.C

OL_DataExpr.C: OL_DataExpr.yy
	$(YACC) $(AM_YFLAGS) -p ol_data -b OL_DataExpr $<
	mv OL_DataExpr.tab.c $@

ContentType.C: ContentType.ll OL_DataExpr.C
	$(LEX) $(AM_LFLAGS) -P ol_data -o $@ $<

ReplaceIdIdref.C: ReplaceIdIdref.ll
	$(LEX) $(AM_LFLAGS) -P nodedata -o $@ $<

RemoteId.C: RemoteId.ll
	$(LEX) $(AM_LFLAGS) -P remote -o $@ $<

gr_type.C: gr_type.ll
	$(LEX) $(AM_LFLAGS) -P graphics_task -o $@ $<
