AC_INIT([cde-desktop], [2.3.1], [jon@radscan.com])
AC_CONFIG_HEADERS([include/autotools_config.h])
AC_CONFIG_MACRO_DIRS([m4])
AM_INIT_AUTOMAKE([foreign subdir-objects])
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

dnl SOURCE_DEFINES - needed for some OS's
SOURCE_CPP_DEFINES=""

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

case "${host_os}" in
	linux*)
		build_linux=yes
                OSMAJORVERSION=4
                OSMINORVERSION=15
                SOURCE_CPP_DEFINES="-D_POSIX_SOURCE -D_DEFAULT_SOURCE \
-D_BSD_SOURCE -D_SVID_SOURCE"
                CPP_COMPILER_FLAGS="-fno-strict-aliasing -Wno-write-strings \
-Wno-unused-result"
                 ;;
	freebsd*)
		build_freebsd=yes
		bsd=yes
                OSMAJORVERSION=10
                OSMINORVERSION=0
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
AM_CONDITIONAL([BSD], [test "$build_bsd" = "yes"])
AM_CONDITIONAL([FREEBSD], [test "$build_freebsd" = "yes"])
AM_CONDITIONAL([OPENBSD], [test "$build_openbsd" = "yes"])
AM_CONDITIONAL([NETBSD], [test "$build_netbsd" = "yes"])
AM_CONDITIONAL([SOLARIS], [test "$build_solaris" = "yes"])
AM_CONDITIONAL([AIX], [test "$build_aix" = "yes"])
AM_CONDITIONAL([HPUX], [test "$build_hpux" = "yes"])

dnl Add osmajor/minor version to cppflags.
OSVERSION="-DOSMAJORVERSION=$OSMAJORVERSION -DOSMINORVERSION=$OSMINORVERSION"

dnl set CSRG_BASED define for the BSD's
if test "$build_bsd" = "yes"
then
        SOURCE_CPP_DEFINES="${SOURCE_CPP_DEFINES} -DCSRG_BASED"
fi

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

dnl our main libraries
dnl we use single quotes so that $top_builder is evaluated in the makefiles,
dnl not here.
AC_SUBST(LIBTT, '$(top_builddir)/lib/tt/lib/libtt.la')
AC_SUBST(LIBXIN, '$(top_builddir)/lib/DtXinerama/libDtXinerama.a')
AC_SUBST(LIBWIDGET, '$(top_builddir)/lib/DtWidget/libDtWidget.la')
AC_SUBST(LIBTERM, '$(top_builddir)/lib/DtTerm/libDtTerm.la')
AC_SUBST(LIBSVC, '$(top_builddir)/lib/DtSvc/libDtSvc.la')
AC_SUBST(LIBSEARCH, '$(top_builddir)/lib/DtSearch/lbiDtSearch.la')
AC_SUBST(LIBPRINT, '$(top_builddir)/lib/DtPrint/libDtPrint.la')
AC_SUBST(LIBMRM, '$(top_builddir)/lib/DtMrm/libDtMrm.la')
AC_SUBST(LIBMMDB, '$(top_builddir)/lib/DtMmdb/libDtMmdb.la')
AC_SUBST(LIBHELP, '$(top_builddir)/lib/DtHelp/libDtHelp.la')
AC_SUBST(LIBCSA, '$(top_builddir)/lib/csa/libcsa.la')

dnl set up come convenience replacements for global include dirs
AC_SUBST(DT_INCDIR, '-I$(top_builddir)/include/Dt')
AC_SUBST(DTI_INCDIR, '-I$(top_builddir)/include/DtI')
AC_SUBST(TT_INCDIR, '-I$(top_builddir)/include/Tt')
AC_SUBST(XM_INCDIR, '-I$(top_builddir)/include/Xm')
AC_SUBST(CSA_INCDIR, '-I$(top_builddir)/include/csa')
AC_SUBST(SPC_INCDIR, '-I$(top_builddir)/include/SPC')

AC_ARG_ENABLE(japanese, [--build-japanese    Build Japanese (default=no)])
AM_CONDITIONAL([JAPANESE], [test "build_japanese" = "yes"])

AC_ARG_ENABLE(german, [--build-german    Build German    (default=no)])
AM_CONDITIONAL([GERMAN], [test "build_german" = "yes"])

AC_ARG_ENABLE(italian, [--build-italian    Build Italian    (default=no)])
AM_CONDITIONAL([ITALIAN], [test "build_italian" = "yes"])

AC_ARG_ENABLE(french, [--build-french    Build French    (default=no)])
AM_CONDITIONAL([FRENCH], [test "build_french" = "yes"])

AC_ARG_ENABLE(spanish, --build-spanish    Build Spanish    (default=no)])
AM_CONDITIONAL([SPANISH], [test "build_spanish" = "yes"])

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

dnl programs
AC_CHECK_PROGS(KSH, ksh)
AC_CHECK_PROGS(BDFTOPCF, bdftopcf)
AC_CHECK_PROGS(MKFONTIDR, mkfontdir)
AC_CHECK_PROGS(GZIP, gzip)
AC_CHECK_PROGS(M4, m4)
AC_CHECK_PROGS(RPCGEN, rpcgen)

dnl headers
AC_HEADER_STDC
AC_CHECK_HEADERS([locale.h])

dnl libraries
AC_CHECK_LIB(tirpc, main, [TIRPCINC="-DOPT_TIRPC -I/usr/include/tirpc"; TIRPCLIB=-ltirpc])
AC_SUBST(TIRPCINC)
AC_SUBST(TIRPCLIB)

dnl Setup XTOOLLIB
XTOOLLIB=""
AC_CHECK_LIB(X11, XOpenDisplay, [XTOOLLIB="-lX11"])
AC_CHECK_LIB(Xt, XtInitialize, [XTOOLLIB="-lXt ${XTOOLLIB}"])
AC_CHECK_LIB(ICE, IceCloseConnection, [XTOOLLIB="-lICE ${XTOOLLIB}"])
AC_CHECK_LIB(SM, SmcOpenConnection, [XTOOLLIB="-lSM ${XTOOLLIB}"])
AC_SUBST([XTOOLLIB])

dnl set CPPFLAGS, CFLAGS, and CXXFLAGS.
dnl The Autoconf manual says that these are user variables and
dnl shouldn't be modified.  It suggests that you create a special
dnl variable and presumably add those to your Makefile.am files.  We
dnl have 192 of these currently, so... The user will just have to
dnl deal, or modify them here directly.
CPPFLAGS="${CPPFLAGS} ${SOURCE_CPP_DEFINES} ${CPP_COMPILER_FLAGS} ${OSVERSION}"
CFLAGS="${CFLAGS} ${C_COMPILER_FLAGS} ${PTHREAD_CFLAGS}"
CXXFLAGS="${CXXFLAGS} ${CXX_COMPILER_FLAGS} ${PTHREAD_CFLAGS}"
LIBS="${LIBS} ${PTHREAD_LIBS}"

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

programs/Makefile

programs/backdrops/Makefile

programs/icons/Makefile

programs/dthelp/Makefile
programs/dthelp/dthelpgen/Makefile
programs/dthelp/dthelpprint/Makefile
programs/dthelp/parser/pass1/helptag/Makefile
programs/dthelp/parser/pass1/Makefile
programs/dthelp/parser/pass1/eltdef/Makefile
programs/dthelp/parser/pass1/build/Makefile
programs/dthelp/parser/Makefile
programs/dthelp/parser/canon1/Makefile
programs/dthelp/parser/pass2/Makefile
programs/dthelp/dthelpview/Makefile

programs/dsdm/Makefile

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

])

AC_OUTPUT

