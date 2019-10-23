MAINTAINERCLEANFILES = Makefile.in

# Since dtcodegen depends on libXm, libDtWidget, and other libs,
# it will not be built properly during make includes.
# So, when 'all' is made in this directory, redo make includes/depend.
# An imake hack no doubt, but it is necessary for now.


all:: generated_includes abdepend

include "../ab.tmpl"
include "../ab.rules"

bin_PROGRAMS = dtbuilder

if BSD
UTILLIB = -lutil
endif

dtbuilder_LDADD = ../libABil/libABil.a  ../libABobjXm/libABobjXm.a  \
        ../libABobj/libABobj.a ../libAButil/libAButil.a \
        $(LIBWIDGET) $(LIBTERM) $(LIBHELP) $(LIBSVC) \
        $(LIBTT) -lUil $(MRESOURCELIB) -lXm $(XTOOLLIB) ${X_LIB} \
        $(UTILLIB) -lm

dtbuilder_CFLAGS = -DPIXMAP_WORKAROUND -I$(ABINCLUDES)

dtbuilder_SOURCES =
