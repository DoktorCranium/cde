dnl From stackoverflow, with some changes
dnl @synopsis CXX_FLAGS_CHECK [compiler flags]
dnl @summary check whether compiler supports given C++ flags or not
AC_DEFUN([CXX_FLAG_CHECK],
[dnl
  AC_MSG_CHECKING([if $CXX supports $1])
  AC_LANG_PUSH([C++])
  ac_saved_cxxflags="$CXX_COMPILER_FLAGS"
  CXX_COMPILER_FLAGS="-Werror $1"
  AC_COMPILE_IFELSE([AC_LANG_PROGRAM([])],
    [cxx_flag_check=yes],
    [cxx_flag_check=no]
  )
  AC_MSG_RESULT([$cxx_flag_check])
  CXX_COMPILER_FLAGS="$ac_saved_cxxflags"
  if test "$cxx_flag_check" = yes
  then
    CXX_COMPILER_FLAGS="$CXX_COMPILER_FLAGS $1"
  fi
  AC_LANG_POP([C++])
])

AC_DEFUN([C_FLAG_CHECK],
[dnl
  AC_MSG_CHECKING([if $CC supports $1])
  AC_LANG_PUSH([C])
  ac_saved_ccflags="$C_COMPILER_FLAGS"
  C_COMPILER_FLAGS="-Werror $1"
  AC_COMPILE_IFELSE([AC_LANG_PROGRAM([])],
    [cc_flag_check=yes],
    [cc_flag_check=no]
  )
  AC_MSG_RESULT([$cc_flag_check])
  C_COMPILER_FLAGS="$ac_saved_ccflags"
  if test "$cc_flag_check" = yes
  then
    C_COMPILER_FLAGS="$C_COMPILER_FLAGS $1"
  fi
  AC_LANG_POP([C])
])
