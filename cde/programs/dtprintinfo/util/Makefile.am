MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = libUtil.a

libUtil_a_CXXFLAGS = -I. -DKORNSHELL=\"$(KSH)\"

if AIX
libUtil_a_CXXFLAGS = -DHAS_EXCEPTIONS
endif

libUtil_a_SOURCES = Invoke.C Process.C
