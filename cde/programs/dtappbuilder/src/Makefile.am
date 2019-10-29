MAINTAINERCLEANFILES = Makefile.in

if SOLARIS
.NO_PARALLEL:
endif

SUBDIRS = libAButil libABobj libABobjXm libABil abmf ab

dtbuilder::
        @case '${MFLAGS}' in *[ik]*) set +e;; esac; \
        for i in libAButil libABobj libABobjXm libABil ab ;\
        do \
        (cd $$i ; echo "making" dtbuilder "in $(CURRENT_DIR)/$$i..."; \
        $(MAKE) $(MFLAGS) 'CDEBUGFLAGS=$(CDEBUGFLAGS)' 'FIRST_LIBPATH=$(FIRST_LIBPATH)' 'FIRST_INCLUDES=$(FIRST_INCLUDES)' dtbuilder); \
        done

dtcodegen::
        @case '${MFLAGS}' in *[ik]*) set +e;; esac; \
        for i in libAButil libABobj libABobjXm libABil abmf ;\
        do \
        (cd $$i ; echo "making" dtcodegen "in $(CURRENT_DIR)/$$i..."; \
        $(MAKE) $(MFLAGS) 'CDEBUGFLAGS=$(CDEBUGFLAGS)' 'FIRST_LIBPATH=$(FIRST_LIBPATH)' 'FIRST_INCLUDES=$(FIRST_INCLUDES)' dtcodegen); \
        done

bin_PROGRAMS = dtcodegen dtbuilder

clean::
        $(RM) -rf include
