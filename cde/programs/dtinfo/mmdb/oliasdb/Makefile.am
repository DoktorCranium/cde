MAINTAINERCLEANFILES = Makefile.in

noinst_LIBRARIES = liboliasdb.a

AUTOMAKE_OPTIONS = no-dependencies

liboliasdb_a_CXXFLAGS = -DNO_DB_LOCK -DCDE_NEXT -I../../DtMmdb \
			 -I../../DtMmdb/misc -I../../DtMmdb/dti_excs \
			 -I../../DtMmdb/dti_cc -I../.. -I../../DtMmdb/oliasdb

liboliasdb_a_SOURCES = ../../DtMmdb/oliasdb/asciiIn_filters.C \
		  	../../DtMmdb/oliasdb/collectionIterator.C \
			../../DtMmdb/oliasdb/dlp_hd.C \
	 		../../DtMmdb/oliasdb/dlp_test.C \
			../../DtMmdb/oliasdb/doc_hd.C \
	 		../../DtMmdb/oliasdb/doc_test.C \
			../../DtMmdb/oliasdb/graphic_hd.C \
	     		../../DtMmdb/oliasdb/graphic_test.C \
			../../DtMmdb/oliasdb/loc_test.C \
	   		../../DtMmdb/oliasdb/locator_hd.C \
			../../DtMmdb/oliasdb/mark.C \
       			../../DtMmdb/oliasdb/mark_base.C \
			../../DtMmdb/oliasdb/mark_test.C \
	    		../../DtMmdb/oliasdb/mmdb.C \
			../../DtMmdb/oliasdb/node_hd.C \
	  		../../DtMmdb/oliasdb/node_test.C \
			../../DtMmdb/oliasdb/olias_funcs.C \
	      		../../DtMmdb/oliasdb/olias_test.C \
			../../DtMmdb/oliasdb/stylesheet_hd.C \
			../../DtMmdb/oliasdb/stylesheet_test.C \
			../../DtMmdb/oliasdb/toc_hd.C \
	 		../../DtMmdb/oliasdb/toc_test.C \
			../../DtMmdb/oliasdb/user_base.C
