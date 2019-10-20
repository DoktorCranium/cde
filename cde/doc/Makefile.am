MAINTAINERCLEANFILES = Makefile.in

SUBDIRS = util C

if JAPANESE
SUBDIRS += ja_JP.dt-eucJP
endif

if GERMAN
SUBDIRS += de_DE.ISO8859-1
endif

if FRENCH
SUBDIRS += fr_FR.ISO8859-1
endif

if SPANISH
SUBDIRS += es_ES.ISO8859-1
endif

if ITALIAN
SUBDIRS = it_IT.ISO8859-1
endif

all::
	$(RM) -r tmp
	$(MKDIR_P) tmp

clean::
	$(RM) -r tmp
