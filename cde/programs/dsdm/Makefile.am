bin_PROGRAMS = dsdm

dsdm_LDADD = ${X_LIBS}

if SOLARIS
dsdm_LDADD += -ldl
endif

dsdm_SOURCES = dsdm.c proxy.c
