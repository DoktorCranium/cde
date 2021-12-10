infolibdir = ${prefix}/infolib

MAINTAINERCLEANFILES = Makefile.in

noinst_LTLIBRARIES = liboliasdb.la

liboliasdb_la_CXXFLAGS = -DC_API -DNO_DB_LOCK -DCDE_NEXT -I.. -I../misc \
			 -I../dti_excs -I../dti_cc -I../..

liboliasdb_la_SOURCES = asciiIn_filters.C       collectionIterator.C \
			dlp_hd.C                dlp_test.C \
			doc_hd.C                doc_test.C \
			graphic_hd.C            graphic_test.C \
			loc_test.C              locator_hd.C \
			mark.C                  mark_base.C \
			mark_test.C             mmdb.C \
			node_hd.C               node_test.C \
			olias_funcs.C           olias_test.C \
			stylesheet_hd.C         stylesheet_test.C \
			toc_hd.C                toc_test.C \
			user_base.C		c_api_book.C \
			c_api_book_test.C \
			c_api_bookcase.C        c_api_bookcase_test.C \
			c_api_common.C          \
			c_api_dlp.C             c_api_dlp_test.C \
			c_api_graphic.C         c_api_graphic_test.C \
			c_api_infolib.C         c_api_infolib_test.C \
			c_api_locator.C         c_api_locator_test.C \
			c_api_pure_virtual.C    \
			c_api_section.C         c_api_section_test.C \
			c_api_stylesheet.C      c_api_stylesheet_test.C \
			c_api_toc.C             c_api_toc_test.C
