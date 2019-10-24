AC_INIT([cde-desktop], [2.3.1], [jon@radscan.com])
AC_CONFIG_HEADERS([include/config.h])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE([foreign])
AC_PREFIX_DEFAULT(/usr/dt)


dnl todo: determine what version of autoconf we depend on
dnl AC_PREREQ()

AC_CANONICAL_HOST

dnl global CDE versioning

MAJOR=2
MINOR=3
MICRO=0

AC_SUBST(MAJOR)
AC_SUBST(MINOR)
AC_SUBST(MICRO)

dnl These OS checks are deprecated and should be replaced with feature checks
dnl where appropriate

build_linux=no
bsd=no
build_freebsd=no
build_openbsd=no
build_netbsd=no
build_solaris=no
build_hpux=no
build_aix=no

case "${host_os}" in
	linux*)
		build_linux=yes
		;;
	freebsd*)
		build_freebsd=yes
		bsd=yes
		;;
	openbsd*)
		build_openbsd=yes
		bsd=yes
		;;
	netbsd*)
		build_netbsd=yes
		bsd=yes
		;;
	solaris*|sun*)
		build_solaris=yes
		;;
	aix*)
		build_aix=yes
		;;
	hpux*)
		build_hpux=yes
		;;
esac

AM_CONDITIONAL([LINUX], [test "$build_linux" = "yes"])
AM_CONDITIONAL([BSD], [test "$build_bsd" = "yes"])
AM_CONDITIONAL([FREEBSD], [test "$build_freebsd" = "yes"])
AM_CONDITIONAL([OPENBSD], [test "$build_openbsd" = "yes"])
AM_CONDITIONAL([NETBSD], [test "$build_netbsd" = "yes"])
AM_CONDITIONAL([SOLARIS], [test "$build_solaris" = "yes"])
AM_CONDITIONAL([AIX], [test "$build_aix" = "yes"])
AM_CONDITIONAL([HPUX], [test "$build_hpux" = "yes"])

is_x86_64=no
is_i386=no
is_sparc=no
is_mips=no
is_arm=no
is_ppc=no

case "$target_or_host" in
	i*86-*-*)
		is_i386=yes
		;;
	x86_64-*)
		is_x86_64=yes
		;;
	*arm*)
		is_arm=yes
		;;
	*mips*)
		is_mips=yes
		;;
	*sparc*)
		is_sparc=yes
		;;
	ppc-*-linux* | powerpc-*)
		is_ppc=yes
		;;
esac

AM_CONDITIONAL([I386], [test "$is_i386" = yes])
AM_CONDITIONAL([X86_64], [test "$is_x86_64" = yes])
AM_CONDITIONAL([ARM], [test "$is_arm" = yes])
AM_CONDITIONAL([SPARC], [test "$is_sparc" = yes])
AM_CONDITIONAL([MIPS], [test "is_mips" = yes])
AM_CONDITIONAL([PPC], [test "is_ppc" = yes])

LIBTT="$srcdir/lib/tt/lib/libtt.so.2.1"
LIBXIN="$srcdir/lib/DtXinerama/libDtXinerama.a"
LIBWIDGET="$srcdir/lib/DtWidget/libDtWidget.so.2.1"
LIBTERM="$srcdir/lib/DtTerm/libDtTerm.so.2.1"
LIBSVC="$srcdir/lib/DtSvc/libDtSvc.so.2.1"
LIBSEARCH="$srcdir/lib/DtSearch/lbiDtSearch.so.2.1"
LIBPRINT="$srcdir/lib/DtPrint/libDtPrint.so.2.1"
LIBMRM="$srcdir/lib/DtMrm/libDtMrm.so.2.1"
LIBMMDB="$srcdir/lib/DtMmdb/libDtMmdb.so.2.1"
LIBHELP="$srcdir/lib/DtHelp/libDtHelp.so.2.1"
LIBCSA="$srcdir/lib/csa/libcsa.so.2.1"
XTOOLLIB=-lICE -lSM -lXt

AC_SUBST(LIBTT)
AC_SUBST(LIBXIN)
AC_SUBST(LIBWIDGET)
AC_SUBST(LIBTERM)
AC_SUBST(LIBSVC)
AC_SUBST(LIBSEARCH)
AC_SUBST(LIBPRINT)
AC_SUBST(LIBMRM)
AC_SUBST(LIBMMDB)
AC_SUBST(LIBHELP)
AC_SUBST(LIBCSA)
AC_SUBST(XTOOLLIB)

AC_ARG_ENABLE(japanese, [--build-japanese    Build Japanese (default=no)])
AM_CONDITIONAL([JAPANESE], [test "build_japanese" = "yes"])

AC_ARG_ENABLE(german, [--build-german    Build German    (default=no)])
AM_CONDITIONAL([GERMAN], [test "build_japanese" = "yes"])

AC_ARG_ENABLE(italian, [--build-italian    Build Italian    (default=no)])
AM_CONDITIONAL([ITALIAN], [test "build_italian" = "yes"])

AC_ARG_ENABLE(french, [--build-french    Build French    (default=no)])
AM_CONDITIONAL([FRENCH], [test "build_french" = "yes"])

AC_ARG_ENABLE(spanish, --build-spanish    Build Spanish    (default=no)])
AM_CONDITIONAL([FRENCH], [test "build_french" = "yes"])

RM="rm -f"
AC_SUBST(RM)

CDE_LOGFILES_TOP=/var/dt
CDE_CONFIGURATION_TOP=/etc/dt
CDE_USER_TOP=.dt

AC_SUBST(CDE_CONFIGURATION_TOP)
AC_SUBST(CDE_LOGFILES_TOP)
AC_SUBST(CDE_USER_TOP)

AC_PROG_CC
AC_PROG_CXX
AC_PROG_CPP
AM_PROG_LIBTOOL
AC_PROG_YACC

AM_PROG_LEX
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_SED
AC_PROG_AWK
AC_PROG_GREP

AC_C_CONST

AC_PATH_X
AC_PATH_XTRA

dnl programs
AC_CHECK_PROGS(KSH, ksh)
AC_CHECK_PROGS(BDFTOPCF, bdftopcf)
AC_CHECK_PROGS(MKFONTIDR, mkfontdir)
AC_CHECK_PROGS(GZIP, gzip)
AC_CHECK_PROGS(M4, m4)

dnl headers
AC_HEADER_STDC

dnl libraries
AC_CHECK_LIB(tirpc, main, [TIRPCINC="-DOPT_TIRPC -I/usr/include/tirpc"; TIRPCLIB=-ltirpc])
AC_SUBST(TIRPCINC)
AC_SUBST(TIRPCLIB)

dnl All of the makefiles we need to generate go here...
AC_CONFIG_FILES([
Makefile

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
lib/DtSvc/DtUtil1/Makefile
lib/DtSvc/DtUtil2/Makefile
lib/DtSvc/DtEncap/Makefile
lib/DtSvc/DtCodelibs/Makefile
lib/DtSvc/DtXpm/Makefile

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

logs/Makefile

programs/Makefile
])

AC_OUTPUT

