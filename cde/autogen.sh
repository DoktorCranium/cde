#!/bin/sh

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

cd "$srcdir"

libtoolize --force --automake
aclocal
autoconf -f
autoheader
automake --foreign  --include-deps --add-missing

exit $?
