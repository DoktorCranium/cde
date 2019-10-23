MAINTAINERCLEANFILES = Makefile.in


noinst_LTLIBRARIES = libschema.la

libschema_la_CXXFLAGS = -DC_API -DPORTABLE_DB -I.. -I../dti_excs -I../misc

libschema_la_SOURCES = desc.C store_desc.C object_dict.C stored_object_desc.C \
		       index_desc.C inv_desc.C agent_desc.C container_desc.C \
		       sheet.C token.C
