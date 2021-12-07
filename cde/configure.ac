AC_INIT([cde-desktop], [2.4.0a], [https://sourceforge.net/projects/cdesktopenv])
AC_CONFIG_HEADERS([include/autotools_config.h])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE([foreign subdir-objects])

dnl These must be up here for the compiler search list to actually work
AC_PROG_CC([cc gcc clang])
AC_PROG_CXX([c++ g++ clang++])

LT_INIT
AC_PREFIX_DEFAULT(/usr/dt)

AC_ENABLE_STATIC([no])

PKG_PROG_PKG_CONFIG

dnl todo: determine what version of autoconf we depend on
dnl AC_PREREQ()

AC_CANONICAL_HOST
AC_CANONICAL_BUILD

dnl global CDE versioning

CDE_VERSION_MAJOR=2
CDE_VERSION_MINOR=3
CDE_VERSION_MICRO=0

AC_SUBST(CDE_VERSION_MAJOR)
AC_SUBST(CDE_VERSION_MINOR)
AC_SUBST(CDE_VERSION_MICRO)

dnl SOURCE_DEFINES - start with CDE project default
SOURCE_CPP_DEFINES="-DANSICPP -DMULTIBYTE -DNLS16"

dnl CPP_COMPILER_FLAGS - CPP/C/C++ compiler flags
CPP_COMPILER_FLAGS=""

dnl CXX_COMPILER_FLAGS - C++ compiler flags
CXX_COMPILER_FLAGS=""

dnl C_COMPILER_FLAGS - C compiler flags
C_COMPILER_FLAGS=""


dnl These OS version checks are deprecated and should be replaced with
dnl feature checks where appropriate

build_linux=no
bsd=no
build_freebsd=no
build_openbsd=no
build_netbsd=no
build_solaris=no
build_hpux=no
build_aix=no

dnl For now, we need to fake the OSMAJORVERSION, OSMINORVERSION.  In Linux
dnl this never mattered anyway as it was always the kernel version.  We will
dnl choose defaults here.  These need to be removed in the code in favor
dnl of actual checks for functionality. So this should be considered
dnl temporary.

OSMAJORVERSION=4
OSMINORVERSION=15

dnl locations of libs/includes if not in 'standard' places like on
dnl linux (/usr/...).  We build these up based on where X11 is, and
dnl other things as we go along.
EXTRA_LIBS=""
EXTRA_INCS=""

case "${host_os}" in
	linux*)
		build_linux=yes
                OSMAJORVERSION=4
                OSMINORVERSION=15
                SOURCE_CPP_DEFINES="${SOURCE_CPP_DEFINES} -D_POSIX_SOURCE \
-D_DEFAULT_SOURCE -D_BSD_SOURCE -D_SVID_SOURCE"
                 ;;
	freebsd*)
		build_freebsd=yes
		bsd=yes
                OSMAJORVERSION=10
                OSMINORVERSION=0
                # fbsd needs the iconv plug to avoid conflict with libiconv
                # and libc implementations.  We prefer the libc impl.
                SOURCE_CPP_DEFINES="${SOURCE_CPP_DEFINES} -DLIBICONV_PLUG"
		;;
	openbsd*)
		build_openbsd=yes
		bsd=yes
                OSMAJORVERSION=6
                OSMINORVERSION=2
		;;
	netbsd*)
		build_netbsd=yes
		bsd=yes
                OSMAJORVERSION=8
                OSMINORVERSION=0
		;;
	solaris*|sun*)
		build_solaris=yes
                OSMAJORVERSION=5
                OSMINORVERSION=10
		;;
	aix*)
		build_aix=yes
		;;
	hpux*)
		build_hpux=yes
		;;
esac

AM_CONDITIONAL([LINUX], [test "$build_linux" = "yes"])
AM_CONDITIONAL([BSD], [test "$bsd" = "yes"])
AM_CONDITIONAL([FREEBSD], [test "$build_freebsd" = "yes"])
AM_CONDITIONAL([OPENBSD], [test "$build_openbsd" = "yes"])
AM_CONDITIONAL([NETBSD], [test "$build_netbsd" = "yes"])
AM_CONDITIONAL([SOLARIS], [test "$build_solaris" = "yes"])
AM_CONDITIONAL([AIX], [test "$build_aix" = "yes"])
AM_CONDITIONAL([HPUX], [test "$build_hpux" = "yes"])

dnl Add osmajor/minor version to cppflags.
OSVERSION="-DOSMAJORVERSION=$OSMAJORVERSION -DOSMINORVERSION=$OSMINORVERSION"

dnl set CSRG_BASED define for the BSD's.
if test "$bsd" = "yes"
then
        SOURCE_CPP_DEFINES="${SOURCE_CPP_DEFINES} -DCSRG_BASED"
fi

is_x86_64=no
is_i386=no
is_sparc=no
is_mips=no
is_arm=no
is_ppc=no
is_riscv=no
is_aarch64=no

case "${host_cpu}" in
	i[3456]86*)
		is_i386=yes
		;;
	x86_64* | amd64*)
		is_x86_64=yes
		;;
	arm*)
		is_arm=yes
		;;
	mips*)
		is_mips=yes
		;;
	sparc*)
		is_sparc=yes
		;;
	ppc* | powerpc*)
		is_ppc=yes
		;;
	riscv*)
		is_riscv=yes
		;;
	aarch64*)
		is_aarch64=yes
		;;
esac

AM_CONDITIONAL([I386], [test "$is_i386" = yes])
AM_CONDITIONAL([X86_64], [test "$is_x86_64" = yes])
AM_CONDITIONAL([ARM], [test "$is_arm" = yes])
AM_CONDITIONAL([SPARC], [test "$is_sparc" = yes])
AM_CONDITIONAL([MIPS], [test "is_mips" = yes])
AM_CONDITIONAL([PPC], [test "is_ppc" = yes])
AM_CONDITIONAL([RISCV], [test "is_riscv" = yes])
AM_CONDITIONAL([AARCH64], [test "is_aarch64" = yes])

dnl our main libraries
dnl we use single quotes so that $top_buildir is evaluated in the makefiles,
dnl not here.
AC_SUBST(LIBTT, '$(top_builddir)/lib/tt/lib/libtt.la')
AC_SUBST(LIBXIN, '$(top_builddir)/lib/DtXinerama/libDtXinerama.la')
AC_SUBST(LIBWIDGET, '$(top_builddir)/lib/DtWidget/libDtWidget.la')
AC_SUBST(LIBTERM, '$(top_builddir)/lib/DtTerm/libDtTerm.la')
AC_SUBST(LIBSVC, '$(top_builddir)/lib/DtSvc/libDtSvc.la')
AC_SUBST(LIBSEARCH, '$(top_builddir)/lib/DtSearch/libDtSearch.la')
AC_SUBST(LIBPRINT, '$(top_builddir)/lib/DtPrint/libDtPrint.la')
AC_SUBST(LIBMRM, '$(top_builddir)/lib/DtMrm/libDtMrm.la')
AC_SUBST(LIBMMDB, '$(top_builddir)/programs/dtinfo/libDtMmdb.la')
AC_SUBST(LIBHELP, '$(top_builddir)/lib/DtHelp/libDtHelp.la')
AC_SUBST(LIBCSA, '$(top_builddir)/lib/csa/libcsa.la')

AC_SUBST(LIBPAMSVC, '$(top_builddir)/lib/DtPamSvc/libDtPamSvc.la')

dnl we do not inclue the DtPamSvc library here as it is not needed
dnl for everything.

AC_SUBST(DTCLIENTLIBS, '$(LIBPRINT) $(LIBHELP) $(LIBWIDGET) $(LIBSVC) \
$(LIBTT) $(LIBXIN)')

dnl set up come convenience replacements for global include dirs
AC_SUBST(DT_INCDIR, '-I$(top_builddir)/include/Dt')
AC_SUBST(DTI_INCDIR, '-I$(top_builddir)/include/DtI')
AC_SUBST(TT_INCDIR, '-I$(top_builddir)/include/Tt')
AC_SUBST(XM_INCDIR, '-I$(top_builddir)/include/Xm')
AC_SUBST(CSA_INCDIR, '-I$(top_builddir)/include/csa')
AC_SUBST(SPC_INCDIR, '-I$(top_builddir)/include/SPC')

dnl language enables

AC_ARG_ENABLE([german],
        AS_HELP_STRING([--enable-german], [Build German locale (default=no)]),
        [enable_de="yes"], [enable_de=""]
)
AM_CONDITIONAL([GERMAN], [test -n "$enable_de"])

AC_ARG_ENABLE([italian],
        AS_HELP_STRING([--enable-italian], [Build Italian locale (default=no)]),
        [enable_it="yes"], [enable_it=""]
)
AM_CONDITIONAL([ITALIAN], [test -n "$enable_it"])

AC_ARG_ENABLE([french],
        AS_HELP_STRING([--enable-french], [Build French locale (default=no)]),
        [enable_fr="yes"], [enable_fr=""]
)
AM_CONDITIONAL([FRENCH], [test -n "$enable_fr"])

AC_ARG_ENABLE([spanish],
        AS_HELP_STRING([--enable-spanish], [Build Spanish locale (default=no)]),
        [enable_es="yes"], [enable_es=""]
)
AM_CONDITIONAL([SPANISH], [test -n "$enable_es"])

dnl hmmm...
RM="rm -f"
AC_SUBST(RM)
CP="cp -f"
AC_SUBST(CP)

dnl these should be configurable someday...
CDE_INSTALLATION_TOP="$ac_default_prefix"
CDE_LOGFILES_TOP=/var/dt
CDE_CONFIGURATION_TOP=/etc/dt
CDE_USER_TOP=.dt

AC_SUBST(CDE_INSTALLATION_TOP)
AC_SUBST(CDE_CONFIGURATION_TOP)
AC_SUBST(CDE_LOGFILES_TOP)
AC_SUBST(CDE_USER_TOP)

dnl This variable will contain a list of programs that were not found,
dnl but are required to build CDE.  At the end, if the variable is
dnl non-empty, an error message will be printed, listing the missing
dnl programs.  We don't bother with the simple expected commands like
dnl ln, cp, etc...

MISSING_PROGS=""

AC_PROG_CPP

dnl we need a real preprocessor, not gcc -E.  We will call it GENCPP.
dnl We will go with BSD's tradcpp here...  This is used for
dnl pre-processing during building of CDE - in the way imake used to
dnl do.  This is not a replacement for cpp, used at runtime by
dnl software such as tt_type_comp.
AC_SUBST(GENCPP, '$(top_builddir)/util/tradcpp/tradcpp')

AM_PROG_LIBTOOL

dnl make sure it's installed
AC_PROG_YACC
if test -z "$ac_cv_prog_YACC"; then
   MISSING_PROGS="[bison or byacc] ${MISSING_PROGS}"
fi

AM_PROG_LEX
if test -z "$ac_cv_prog_LEX"; then
   MISSING_PROGS="[flex or lex] ${MISSING_PROGS}"
fi

AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_SED
AC_PROG_AWK
AC_PROG_GREP

dnl AC_PROG_AR
AC_PROG_RANLIB

AC_C_CONST
AC_C_BIGENDIAN
AC_C_INLINE
AC_C_CHAR_UNSIGNED
AC_C_STRINGIZE
AC_C_FLEXIBLE_ARRAY_MEMBER
AC_SYS_POSIX_TERMIOS

AX_PTHREAD

AC_PROG_CC_C99

AC_PATH_X
AC_PATH_XTRA

dnl check some compiler flags
C_FLAG_CHECK([-Wno-format-truncation])
CXX_FLAG_CHECK([-Wno-format-truncation])

C_FLAG_CHECK([-fno-strict-aliasing])
CXX_FLAG_CHECK([-fno-strict-aliasing])

C_FLAG_CHECK([-Wno-write-strings])
CXX_FLAG_CHECK([-Wno-write-strings])

C_FLAG_CHECK([-Wno-unused-result])
CXX_FLAG_CHECK([-Wno-unused-result])


dnl Add X11 goodies here
EXTRA_LIBS="${X_LIBS} ${EXTRA_LIBS}"
EXTRA_INCS="${X_CFLAGS} ${EXTRA_INCS}"

AC_FUNC_FORK

dnl programs with full paths

dnl - KSH, some systems call it as ksh93
AC_PATH_PROG(KSH, ksh)
if test -z "$ac_cv_path_KSH"; then
   AC_PATH_PROG(KSH, ksh93)
   if test -z "$ac_cv_path_KSH"; then
      MISSING_PROGS="[ksh or ksh93] ${MISSING_PROGS}"
   fi
fi

AC_PATH_PROG(XRDB, xrdb)
if test -z "$ac_cv_path_XRDB"; then
   MISSING_PROGS="xrdb ${MISSING_PROGS}"
fi

AC_PATH_PROG(PERL, perl)
if test -z "$ac_cv_path_PERL"; then
   MISSING_PROGS="perl ${MISSING_PROGS}"
fi


dnl we need to use cpp for some things, like tooltalk and other
dnl runtime uses.  So look for the system's cpp.  NOTE: this is NOT
dnl the CPP (gcc -E) set by AC_PROG_CPP.  At this point I don't know
dnl if we should even bother looking for that as we can't really use
dnl it.
AC_PATH_PROG(CPP_PROGRAM, cpp, ,
       [/lib:/usr/bin:/usr/ccs/lib/:/usr/lib:/usr/libexec:/opt/langtools/lbin:$PATH])
if test -z "$ac_cv_path_CPP_PROGRAM"; then
   MISSING_PROGS="cpp ${MISSING_PROGS}"
fi

dnl major external program dependencies
AC_CHECK_PROGS(BDFTOPCF, bdftopcf)
if test -z "$ac_cv_prog_BDFTOPCF"; then
   MISSING_PROGS="bdftopcf ${MISSING_PROGS}"
fi
AC_CHECK_PROGS(MKFONTDIR, mkfontdir)
if test -z "$ac_cv_prog_MKFONTDIR"; then
   MISSING_PROGS="mkfontdir ${MISSING_PROGS}"
fi
AC_CHECK_PROGS(GZIP, gzip)
if test -z "$ac_cv_prog_GZIP"; then
   MISSING_PROGS="gzip ${MISSING_PROGS}"
fi
AC_CHECK_PROGS(M4, m4)
if test -z "$ac_cv_prog_M4"; then
   MISSING_PROGS="m4 ${MISSING_PROGS}"
fi
AC_CHECK_PROGS(RPCGEN, rpcgen)
if test -z "$ac_cv_prog_RPCGEN"; then
   MISSING_PROGS="rpcgen ${MISSING_PROGS}"
fi
AC_CHECK_PROGS(GENCAT, gencat)
if test -z "$ac_cv_prog_GENCAT"; then
   MISSING_PROGS="gencat ${MISSING_PROGS}"
fi
AC_CHECK_PROGS(PATCH, patch)
if test -z "$ac_cv_prog_PATCH"; then
   MISSING_PROGS="patch ${MISSING_PROGS}"
fi

dnl Used to check if program 'tic' is available to install terminfo files
AC_CHECK_PROGS(TIC, tic, :)

dnl headers
AC_HEADER_STDC
AC_CHECK_HEADERS([locale.h security/pam_appl.h utempter.h])

dnl libraries
AC_CHECK_LIB(m, cosf)
AC_CHECK_LIB(crypt, crypt)
dnl this should be configurable, for now it is required
AC_CHECK_LIB(Xinerama, XineramaQueryScreens,
                [SOURCE_CPP_DEFINES="${SOURCE_CPP_DEFINES} -DUSE_XINERAMA"],
                [AC_MSG_ERROR([libXinerama not found])], $X_LIBS)

dnl Special check for tirpc...
AC_CHECK_LIB(tirpc, svc_register,
      [CFLAGS="${CFLAGS} -DOPT_TIRPC -I/usr/include/tirpc";
       CXXFLAGS="${CXXFLAGS} -DOPT_TIRPC -I/usr/include/tirpc";
       TIRPCLIB=-ltirpc])
AC_SUBST(TIRPCLIB)

dnl check sizeof time_t for RPC
AC_CHECK_SIZEOF([int])
AC_CHECK_SIZEOF([long])
AC_CHECK_SIZEOF([long long])
AC_CHECK_SIZEOF([time_t])

AC_STRUCT_TIMEZONE
AC_CHECK_DECLS([timezone],,,
        [#include <time.h>])
AC_CHECK_MEMBERS([struct tm.tm_gmtoff],,,
        [#include <time.h>])

dnl jpeg
AC_CHECK_LIB(jpeg, jpeg_read_header, [JPEGLIB="-ljpeg"],
             [AC_MSG_ERROR([libjpeg not found, please install it])],
             [${EXTRA_INCS} ${EXTRA_LIBS}])
AC_SUBST(JPEGLIB)

dnl Setup XTOOLLIB - we do it in this specific order to avoid ordering
dnl issues
XTOOLLIB=""
AC_CHECK_LIB(X11, XOpenDisplay, [XTOOLLIB="-lX11"], ,
                  [${EXTRA_INCS} ${EXTRA_LIBS}])
AC_CHECK_LIB(Xau, XauReadAuth, [XTOOLLIB="-lXau ${XTOOLLIB}"], ,
                  [${EXTRA_INCS} ${EXTRA_LIBS}])
AC_CHECK_LIB(Xpm, XpmLibraryVersion, [XTOOLLIB="-lXpm ${XTOOLLIB}"], ,
                  [${EXTRA_INCS} ${EXTRA_LIBS}])
AC_CHECK_LIB(Xt, XtInitialize, [XTOOLLIB="-lXt ${XTOOLLIB}"], ,
                 [${EXTRA_INCS} ${EXTRA_LIBS}])
AC_CHECK_LIB(ICE, IceCloseConnection, [XTOOLLIB="-lICE ${XTOOLLIB}"], ,
                  [${EXTRA_INCS} ${EXTRA_LIBS}])
AC_CHECK_LIB(SM, SmcOpenConnection, [XTOOLLIB="-lSM ${XTOOLLIB}"], ,
                 [${EXTRA_INCS} ${EXTRA_LIBS}])
AC_CHECK_LIB(Xm, XmTextSetString, [XTOOLLIB="-lXm ${XTOOLLIB}"], ,
                 [${EXTRA_INCS} ${EXTRA_LIBS}])
XTOOLLIB="${EXTRA_INCS} ${EXTRA_LIBS} ${X_EXTRA_LIBS} ${XTOOLLIB}"
AC_SUBST([XTOOLLIB])

dnl iconv
AM_ICONV

dnl figure out pam support

AC_CHECK_LIB(pam, pam_start,
             [SOURCE_CPP_DEFINES="${SOURCE_CPP_DEFINES} -DHAS_PAM_LIBRARY"])

AM_CONDITIONAL([HAS_PAM_LIBRARY], [test "x$ac_cv_lib_pam_pam_start" = "xyes"])

dnl figure out utempter support

AC_CHECK_LIB(utempter, utempter_add_record,
             [SOURCE_CPP_DEFINES="${SOURCE_CPP_DEFINES} -DHAS_UTEMPTER_LIBRARY"])

AM_CONDITIONAL([HAS_UTEMPTER_LIBRARY], [test "x$ac_cv_lib_utempter_utempter_add_record" = "xyes"])

dnl Figure out TCL

SC_PATH_TCLCONFIG
SC_LOAD_TCLCONFIG

dnl check MISSING_PROGS - error out here if there's stuff in it.

if test -n "$MISSING_PROGS"; then
   AC_MSG_ERROR([Please install the following REQUIRED programs: ${MISSING_PROGS}])
fi

dnl set CPPFLAGS, CFLAGS, and CXXFLAGS.
dnl The Autoconf manual says that these are user variables and
dnl shouldn't be modified.  It suggests that you create a special
dnl variable and presumably add those to your Makefile.am files.  We
dnl have 192 of these currently, so... The user will just have to
dnl deal, or modify them here directly.
CPPFLAGS="${CPPFLAGS} ${SOURCE_CPP_DEFINES} ${CPP_COMPILER_FLAGS} ${OSVERSION}"
CFLAGS="${CFLAGS} ${C_COMPILER_FLAGS} ${EXTRA_INCS} ${PTHREAD_CFLAGS}"
CXXFLAGS="${CXXFLAGS} ${CXX_COMPILER_FLAGS} ${EXTRA_INCS} ${PTHREAD_CFLAGS}"
LIBS="${EXTRA_LIBS} ${LIBS} ${PTHREAD_LIBS}"

dnl All of the makefiles we need to generate go here...
AC_CONFIG_FILES([
Makefile

util/Makefile
util/tradcpp/Makefile

lib/Makefile

lib/DtXinerama/Makefile

lib/tt/Makefile
lib/tt/mini_isam/Makefile
lib/tt/slib/Makefile
lib/tt/lib/Makefile
lib/tt/lib/api/Makefile
lib/tt/lib/api/dnd/Makefile
lib/tt/lib/api/c/Makefile
lib/tt/lib/tttk/Makefile
lib/tt/lib/db/Makefile
lib/tt/lib/mp/Makefile
lib/tt/lib/util/Makefile
lib/tt/bin/Makefile
lib/tt/bin/shell/Makefile
lib/tt/bin/ttauth/Makefile
lib/tt/bin/scripts/Makefile
lib/tt/bin/tttar/Makefile
lib/tt/bin/tt_type_comp/Makefile
lib/tt/bin/tttrace/Makefile
lib/tt/bin/dbck/Makefile
lib/tt/bin/ttdbserverd/Makefile
lib/tt/bin/ttsession/Makefile

lib/DtSvc/Makefile

lib/DtPamSvc/Makefile

lib/DtSearch/Makefile
lib/DtSearch/raima/Makefile

lib/DtWidget/Makefile

lib/DtHelp/Makefile
lib/DtHelp/il/Makefile

lib/DtPrint/Makefile

lib/DtTerm/Term/Makefile
lib/DtTerm/Makefile
lib/DtTerm/TermView/Makefile
lib/DtTerm/util/Makefile
lib/DtTerm/TermPrim/Makefile

lib/DtMrm/Makefile

lib/csa/Makefile

programs/Makefile

programs/backdrops/Makefile

programs/palettes/Makefile

programs/icons/Makefile

programs/dsdm/Makefile

programs/dthelp/Makefile
programs/dthelp/dthelpview/Makefile
programs/dthelp/dthelpgen/Makefile
programs/dthelp/dthelpdemo/Makefile
programs/dthelp/dthelpprint/Makefile
programs/dthelp/parser/Makefile
programs/dthelp/parser/pass1/Makefile
programs/dthelp/parser/pass1/util/Makefile
programs/dthelp/parser/pass1/build/Makefile
programs/dthelp/parser/pass1/eltdef/Makefile
programs/dthelp/parser/pass1/helptag/Makefile
programs/dthelp/parser/pass1/parser/Makefile
programs/dthelp/parser/canon1/Makefile
programs/dthelp/parser/canon1/util/Makefile
programs/dthelp/parser/canon1/build/Makefile
programs/dthelp/parser/canon1/eltdef/Makefile
programs/dthelp/parser/canon1/helptag/Makefile
programs/dthelp/parser/canon1/parser/Makefile
programs/dthelp/parser/pass2/Makefile
programs/dthelp/parser/pass2/util/Makefile
programs/dthelp/parser/pass2/build/Makefile
programs/dthelp/parser/pass2/eltdef/Makefile
programs/dthelp/parser/pass2/htag2/Makefile
programs/dthelp/parser/pass2/parser/Makefile
programs/dthelp/parser/helptag/Makefile

programs/nsgmls/Makefile

programs/dtmail/Makefile
programs/dtmail/dtmail/Makefile
programs/dtmail/MotifApp/Makefile
programs/dtmail/dtmailpr/Makefile
programs/dtmail/libDtMail/Makefile
programs/dtmail/libDtMail/RFC/Makefile
programs/dtmail/libDtMail/Common/Makefile

programs/dtpad/Makefile

programs/dtfile/Makefile
programs/dtfile/dtcopy/Makefile

programs/dtwm/Makefile

programs/dtlogin/Makefile
programs/dtlogin/config/Makefile

programs/dtsession/Makefile
programs/dtsession/config/Makefile

programs/dthello/Makefile

programs/dtstyle/Makefile

programs/dtexec/Makefile

programs/dtdbcache/Makefile

programs/dticon/Makefile

programs/dtterm/Makefile

programs/dtcalc/Makefile

programs/dtaction/Makefile

programs/dtspcd/Makefile

programs/dtscreen/Makefile

programs/dtksh/Makefile
programs/dtksh/examples/Makefile

programs/dtcm/Makefile
programs/dtcm/libDtCmP/Makefile
programs/dtcm/server/Makefile
programs/dtcm/dtcm/Makefile

programs/dtsearchpath/Makefile
programs/dtsearchpath/libCliSrv/Makefile
programs/dtsearchpath/dtsp/Makefile
programs/dtsearchpath/dtappg/Makefile

programs/dtappbuilder/Makefile
programs/dtappbuilder/src/Makefile
programs/dtappbuilder/src/libAButil/Makefile
programs/dtappbuilder/src/libABobj/Makefile
programs/dtappbuilder/src/libABobjXm/Makefile
programs/dtappbuilder/src/libABil/Makefile
programs/dtappbuilder/src/abmf/Makefile
programs/dtappbuilder/src/ab/Makefile

programs/dtappintegrate/Makefile

programs/dtprintegrate/Makefile

programs/dtconfig/Makefile
programs/dtconfig/sun/Makefile

programs/dtcreate/Makefile

programs/dtprintinfo/Makefile

programs/fontaliases/Makefile
programs/fontaliases/bdf/Makefile
programs/fontaliases/linux/Makefile
programs/fontaliases/linux/C/Makefile
programs/fontaliases/linux/en_US.UTF-8/Makefile
programs/fontaliases/sun/Makefile
programs/fontaliases/sun/C/Makefile
programs/fontaliases/netbsd/Makefile
programs/fontaliases/netbsd/C/Makefile
programs/fontaliases/openbsd/Makefile
programs/fontaliases/openbsd/C/Makefile
programs/fontaliases/freebsd/Makefile
programs/fontaliases/freebsd/C/Makefile

programs/dtdspmsg/Makefile

programs/ttsnoop/Makefile

programs/dtimsstart/Makefile

programs/dtpdm/Makefile

programs/dtsr/Makefile

programs/dtpdmd/Makefile

programs/dtinfo/Makefile
programs/dtinfo/tools/Makefile
programs/dtinfo/tools/misc/Makefile
programs/dtinfo/DtMmdb/Makefile
programs/dtinfo/DtMmdb/api/Makefile
programs/dtinfo/DtMmdb/btree/Makefile
programs/dtinfo/DtMmdb/btree_berkeley/Makefile
programs/dtinfo/DtMmdb/compression/Makefile
programs/dtinfo/DtMmdb/diskhash/Makefile
programs/dtinfo/DtMmdb/dstr/Makefile
programs/dtinfo/DtMmdb/dti_excs/Makefile
programs/dtinfo/DtMmdb/dynhash/Makefile
programs/dtinfo/DtMmdb/hmphf/Makefile
programs/dtinfo/DtMmdb/index/Makefile
programs/dtinfo/DtMmdb/mgrs/Makefile
programs/dtinfo/DtMmdb/misc/Makefile
programs/dtinfo/DtMmdb/object/Makefile
programs/dtinfo/DtMmdb/oliasdb/Makefile
programs/dtinfo/DtMmdb/schema/Makefile
programs/dtinfo/DtMmdb/storage/Makefile
programs/dtinfo/DtMmdb/utility/Makefile
programs/dtinfo/mmdb/Makefile
programs/dtinfo/mmdb/api/Makefile
programs/dtinfo/mmdb/btree/Makefile
programs/dtinfo/mmdb/btree_berkeley/Makefile
programs/dtinfo/mmdb/compression/Makefile
programs/dtinfo/mmdb/diskhash/Makefile
programs/dtinfo/mmdb/dstr/Makefile
programs/dtinfo/mmdb/dti_excs/Makefile
programs/dtinfo/mmdb/dynhash/Makefile
programs/dtinfo/mmdb/hmphf/Makefile
programs/dtinfo/mmdb/index/Makefile
programs/dtinfo/mmdb/mgrs/Makefile
programs/dtinfo/mmdb/misc/Makefile
programs/dtinfo/mmdb/object/Makefile
programs/dtinfo/mmdb/oliasdb/Makefile
programs/dtinfo/mmdb/schema/Makefile
programs/dtinfo/mmdb/storage/Makefile
programs/dtinfo/mmdb/utility/Makefile
programs/dtinfo/mmdb/HardCopy/Makefile
programs/dtinfo/mmdb/dti_cc/Makefile
programs/dtinfo/mmdb/StyleSheet/Makefile
programs/dtinfo/clients/Makefile
programs/dtinfo/clients/dtinfo_start/Makefile

programs/dtinfo/dtinfo/Makefile
programs/dtinfo/dtinfo/wwl/Makefile
programs/dtinfo/dtinfo/wwl/src/Makefile
programs/dtinfo/dtinfo/src/Makefile
programs/dtinfo/dtinfo/src/Widgets/Makefile
programs/dtinfo/dtinfo/src/Support/Makefile
programs/dtinfo/dtinfo/src/UAS/Makefile
programs/dtinfo/dtinfo/src/UAS/Base/Makefile
programs/dtinfo/dtinfo/src/UAS/MMDB/Makefile
programs/dtinfo/dtinfo/src/UAS/DtSR/Makefile
programs/dtinfo/dtinfo/src/Basic/Makefile
programs/dtinfo/dtinfo/src/OliasSearch/Makefile
programs/dtinfo/dtinfo/src/Marks/Makefile
programs/dtinfo/dtinfo/src/Graphics/Makefile
programs/dtinfo/dtinfo/src/Preferences/Makefile
programs/dtinfo/dtinfo/src/Managers/Makefile
programs/dtinfo/dtinfo/src/Other/Makefile
programs/dtinfo/dtinfo/src/Query/Makefile
programs/dtinfo/dtinfo/src/Agents/Makefile
programs/dtinfo/dtinfo/src/OnlineRender/Makefile
programs/dtinfo/dtinfo/src/Messages/Makefile
programs/dtinfo/dtinfo/src/cgm/Makefile
programs/dtinfo/dtinfo/install/Makefile
programs/dtinfo/dtinfo/install/lib/Makefile
programs/dtinfo/dtinfo/install/lib/bitmaps/Makefile
programs/dtinfo/dtinfo/install/lib/fonts/Makefile

programs/dtinfo/dtinfogen/Makefile
programs/dtinfo/dtinfogen/mmdb/Makefile
programs/dtinfo/dtinfogen/mmdb/src/Makefile
programs/dtinfo/dtinfogen/mmdb/StyleSheet/Makefile
programs/dtinfo/dtinfogen/infolib/Makefile
programs/dtinfo/dtinfogen/infolib/etc/Makefile
programs/dtinfo/dtinfogen/infolib/C.ISO-8859-1/Makefile
programs/dtinfo/dtinfogen/infolib/C.ISO-8859-1/SGML/Makefile
programs/dtinfo/dtinfogen/install/Makefile

programs/types/Makefile

programs/tttypes/Makefile

programs/util/Makefile
programs/util/dttypes/Makefile

programs/dtopen/Makefile

programs/dtdocbook/Makefile
programs/dtdocbook/lib/Makefile
programs/dtdocbook/lib/tptregexp/Makefile
programs/dtdocbook/instant/Makefile
programs/dtdocbook/xlate_locale/Makefile
programs/dtdocbook/doc2sdl/Makefile
programs/dtdocbook/doc2sdl/SGML/Makefile

programs/localized/Makefile
programs/localized/util/Makefile
programs/localized/C/Makefile
programs/localized/C/app-defaults/Makefile
programs/localized/C/config/Makefile
programs/localized/C/backdrops/Makefile
programs/localized/C/types/Makefile
programs/localized/C/palettes/Makefile
programs/localized/C/msg/Makefile
programs/localized/C/appmanager/Makefile
programs/localized/de_DE.UTF-8/Makefile
programs/localized/de_DE.UTF-8/app-defaults/Makefile
programs/localized/de_DE.UTF-8/config/Makefile
programs/localized/de_DE.UTF-8/backdrops/Makefile
programs/localized/de_DE.UTF-8/types/Makefile
programs/localized/de_DE.UTF-8/palettes/Makefile
programs/localized/de_DE.UTF-8/msg/Makefile
programs/localized/de_DE.UTF-8/appmanager/Makefile
programs/localized/fr_FR.UTF-8/Makefile
programs/localized/fr_FR.UTF-8/app-defaults/Makefile
programs/localized/fr_FR.UTF-8/config/Makefile
programs/localized/fr_FR.UTF-8/backdrops/Makefile
programs/localized/fr_FR.UTF-8/types/Makefile
programs/localized/fr_FR.UTF-8/palettes/Makefile
programs/localized/fr_FR.UTF-8/msg/Makefile
programs/localized/fr_FR.UTF-8/appmanager/Makefile
programs/localized/it_IT.UTF-8/Makefile
programs/localized/it_IT.UTF-8/app-defaults/Makefile
programs/localized/it_IT.UTF-8/config/Makefile
programs/localized/it_IT.UTF-8/backdrops/Makefile
programs/localized/it_IT.UTF-8/types/Makefile
programs/localized/it_IT.UTF-8/palettes/Makefile
programs/localized/it_IT.UTF-8/msg/Makefile
programs/localized/it_IT.UTF-8/appmanager/Makefile
programs/localized/es_ES.UTF-8/Makefile
programs/localized/es_ES.UTF-8/app-defaults/Makefile
programs/localized/es_ES.UTF-8/config/Makefile
programs/localized/es_ES.UTF-8/backdrops/Makefile
programs/localized/es_ES.UTF-8/types/Makefile
programs/localized/es_ES.UTF-8/palettes/Makefile
programs/localized/es_ES.UTF-8/msg/Makefile
programs/localized/es_ES.UTF-8/appmanager/Makefile

doc/Makefile
doc/util/Makefile
doc/util/dbtoman/Makefile
doc/util/dbtoman/instant/Makefile

doc/C/Makefile
doc/C/help/Makefile
doc/C/man/Makefile

doc/de_DE.ISO8859-1/Makefile
doc/de_DE.ISO8859-1/help/Makefile

doc/es_ES.ISO8859-1/Makefile
doc/es_ES.ISO8859-1/help/Makefile

doc/fr_FR.ISO8859-1/Makefile
doc/fr_FR.ISO8859-1/help/Makefile

doc/it_IT.ISO8859-1/Makefile
doc/it_IT.ISO8859-1/help/Makefile

include/Makefile

])

AC_OUTPUT
