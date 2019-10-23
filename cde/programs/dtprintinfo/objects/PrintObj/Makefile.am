MAINTAINERCLEANFILES = Makefile.am

noinst_LIBRARIES = libPrintObj.a

libPrintObj_a_CXXFLAGS = -I.. -I../.. -I../../util

if AIX
libPrintObj_a_CXXFLAGS = -DHAS_EXCEPTIONS
endif

libPritnObj_a_SOURCES = ParseJobs.C PrintJob.C PrintSubSys.C Queue.C
