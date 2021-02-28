MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libHardCopy.a

AUTOMAKE_OPTIONS = no-dependencies

libHardCopy_a_CXXFLAGS = -DCDE_NEXT -DEXPAND_TEMPLATES -I../../DtMmdb \
			  -I../../DtMmdb/HardCopy -I../../DtMmdb/dti_excs

libHardCopy_a_SOURCES = ../../DtMmdb/HardCopy/FPset.C \
			 ../../DtMmdb/HardCopy/HardCopyFP.C \
			 ../../DtMmdb/HardCopy/autoNumber.C \
			 ../../DtMmdb/HardCopy/autoNumberFP.C

if LINUX
libHardCopy_a_SOURCES += ../../DtMmdb/HardCopy/TemplatesAutoNumber.C
endif

if BSD
libHardCopy_a_SOURCES += ../../DtMmdb/HardCopy/TemplatesAutoNumber.C
endif
