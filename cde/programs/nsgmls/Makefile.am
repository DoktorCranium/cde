CLEANFILES = $(GENERATED_SRCS)

bin_PROGRAMS = nsgmls

if LINUX
nsgmls_CXXFLAGS = -DSP_VOLATILE=volatile -DSP_CONST=const -DSP_ANSI_CLASS_INST \
		  -DSP_HAVE_LOCALE -DSP_MULTI_BYTE -DSP_MANUAL_INST \
		  -fno-implicit-templates
endif

if BSD
nsgmls_CXXFLAGS = -DSP_VOLATILE=volatile -DSP_CONST=const -DSP_ANSI_CLASS_INST \
                  -DSP_HAVE_LOCALE -DSP_MULTI_BYTE -DSP_MANUAL_INST
endif

if SOLARIS
nsgmls_CXXFLAGS = -DSP_VOLATILE= -DSP_CONST= -DSP_HAVE_LOCALE \
		  -DSP_MULTI_BYTE -DSP_ANSI_CLASS_INST
endif

if HPUX
nsgmls_CXXFLAGS = +a1 -z +T -DSP_VOLATILE= -DSP_CONST= -DSP_HAVE_LOCALE \
		  -DSP_MULTI_BYTE -DSP_ANSI_CLASS_INST -I/opt/CC/include/CC
endif

if AIX
nsgmls_CXXFLAGS = -DSP_VOLATILE=volatile -DSP_CONST=const \
		  -DSP_HAVE_LOCALE -DSP_MULTI_BYTE -DSP_MANUAL_INST
endif

SUFFIXES: .m4
.m4.C:
	rm -f $@
	$(M4) instmac.m4 $< >$@

GENERATED_SRCS = app_inst.C                   \
                 arc_inst.C                   \
                 entmgr_inst.C                \
                 nsgmls_inst.C                \
                 parser_inst.C                \
                 xentmgr_inst.C

nsgmls_SOURCES = Allocator.C                  \
		 ArcEngine.C                  \
		 Attribute.C                  \
		 CharsetDecl.C                \
		 CharsetInfo.C                \
		 CharsetRegistry.C            \
		 CmdLineApp.C                 \
		 CodingSystem.C               \
		 ConsoleOutput.C              \
		 ContentState.C               \
		 ContentToken.C               \
		 DescriptorManager.C          \
		 Dtd.C                        \
		 EUCJPCodingSystem.C          \
		 ElementType.C                \
		 Entity.C                     \
		 EntityApp.C                  \
		 EntityCatalog.C              \
		 EntityDecl.C                 \
		 EntityManager.C              \
		 ErrnoMessageArg.C            \
		 ErrorCountEventHandler.C     \
		 Event.C                      \
		 EventGenerator.C             \
		 ExtendEntityManager.C        \
		 ExternalId.C                 \
		 Fixed2CodingSystem.C         \
		 GenericEventHandler.C        \
		 Group.C                      \
		 Hash.C                       \
		 IListBase.C                  \
		 ISO8859InputCodingSystem.C   \
		 Id.C                         \
		 IdentityCodingSystem.C       \
		 InputSource.C                \
		 InternalInputSource.C        \
		 Link.C                       \
		 LinkProcess.C                \
		 LiteralStorage.C             \
		 Location.C                   \
		 Lpd.C                        \
		 Markup.C                     \
		 Message.C                    \
		 MessageArg.C                 \
		 MessageEventHandler.C        \
		 MessageReporter.C            \
		 MessageTable.C               \
		 ModeInfo.C                   \
		 Notation.C                   \
		 NumericCharRefOrigin.C       \
		 OffsetOrderedList.C          \
		 OpenElement.C                \
		 OutputCharStream.C           \
		 OutputState.C                \
		 Parser.C                     \
		 Param.C                      \
		 ParserApp.C                  \
		 ParserEventGeneratorKit.C    \
		 ParserOptions.C              \
		 ParserState.C                \
		 Partition.C                  \
		 PosixStorage.C               \
		 RastEventHandler.C           \
		 Recognizer.C                 \
		 RewindStorageObject.C        \
		 SGMLApplication.C            \
		 SJISCodingSystem.C           \
		 SOEntityCatalog.C            \
		 Sd.C                         \
		 SdText.C                     \
		 SearchResultMessageArg.C     \
		 SgmlParser.C                 \
		 SgmlsEventHandler.C          \
		 ShortReferenceMap.C          \
		 StdioStorage.C               \
		 StorageManager.C             \
		 StringSet.C                  \
		 StringVectorMessageArg.C     \
		 Syntax.C                     \
		 Text.C                       \
		 TokenMessageArg.C            \
		 TranslateInputCodingSystem.C \
		 TrieBuilder.C                \
		 TypeId.C                     \
		 URLStorage.C                 \
		 UTF8CodingSystem.C           \
		 Undo.C                       \
		 UnicodeCodingSystem.C        \
		 UnivCharsetDesc.C            \
		 assert.C                     \
		 nsgmls.C                     \
		 parseAttribute.C             \
		 parseCommon.C                \
		 parseDecl.C                  \
		 parseInstance.C              \
		 parseMode.C                  \
		 parseParam.C                 \
		 parseSd.C                    \
		 splib.C		      \
		 $(GENERATED_SRCS)
