########################################################################
#                                                                      #
#               This software is part of the ast package               #
#          Copyright (c) 1982-2012 AT&T Intellectual Property          #
#                      and is licensed under the                       #
#                 Eclipse Public License, Version 1.0                  #
#                    by AT&T Intellectual Property                     #
#                                                                      #
#                A copy of the License is available at                 #
#          http://www.eclipse.org/org/documents/epl-v10.html           #
#         (with md5 checksum b35adb5213ca9657e911e9befb180842)         #
#                                                                      #
#              Information and Software Systems Research               #
#                            AT&T Research                             #
#                           Florham Park NJ                            #
#                                                                      #
#                  David Korn <dgk@research.att.com>                   #
#                                                                      #
########################################################################
function err_exit
{
	print -u2 -n "\t"
	print -u2 -r ${Command}[$1]: "${@:2}"
	let Errors+=1
}
alias err_exit='err_exit $LINENO'

Command=${0##*/}
integer Errors=0

[[ -d $tmp && -w $tmp && $tmp == "$PWD" ]] || { err\_exit "$LINENO" '$tmp not set; run this from shtests. Aborting.'; exit 1; }

bincat=$(whence -p cat)

# test shell builtin commands
builtin getconf
: ${foo=bar} || err_exit ": failed"
[[ $foo == bar ]] || err_exit ": side effects failed"
set -- - foobar
[[ $# == 2 && $1 == - && $2 == foobar ]] || err_exit "set -- - foobar failed"
set -- -x foobar
[[ $# == 2 && $1 == -x && $2 == foobar ]] || err_exit "set -- -x foobar failed"
getopts :x: foo || err_exit "getopts :x: returns false"
[[ $foo == x && $OPTARG == foobar ]] || err_exit "getopts :x: failed"
OPTIND=1
getopts :r:s var -r
if	[[ $var != : || $OPTARG != r ]]
then	err_exit "'getopts :r:s var -r' not working"
fi
OPTIND=1
getopts :d#u OPT -d 16177
if	[[ $OPT != d || $OPTARG != 16177 ]]
then	err_exit "'getopts :d#u OPT=d OPTARG=16177' failed -- OPT=$OPT OPTARG=$OPTARG"
fi
OPTIND=1
while getopts 'ab' option -a -b
do	[[ $OPTIND == $((OPTIND)) ]] || err_exit "OPTIND optimization bug"
done

USAGE=$'[-][S:server?Operate on the specified \asubservice\a:]:[subservice:=pmserver]
    {
        [p:pmserver]
        [r:repserver]
        [11:notifyd]
    }'
set pmser p rep r notifyd -11
while	(( $# > 1 ))
do	OPTIND=1
	getopts "$USAGE" OPT -S $1
	[[ $OPT == S && $OPTARG == $2 ]] || err_exit "OPT=$OPT OPTARG=$OPTARG -- expected OPT=S OPTARG=$2"
	shift 2
done

false ${foo=bar} &&  err_exit "false failed"
read <<!
hello world
!
[[ $REPLY == 'hello world' ]] || err_exit "read builtin failed"
print x:y | IFS=: read a b
if	[[ $a != x ]]
then	err_exit "IFS=: read ... not working"
fi
read <<!
hello \
world
!
[[ $REPLY == 'hello world' ]] || err_exit "read continuation failed"
read -d x <<!
hello worldxfoobar
!
[[ $REPLY == 'hello world' ]] || err_exit "read builtin failed"
read <<\!
hello \
	world \

!
[[ $REPLY == 'hello 	world' ]] || err_exit "read continuation2 failed"
print "one\ntwo" | { read line
	print $line | "$bincat" > /dev/null
	read line
}
read <<\!
\
a\
\
\
b
!
if	[[ $REPLY != ab ]]
then	err_exit "read multiple continuation failed"
fi
if	[[ $line != two ]]
then	err_exit "read from pipeline failed"
fi
line=two
read line < /dev/null
if	[[ $line != "" ]]
then	err_exit "read from /dev/null failed"
fi
if	[[ $(print -R -) != - ]]
then	err_exit "print -R not working correctly"
fi
if	[[ $(print -- -) != - ]]
then	err_exit "print -- not working correctly"
fi
print -f "hello%nbar\n" size > /dev/null
if	((	size != 5 ))
then	err_exit "%n format of printf not working"
fi
print -n -u2 2>&1-
[[ -w /dev/fd/1 ]] || err_exit "2<&1- with built-ins has side effects"
x=$0
if	[[ $(eval 'print $0') != $x ]]
then	err_exit '$0 not correct for eval'
fi
$SHELL -c 'read x <<< hello' 2> /dev/null || err_exit 'syntax <<< not recognized'
($SHELL -c 'read x[1] <<< hello') 2> /dev/null || err_exit 'read x[1] not working'
unset x
readonly x
set -- $(readonly)
if      [[ " $@ " != *" x "* ]]
then    err_exit 'unset readonly variables are not displayed'
fi
if	[[ $(	for i in foo bar
		do	print $i
			continue 10
		done
	    ) != $'foo\nbar' ]]
then	err_exit 'continue breaks out of loop'
fi
(continue bad 2>/dev/null && err_exit 'continue bad should return an error')
(break bad 2>/dev/null && err_exit 'break bad should return an error')
(continue 0 2>/dev/null && err_exit 'continue 0 should return an error')
(break 0 2>/dev/null && err_exit 'break 0 should return an error')
breakfun() { break;}
continuefun() { continue;}
for fun in break continue
do	if	[[ $(	for i in foo
			do	${fun}fun
				print $i
			done
		) != foo ]]
	then	err_exit "$fun call in ${fun}fun breaks out of for loop"
	fi
done
if	[[ $(print -f "%b" "\a\n\v\b\r\f\E\03\\oo") != $'\a\n\v\b\r\f\E\03\\oo' ]]
then	err_exit 'print -f "%b" not working'
fi
if	[[ $(print -f "%P" "[^x].*b\$") != '*[!x]*b' ]]
then	err_exit 'print -f "%P" not working'
fi
if	[[ $(print -f "%(pattern)q" "[^x].*b\$") != '*[!x]*b' ]]
then	err_exit 'print -f "%(pattern)q" not working'
fi
if	[[ $(abc: for i in foo bar;do print $i;break abc;done) != foo ]]
then	err_exit 'break labels not working'
fi
if	[[ $(command -v if)	!= if ]]
then	err_exit	'command -v not working'
fi
read -r var <<\!

!
if	[[ $var != "" ]]
then	err_exit "read -r of blank line not working"
fi
mkdir -p $tmp/a/b/c 2>/dev/null || err_exit  "mkdir -p failed"
$SHELL -c "cd $tmp/a/b; cd c" 2>/dev/null || err_exit "initial script relative cd fails"

trap 'print TERM' TERM
exp="trap -- 'print TERM' TERM"
got=$(trap)
[[ $got == $exp ]] || err_exit "\$(trap) failed -- expected \"$exp\", got \"$got\""
exp='print TERM'
got=$(trap -p TERM)
[[ $got == $exp ]] || err_exit "\$(trap -p TERM) failed -- expected \"$exp\", got \"$got\""

[[ $($SHELL -c 'trap "print ok" SIGTERM; kill -s SIGTERM $$' 2> /dev/null) == ok ]] || err_exit 'SIGTERM not recognized'
[[ $($SHELL -c 'trap "print ok" sigterm; kill -s sigterm $$' 2> /dev/null) == ok ]] || err_exit 'SIGTERM not recognized'
[[ $($SHELL -c '( trap "" TERM);kill $$;print bad' == bad) ]] 2> /dev/null && err_exit 'trap ignored in subshell causes it to be ignored by parent'
${SHELL} -c 'kill -1 -$$' 2> /dev/null
[[ $(kill -l $?) == HUP ]] || err_exit 'kill -1 -pid not working'
${SHELL} -c 'kill -1 -$$' 2> /dev/null
[[ $(kill -l $?) == HUP ]] || err_exit 'kill -n1 -pid not working'
${SHELL} -c 'kill -s HUP -$$' 2> /dev/null
[[ $(kill -l $?) == HUP ]] || err_exit 'kill -HUP -pid not working'
n=123
typeset -A base
base[o]=8#
base[x]=16#
base[X]=16#
for i in d i o u x X
do	if	(( $(( ${base[$i]}$(printf "%$i" $n) )) != n  ))
	then	err_exit "printf %$i not working"
	fi
done
if	[[ $( trap 'print done' EXIT) != done ]]
then	err_exit 'trap on EXIT not working'
fi
if	[[ $( trap 'print done' EXIT; trap - EXIT) == done ]]
then	err_exit 'trap on EXIT not being cleared'
fi
if	[[ $(LC_MESSAGES=C type test) != 'test is a shell builtin' ]]
then	err_exit 'whence -v test not a builtin'
fi
builtin -d test
if	[[ $(type test) == *builtin* ]]
then	err_exit 'whence -v test after builtin -d incorrect'
fi
typeset -Z3 percent=$(printf '%o\n' "'%'")
forrmat=\\${percent}s
if      [[ $(printf "$forrmat") != %s ]]
then    err_exit "printf $forrmat not working"
fi
if	(( $(printf 'x\0y' | wc -c) != 3 ))
then	err_exit 'printf \0 not working'
fi
if	[[ $(printf "%bx%s\n" 'f\to\cbar') != $'f\to' ]]
then	err_exit 'printf %bx%s\n  not working'
fi
alpha=abcdefghijklmnop
if	[[ $(printf "%10.*s\n" 5 $alpha) != '     abcde' ]]
then	err_exit 'printf %10.%s\n  not working'
fi
float x2=.0000625
if	[[ $(printf "%10.5E\n" x2) != 6.25000E-05 ]]
then	err_exit 'printf "%10.5E" not normalizing correctly'
fi
x2=.000000001
if	[[ $(printf "%g\n" x2 2>/dev/null) != 1e-09 ]]
then	err_exit 'printf "%g" not working correctly'
fi
#FIXME#($SHELL read -s foobar <<\!
#FIXME#testing
#FIXME#!
#FIXME#) 2> /dev/null || err_exit ksh read -s var fails
if	[[ $(printf +3 2>/dev/null) !=   +3 ]]
then	err_exit 'printf is not processing formats beginning with + correctly'
fi
if	printf "%d %d\n" 123bad 78 >/dev/null 2>/dev/null
then	err_exit "printf not exiting non-zero with conversion errors"
fi
if	[[ $(trap --version 2> /dev/null;print done) != done ]]
then	err_exit 'trap builtin terminating after --version'
fi
if	[[ $(set --version 2> /dev/null;print done) != done ]]
then	err_exit 'set builtin terminating after --veresion'
fi
unset -f foobar
function foobar
{
	print 'hello world'
}
OPTIND=1
if	[[ $(getopts  $'[+?X\ffoobar\fX]' v --man 2>&1) != *'Xhello world'X* ]]
then	err_exit '\f...\f not working in getopts usage strings'
fi

expect=$'&lt;&gt;&quot;&amp; &#39;\tabc'
actual=$(printf '%H\n' $'<>"& \'\tabc')
[[ $expect == "$actual" ]] || err_exit 'printf %H not working' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
actual=$(printf '%(html)q\n' $'<>"& \'\tabc')
[[ $expect == "$actual" ]] || err_exit 'printf %(html)q not working' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

expect='foo://ab_c%3C%3E%22%26%20%27%09abc'
actual=$(printf 'foo://ab_c%#H\n' $'<>"& \'\tabc')
[[ $expect == "$actual" ]] || err_exit 'printf %#H not working' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
actual=$(printf 'foo://ab_c%(url)q\n' $'<>"& \'\tabc')
[[ $expect == "$actual" ]] || err_exit 'printf %(url)q not working' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

case ${LC_ALL:-${LC_CTYPE:-${LANG:-}}} in
( *[Uu][Tt][Ff]8* | *[Uu][Tt][Ff]-8* )
	# HTML encoding UTF-8 characters
	expect='正常終了 正常終了'
	actual=$(printf %H '正常終了 正常終了')
	[[ $actual == "$expect" ]] || err_exit 'printf %H: Japanese UTF-8 characters' \
				"(expected $expect; got $actual)"
	expect='w?h?á?t??'
	actual=$(printf %H $'w\x80h\x81\uE1\x82t\x83?')
	[[ $actual == "$expect" ]] || err_exit 'printf %H: invalid UTF-8 characters' \
				"(expected $expect; got $actual)"
	# URL/URI encoding of UTF-8 characters
	expect='wh.at%3F'
	actual=$(printf %#H 'wh.at?')
	[[ $actual == "$expect" ]] || err_exit 'printf %H: ASCII characters' \
				"(expected $expect; got $actual)"
	expect='%D8%B9%D9%86%D8%AF%D9%85%D8%A7%20%D9%8A%D8%B1%D9%8A%D8%AF%20%D8%A7%D9%84%D8%B9%D8%A7%D9%84%D9%85%20%D8%A3%D9%86%20%E2%80%AA%D9%8A%D8%AA%D9%83%D9%84%D9%91%D9%85%20%E2%80%AC%20%D8%8C%20%D9%81%D9%87%D9%88%20%D9%8A%D8%AA%D8%AD%D8%AF%D9%91%D8%AB%20%D8%A8%D9%84%D8%BA%D8%A9%20%D9%8A%D9%88%D9%86%D9%8A%D9%83%D9%88%D8%AF.'
	actual=$(printf %#H 'عندما يريد العالم أن ‪يتكلّم ‬ ، فهو يتحدّث بلغة يونيكود.')
	[[ $actual == "$expect" ]] || err_exit 'printf %H: Arabic UTF-8 characters' \
				"(expected $expect; got $actual)"
	expect='%E6%AD%A3%E5%B8%B8%E7%B5%82%E4%BA%86%20%E6%AD%A3%E5%B8%B8%E7%B5%82%E4%BA%86'
	actual=$(printf %#H '正常終了 正常終了')
	[[ $actual == "$expect" ]] || err_exit 'printf %H: Japanese UTF-8 characters' \
				"(expected $expect; got $actual)"
	expect='%C2%AB%20l%E2%80%99ab%C3%AEme%20de%20mon%C2%A0m%C3%A9tier%E2%80%A6%20%C2%BB'
	actual=$(printf %#H '« l’abîme de mon métier… »')
	[[ $actual == "$expect" ]] || err_exit 'printf %H: Latin UTF-8 characters' \
				"(expected $expect; got $actual)"
	expect='%3F%C2%86%3F%3F%3F'
	actual=$(printf %#H $'\x86\u86\xF0\x96\x76\xA7\xB5')
	[[ $actual == "$expect" ]] || err_exit 'printf %H: invalid UTF-8 characters' \
				"(expected $expect; got $actual)"
	;;
esac

if	[[ $(printf '%R %R %R %R\n' 'a.b' '*.c' '^'  '!(*.*)') != '^a\.b$ \.c$ ^\^$ ^(.*\..*)!$' ]]
then	err_exit 'printf %T not working'
fi
if	[[ $(printf '%(ere)q %(ere)q %(ere)q %(ere)q\n' 'a.b' '*.c' '^'  '!(*.*)') != '^a\.b$ \.c$ ^\^$ ^(.*\..*)!$' ]]
then	err_exit 'printf %(ere)q not working'
fi
if	[[ $(printf '%..:c\n' abc) != a:b:c ]]
then	err_exit "printf '%..:c' not working"
fi
if	[[ $(printf '%..*c\n' : abc) != a:b:c ]]
then	err_exit "printf '%..*c' not working"
fi
if	[[ $(printf '%..:s\n' abc def ) != abc:def ]]
then	err_exit "printf '%..:s' not working"
fi
if	[[ $(printf '%..*s\n' : abc def) != abc:def ]]
then	err_exit "printf '%..*s' not working"
fi

# ======
# we won't get hit by the one second boundary twice, right?
expect= actual=
{ expect=$(LC_ALL=C date) && actual=$(LC_ALL=C printf '%T\n' now) && [[ ${actual/ GMT / UTC } == "${expect/ GMT / UTC }" ]]; } ||
{ expect=$(LC_ALL=C date) && actual=$(LC_ALL=C printf '%T\n' now) && [[ ${actual/ GMT / UTC } == "${expect/ GMT / UTC }" ]]; } ||
err_exit 'printf "%T" now' "(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
behead()
{
	read line
	left=$(cat)
}
print $'line1\nline2' | behead
if	[[ $left != line2 ]]
then	err_exit "read reading ahead on a pipe"
fi
read -n1 y <<!
abc
!
exp=a
if      [[ $y != $exp ]]
then    err_exit "read -n1 failed -- expected '$exp', got '$y'"
fi
print -n $'{ read -r line;print $line;}\nhello' > $tmp/script
chmod 755 $tmp/script
if	[[ $($SHELL < $tmp/script) != hello ]]
then	err_exit 'read of incomplete line not working correctly'
fi
set -f
set -- *
if      [[ $1 != '*' ]]
then    err_exit 'set -f not working'
fi
unset pid1 pid2
false &
pid1=$!
pid2=$(
	wait $pid1
	(( $? == 127 )) || err_exit "job known to subshell"
	print $!
)
wait $pid1
(( $? == 1 )) || err_exit "wait not saving exit value"
wait $pid2
(( $? == 127 )) || err_exit "subshell job known to parent"
env=
v=$(getconf LIBPATH)
for v in ${v//,/ }
do	v=${v#*:}
	v=${v%%:*}
	eval [[ \$$v ]] && env="$env $v=\"\$$v\""
done
if	[[ $(foo=bar; eval foo=\$foo $env exec -c \$SHELL -c \'print \$foo\') != bar ]]
then	err_exit '"name=value exec -c ..." not working'
fi
$SHELL -c 'OPTIND=-1000000; getopts a opt -a' 2> /dev/null
[[ $? == 1 ]] || err_exit 'getopts with negative OPTIND not working'
getopts 'n#num' opt  -n 3
[[ $OPTARG == 3 ]] || err_exit 'getopts with numerical arguments failed'
if	[[ $($SHELL -c $'printf \'%2$s %1$s\n\' world hello') != 'hello world' ]]
then	err_exit 'printf %2$s %1$s not working'
fi
val=$(( 'C' ))
set -- \
	"'C"	$val	0	\
	"'C'"	$val	0	\
	'"C'	$val	0	\
	'"C"'	$val	0	\
	"'CX"	$val	1	\
	"'CX'"	$val	1	\
	"'C'X"	$val	1	\
	'"CX'	$val	1	\
	'"CX"'	$val	1	\
	'"C"X'	$val	1
while (( $# >= 3 ))
do	arg=$1 val=$2 code=$3
	shift 3
	for fmt in '%d' '%g'
	do	out=$(printf "$fmt" "$arg" 2>/dev/null)
		err=$(set +x; printf "$fmt" "$arg" 2>&1 >/dev/null)
		printf "$fmt" "$arg" >/dev/null 2>&1
		ret=$?
		[[ $out == $val ]] || err_exit "printf $fmt $arg failed -- expected '$val', got '$out'"
		if	(( $code ))
		then	[[ $err ]] || err_exit "printf $fmt $arg failed, error message expected"
		else	[[ $err ]] && err_exit "$err: printf $fmt $arg failed, error message not expected -- got '$err'"
		fi
		(( $ret == $code )) || err_exit "printf $fmt $arg failed -- expected exit code $code, got $ret"
	done
done
((n=0))
((n++)); ARGC[$n]=1 ARGV[$n]=""
((n++)); ARGC[$n]=2 ARGV[$n]="-a"
((n++)); ARGC[$n]=4 ARGV[$n]="-a -v 2"
((n++)); ARGC[$n]=4 ARGV[$n]="-a -v 2 x"
((n++)); ARGC[$n]=4 ARGV[$n]="-a -v 2 x y"
for ((i=1; i<=n; i++))
do	set -- ${ARGV[$i]}
	OPTIND=0
	while	getopts -a tst "av:" OPT
	do	:
	done
	if	[[ $OPTIND != ${ARGC[$i]} ]]
	then	err_exit "\$OPTIND after getopts loop incorrect -- expected ${ARGC[$i]}, got $OPTIND"
	fi
done
options=ab:c
optarg=foo
set -- -a -b $optarg -c bar
while	getopts $options opt
do	case $opt in
	a|c)	[[ $OPTARG ]] && err_exit "getopts $options \$OPTARG for flag $opt failed, expected \"\", got \"$OPTARG\"" ;;
	b)	[[ $OPTARG == $optarg ]] || err_exit "getopts $options \$OPTARG failed -- \"$optarg\" expected, got \"$OPTARG\"" ;;
	*)	err_exit "getopts $options failed -- got flag $opt" ;;
	esac
done

[[ $($SHELL 2> /dev/null -c 'readonly foo; getopts a: foo -a blah; echo foo') == foo ]] || err_exit 'getopts with readonly variable causes script to abort'

unset a
{ read -N3 a; read -N1 b;}  <<!
abcdefg
!
exp=abc
[[ $a == $exp ]] || err_exit "read -N3 here-document failed -- expected '$exp', got '$a'"
exp=d
[[ $b == $exp ]] || err_exit "read -N1 here-document failed -- expected '$exp', got '$b'"
read -n3 a <<!
abcdefg
!
exp=abc
[[ $a == $exp ]] || err_exit "read -n3 here-document failed -- expected '$exp', got '$a'"
#(print -n a;sleep 1; print -n bcde) | { read -N3 a; read -N1 b;}
#[[ $a == $exp ]] || err_exit "read -N3 from pipe failed -- expected '$exp', got '$a'"
#exp=d
#[[ $b == $exp ]] || err_exit "read -N1 from pipe failed -- expected '$exp', got '$b'"
#(print -n a;sleep 1; print -n bcde) | read -n3 a
#exp=a
#[[ $a == $exp ]] || err_exit "read -n3 from pipe failed -- expected '$exp', got '$a'"
#rm -f $tmp/fifo
#if	mkfifo $tmp/fifo 2> /dev/null
#then	(print -n a; sleep 1;print -n bcde)  > $tmp/fifo &
#	{
#	read -u5 -n3 -t2 a || err_exit 'read -n3 from fifo timedout'
#	read -u5 -n1 -t2 b || err_exit 'read -n1 from fifo timedout'
#	} 5< $tmp/fifo
#	exp=a
#	[[ $a == $exp ]] || err_exit "read -n3 from fifo failed -- expected '$exp', got '$a'"
#	rm -f $tmp/fifo
#	mkfifo $tmp/fifo 2> /dev/null
#	(print -n a; sleep 1;print -n bcde) > $tmp/fifo &
#	{
#	read -u5 -N3 -t2 a || err_exit 'read -N3 from fifo timed out'
#	read -u5 -N1 -t2 b || err_exit 'read -N1 from fifo timedout'
#	} 5< $tmp/fifo
#	exp=abc
#	[[ $a == $exp ]] || err_exit "read -N3 from fifo failed -- expected '$exp', got '$a'"
#	exp=d
#	[[ $b == $exp ]] || err_exit "read -N1 from fifo failed -- expected '$exp', got '$b'"
#fi
#rm -f $tmp/fifo

function longline
{
	integer i
	for((i=0; i < $1; i++))
	do	print argument$i
	done
}
# test that 'command' can result from expansion and can be overridden by a function
expect=all\ ok
c=command
actual=$("$c" echo all ok 2>&1)
[[ $actual == "$expect" ]] || err_exit '"command" utility from "$c" expansion not executed' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
set -- command echo all ok
actual=$("$@" 2>&1)
[[ $actual == "$expect" ]] || err_exit '"command" utility from "$@" expansion not executed' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
# must use 'eval' in following test as 'command' is integrated in parser and ksh likes to parse ahead
actual=$(function command { echo all ok; }; eval 'command echo all wrong')
[[ $actual == "$expect" ]] || err_exit '"command" failed to be overridden by function' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
actual=$(function command { echo all ok; }; "$c" echo all wrong)
[[ $actual == "$expect" ]] || err_exit '"command" from "$c" expansion failed to be overridden by function' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
set -- command echo all wrong
actual=$(function command { echo all ok; }; "$@")
[[ $actual == "$expect" ]] || err_exit '"command" from "$@" expansion failed to be overridden by function' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
# test command -x option
integer sum=0 n=10000
if	! ${SHELL:-ksh} -c 'print $#' count $(longline $n) > /dev/null  2>&1
then	for i in $(command command -x ${SHELL:-ksh} -c 'print $#;[[ $1 != argument0 ]]' count $(longline $n) 2> /dev/null)
	do	((sum += $i))
	done
	(( sum == n )) || err_exit "command -x processed only $sum arguments"
	command -p command -x ${SHELL:-ksh} -c 'print $#;[[ $1 == argument0 ]]' count $(longline $n) > /dev/null  2>&1
	[[ $? != 1 ]] && err_exit 'incorrect exit status for command -x'
fi
# test command -x option with extra arguments
integer sum=0 n=10000
if      ! ${SHELL:-ksh} -c 'print $#' count $(longline $n) > /dev/null  2>&1
then    for i in $(command command -x ${SHELL:-ksh} -c 'print $#;[[ $1 != argument0 ]]' count $(longline $n) one two three) #2> /dev/null)
	do      ((sum += $i))
	done
	(( sum  > n )) || err_exit "command -x processed only $sum arguments"
	(( (sum-n)%3==0 )) || err_exit "command -x processed only $sum arguments"
	(( sum == n+3)) && err_exit "command -x processed only $sum arguments"
	command -p command -x ${SHELL:-ksh} -c 'print $#;[[ $1 == argument0 ]]' count $(longline $n) > /dev/null  2>&1
	[[ $? != 1 ]] && err_exit 'incorrect exit status for command -x'
fi
# test for debug trap
[[ $(typeset -i i=0
	trap 'print $i' DEBUG
	while (( i <2))
	do	(( i++))
	done) == $'0\n0\n1\n1\n2' ]]  || err_exit  "DEBUG trap not working"
getconf UNIVERSE - ucb
[[ $($SHELL -c 'echo -3') == -3 ]] || err_exit "echo -3 not working in ucb universe"
typeset -F3 start_x=SECONDS total_t delay=0.02
typeset reps=50 leeway=5
sleep $(( 2 * leeway * reps * delay )) |
for (( i=0 ; i < reps ; i++ ))
do	read -N1 -t $delay
done
(( total_t = SECONDS - start_x ))
if	(( total_t > leeway * reps * delay ))
then	err_exit "read -t in pipe taking $total_t secs - $(( reps * delay )) minimum - too long"
elif	(( total_t < reps * delay ))
then	err_exit "read -t in pipe taking $total_t secs - $(( reps * delay )) minimum - too fast"
fi
$SHELL -c 'sleep $(printf "%a" .95)' 2> /dev/null || err_exit "sleep doesn't except %a format constants"
$SHELL -c 'test \( ! -e \)' 2> /dev/null ; [[ $? == 1 ]] || err_exit 'test \( ! -e \) not working'
[[ $(ulimit) == "$(ulimit -fS)" ]] || err_exit 'ulimit is not the same as ulimit -fS'
tmpfile=$tmp/file.2
print $'\nprint -r -- "${.sh.file} ${LINENO} ${.sh.lineno}"' > $tmpfile
[[ $( . "$tmpfile") == "$tmpfile 2 1" ]] || err_exit 'dot command not working'
print -r -- "'xxx" > $tmpfile
[[ $($SHELL -c ". $tmpfile"$'\n print ok' 2> /dev/null) == ok ]] || err_exit 'syntax error in dot command affects next command'

float sec=$SECONDS del=4
exec 3>&2 2>/dev/null
$SHELL -c "( sleep 1; kill -ALRM \$\$ ) & sleep $del" 2> /dev/null
exitval=$?
(( sec = SECONDS - sec ))
exec 2>&3-
(( exitval )) && err_exit "sleep doesn't exit 0 with ALRM interrupt"
(( sec > (del - 1) )) || err_exit "ALRM signal causes sleep to terminate prematurely -- expected 3 sec, got $sec"
typeset -r z=3
y=5
for i in 123 z  %x a.b.c
do	( unset $i)  2>/dev/null && err_exit "unset $i should fail"
done
a=()
for i in y y  y[8] t[abc] y.d a.b  a
do	unset $i ||  print -u2  "err_exit unset $i should not fail"
done
[[ $($SHELL -c 'y=3; unset 123 y;print $?$y') == 1 ]] 2> /dev/null ||  err_exit 'y is not getting unset with unset 123 y'
[[ $($SHELL -c 'trap foo TERM; (trap;(trap) )') == 'trap -- foo TERM' ]] || err_exit 'traps not getting reset when subshell is last process'

n=$(printf "%b" 'a\0b\0c' | wc -c)
(( n == 5 )) || err_exit '\0 not working with %b format with printf'

t=$(ulimit -t)
[[ $($SHELL -c 'ulimit -v 15000 2>/dev/null; ulimit -t') == "$t" ]] || err_exit 'ulimit -v changes ulimit -t'

$SHELL 2> /dev/null -c 'cd ""' && err_exit 'cd "" not producing an error'
[[ $($SHELL 2> /dev/null -c 'cd "";print hi') != hi ]] && err_exit 'cd "" should not terminate script'

builtin cat
out=$tmp/seq.out
for ((i=1; i<=11; i++)); do print "$i"; done >$out
cmp -s <(print -- "$($bincat<( $bincat $out ) )") <(print -- "$(cat <( cat $out ) )") || err_exit "builtin cat differs from $bincat"
builtin -d cat

[[ $($SHELL -c '{ printf %R "["; print ok;}' 2> /dev/null) == ok ]] || err_exit $'\'printf %R "["\' causes shell to abort'

v=$( $SHELL -c $'
	trap \'print "usr1"\' USR1
	trap exit USR2
	sleep 1 && {
		kill -USR1 $$ && sleep 1
		kill -0 $$ 2>/dev/null && kill -USR2 $$
	} &
	sleep 2 | read
	echo done
' ) 2> /dev/null
[[ $v == $'usr1\ndone' ]] ||  err_exit 'read not terminating when receiving USR1 signal'

mkdir $tmp/tmpdir1
cd $tmp/tmpdir1
pwd=$PWD
cd ../tmpdir1
[[ $PWD == "$pwd" ]] || err_exit 'cd ../tmpdir1 causes directory to change'
cd "$pwd"
mv $tmp/tmpdir1 $tmp/tmpdir2
cd ..  2> /dev/null || err_exit 'cannot change directory to .. after current directory has been renamed'
[[ $PWD == "$tmp" ]] || err_exit 'after "cd $tmp/tmpdir1; cd .." directory is not $tmp'

cd "$tmp"
mkdir $tmp/tmpdir2/foo
pwd=$PWD
cd $tmp/tmpdir2/foo
mv $tmp/tmpdir2 $tmp/tmpdir1
cd ../.. 2> /dev/null || err_exit 'cannot change directory to ../.. after current directory has been renamed'
[[ $PWD == "$tmp" ]] || err_exit 'after "cd $tmp/tmpdir2; cd ../.." directory is not $tmp'
cd "$tmp"
rm -rf tmpdir1

cd /etc
cd ..
[[ $(pwd) == / ]] || err_exit 'cd /etc;cd ..;pwd is not /'
cd /etc
cd ../..
[[ $(pwd) == / ]] || err_exit 'cd /etc;cd ../..;pwd is not /'
cd /etc
cd .././..
[[ $(pwd) == / ]] || err_exit 'cd /etc;cd .././..;pwd is not /'
cd /usr/bin
cd ../..
[[ $(pwd) == / ]] || err_exit 'cd /usr/bin;cd ../..;pwd is not /'
cd /usr/bin
cd ..
[[ $(pwd) == /usr ]] || err_exit 'cd /usr/bin;cd ..;pwd is not /usr'
cd "$tmp"
if	mkdir $tmp/t1
then	(
		cd $tmp/t1
		> real_t1
		(
			cd ..
			mv t1 t2
			mkdir t1
		)
		[[ -f real_t1 ]] || err_exit 'real_t1 not found after parent directory renamed in subshell'
	)
fi
cd "$tmp"

$SHELL +E -i <<- \! && err_exit 'interactive shell should not exit 0 after false'
	false
	exit
!

if	kill -L > /dev/null 2>&1
then	[[ $(kill -l HUP) == "$(kill -L HUP)" ]] || err_exit 'kill -l and kill -L are not the same when given a signal name'
	[[ $(kill -l 9) == "$(kill -L 9)" ]] || err_exit 'kill -l and kill -L are not the same when given a signal number'
	[[ $(kill -L) == *'9) KILL'* ]] || err_exit 'kill -L output does not contain 9) KILL'
fi

export ENV=/./dev/null
v=$($SHELL 2> /dev/null +o rc -ic $'getopts a:bc: opt --man\nprint $?')
[[ $v == 2* ]] || err_exit 'getopts --man does not exit 2 for interactive shells'

read baz <<< 'foo\\\\bar'
[[ $baz == 'foo\\bar' ]] || err_exit 'read of foo\\\\bar not getting foo\\bar'

: ~root
[[ $(builtin) == *.sh.tilde* ]] &&  err_exit 'builtin contains .sh.tilde'

# ======
# Check that I/O errors are detected <https://github.com/att/ast/issues/1093>
actual=$(
    {
        (
            trap "" PIPE
            for ((i = SECONDS + 1; SECONDS < i; )); do
                print hi || {
                    print $? >&2
                    exit
                }
            done
        ) | true
    } 2>&1
)
expect='1'
if [[ $actual != "$expect" ]]
then
    err_exit "I/O error not detected: expected $(printf %q "$expect"), got $(printf %q "$actual")"
fi

# ======
# 'times' builtin

expect=$'0m00.0[0-9][0-9]s 0m00.0[0-9][0-9]s\n0m00.000s 0m00.000s'
actual=$("$SHELL" -c times)
[[ $actual == $expect ]] || err_exit "times output: expected $(printf %q "$expect"), got $(printf %q "$actual")"

expect=$'*: times: too many operands'
actual=$(set +x; eval 'times Extra Args' 2>&1)
[[ $actual == $expect ]] || err_exit "times with args: expected $(printf %q "$expect"), got $(printf %q "$actual")"

# ======
# 'whence' builtin
PATH=$tmp:$PATH $SHELL <<-\EOF || err_exit "'whence' gets wrong path on init"
	wc=$(whence wc)
	[[ -x $wc ]]
EOF

# ======
# `builtin -d` should not delete special builtins
(builtin -d export 2> /dev/null
PATH=/dev/null
whence -q export) || err_exit '`builtin -d` deletes special builtins'

# ======
# `read -r -d` should not ignore `-r`
printf '\\\000' | read -r -d ''
[[ $REPLY == $'\\' ]] || err_exit "read -r -d '' ignores -r"

# ======
# Preceding a special builtin with `command` should disable its special properties
foo=BUG command eval ':'
[[ $foo == BUG ]] && err_exit '`command` fails to disable the special properties of special builtins'

# ======
# 'whence -f' should ignore functions
foo_bar() { true; }
actual="$(whence -f foo_bar)"
whence -f foo_bar >/dev/null && err_exit "'whence -f' doesn't ignore functions (got '$(printf %q "$actual")')"

# whence -vq/type -q must be tested as well
actual="$(type -f foo_bar 2>&1)"
type -f foo_bar >/dev/null 2>&1 && err_exit "'type -f' doesn't ignore functions (got '$(printf %q "$actual")')"
type -qf foo_bar && err_exit "'type -qf' doesn't ignore functions"

# Test the exit status of 'whence -q'
mkdir "$tmp/fakepath"
ln -s "${ whence -p cat ;}" "$tmp/fakepath/"
ln -s "${ whence -p ls ;}" "$tmp/fakepath/"
save_PATH=$PATH
PATH=$tmp/fakepath
whence -q cat nonexist ls && err_exit "'whence -q' has the wrong exit status"
whence -q cat nonexist && err_exit "'whence -q' has the wrong exit status"
whence -q nonexist && err_exit "'whence -q' has the wrong exit status"
PATH=$save_PATH

# ======
# 'cd ../.foo' should not exclude the '.' in '.foo'
# https://bugzilla.redhat.com/889748
expect=$tmp/.ssh
actual=$( HOME=$tmp
	mkdir ~/.ssh 2>&1 &&
	cd ~/.ssh 2>&1 &&
	cd ../.ssh 2>&1 &&
	print -r -- "$PWD" )
[[ $actual == "$expect" ]] || err_exit 'changing to a hidden directory using a path that contains the parent directory (..) fails' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
expect=$tmp/.java
actual=$( mkdir "$tmp/java" "$tmp/.java" 2>&1 &&
	cd "$tmp/.java" 2>&1 &&
	cd ../.java 2>&1 &&
	pwd )
[[ $actual == "$expect" ]] || err_exit 'the dot (.) part of the directory name is being stripped' \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

# check that we cannot cd into a regular file and get misbehaviour
: > "$tmp/regular_file"
expect=": cd: $tmp/regular_file: [Not a directory]"
actual=$(cd "$tmp/regular_file" 2>&1)
e=$?
[[ e -eq 1 && $actual == *"$expect" ]] || err_exit 'can cd into a regular file' \
	"(expected status 1 and msg ending in $(printf %q "$expect"), got status $e and msg $(printf %q "$actual"))"

# https://bugzilla.redhat.com/1102627
if	[[ $(id -u) == '0' ]]
then	print -u2 -r "${Command}[$LINENO]: warning: running as root: skipping tests involving directory search (x) permission"
else
mkdir -m 600 "$tmp/no_x_dir"
expect=": cd: $tmp/no_x_dir: [Permission denied]"
actual=$(cd "$tmp/no_x_dir" 2>&1)
e=$?
[[ e -eq 1 && $actual == *"$expect" ]] || err_exit 'can cd into a directory without x permission bit (absolute path arg)' \
	"(expected status 1 and msg ending in $(printf %q "$expect"), got status $e and msg $(printf %q "$actual"))"
expect=": cd: no_x_dir: [Permission denied]"
actual=$(cd "$tmp" 2>&1 && cd "no_x_dir" 2>&1)
e=$?
[[ e -eq 1 && $actual == *"$expect" ]] || err_exit 'can cd into a directory without x permission bit (relative path arg)' \
	"(expected status 1 and msg ending in $(printf %q "$expect"), got status $e and msg $(printf %q "$actual"))"
rmdir "$tmp/no_x_dir"	# on HP-UX, 'rm -rf $tmp' won't work unless we rmdir this or fix the perms
fi

# https://bugzilla.redhat.com/1133582
expect=$HOME
actual=$({ a=`cd; pwd`; } >&-; print -r -- "$a")
[[ $actual == "$expect" ]] || err_exit "'cd' broke old-form command substitution with outer stdout closed" \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"
actual=$({ a=$(cd; pwd); } >&-; print -r -- "$a")
[[ $actual == "$expect" ]] || err_exit "'cd' broke new-form command substitution with outer stdout closed" \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

# CDPATH was not ignored by 'cd ./dir': https://github.com/ksh93/ksh/issues/151
expect=': cd: ./dev: [No such file or directory]'
actual=$( (CDPATH=/ cd -P ./dev && pwd) 2>&1 )
let "(e=$?)==1" && [[ $actual == *"$expect" ]] || err_exit "CDPATH not ignored by cd ./dir" \
	"(expected *$(printf %q "$expect") with status 1, got $(printf %q "$actual") with status $e)"

# ======
# 'readonly' should set the correct scope when creating variables in functions
unset foo
(
	function test_func
	{
		readonly foo="bar"
		[[ $foo = "bar" ]]
	}
	test_func
) || err_exit "readonly variable is not assigned a value inside functions"

# ======
# Test the output of nonstandard date formats with 'printf %T'
[[ $(printf '%(%l)T') == $(printf '%(%_I)T') ]] || err_exit 'date format %l is not the same as %_I'
[[ $(printf '%(%k)T') == $(printf '%(%_H)T') ]] || err_exit 'date format %k is not the same as %_H'
[[ $(printf '%(%f)T') == $(printf '%(%Y.%m.%d-%H:%M:%S)T') ]] || err_exit 'date format %f is not the same as %Y.%m.%d-%H:%M:%S'
[[ $(printf '%(%q)T') == $(printf '%(%Qz)T') ]] && err_exit 'date format %q is the same as %Qz'

# Test manually specified blank and zero padding with 'printf  %T'
(
	IFS=$'\n\t' # Preserve spaces in output
	for i in d e H I j J k l m M N S U V W y; do
		for f in ' ' 0; do
			if [[ $f == ' ' ]]; then
				padding='blank'
				specify='_'
			else
				padding='zero'
				specify='0'
			fi
			actual="$(printf "%(%${specify}${i})T" 'January 1 6AM 2001')"
			expect="${f}${actual:1}"
			[[ $expect != $actual ]] && err_exit "Specifying $padding padding with format '%$i' doesn't work (expected '$expect', got '$actual')"
		done
	done
)

# ======
# Test various AST getopts usage/manual outputs

OPTIND=1
USAGE=$'
[-s8?
@(#)$Id: foo (ksh93) 2020-07-16 $
]
[+NAME?foo - bar]
[+DESC?Baz.]
[x:xylophone?Lorem.]
[y:ypsilon?Ipsum.]
[z:zeta?Sit.]

[ name=value ... ]
-y [ name ... ]

[+SEE ALSO?\bgetopts\b(1)]
'

function testusage {
	getopts "$USAGE" dummy 2>&1
}

actual=$(testusage -\?)
expect='Usage: testusage [-xyz] [ name=value ... ]
   Or: testusage -y [ name ... ]
 Help: testusage [ --help | --man ] 2>&1'
[[ $actual == "$expect" ]] || err_exit "getopts: '-?' output" \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

actual=$(testusage --\?x)
expect='Usage: testusage [ options ] [ name=value ... ]
   Or: testusage -y [ name ... ]
 Help: testusage [ --help | --man ] 2>&1
OPTIONS
  -x, --xylophone Lorem.'
[[ $actual == "$expect" ]] || err_exit "getopts: '--?x' output" \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

actual=$(testusage --help)
expect='Usage: testusage [ options ] [ name=value ... ]
   Or: testusage -y [ name ... ]
 Help: testusage [ --help | --man ] 2>&1
OPTIONS
  -x, --xylophone Lorem.
  -y, --ypsilon   Ipsum.
  -z, --zeta      Sit.'
[[ $actual == "$expect" ]] || err_exit "getopts: '--help' output" \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

actual=$(testusage --man)
expect='NAME
  foo - bar

SYNOPSIS
  foo [ options ] [ name=value ... ]
  foo -y [ name ... ]

DESC
  Baz.

OPTIONS
  -x, --xylophone Lorem.
  -y, --ypsilon   Ipsum.
  -z, --zeta      Sit.

SEE ALSO
  getopts(1)

IMPLEMENTATION
  version         foo (ksh93) 2020-07-16'
[[ $actual == "$expect" ]] || err_exit "getopts: '--man' output" \
	"(expected $(printf %q "$expect"), got $(printf %q "$actual"))"

# ======
# 'sleep -s' should work in interactive shells when seconds > 30.
sleepsig="$tmp/sleepsig.sh"
cat >| "$sleepsig" << 'EOF'
sleep -s 31 &
sleep .1
kill -CONT $!
sleep .1
if kill -0 $!; then
	kill -TERM $! # Don't leave a lingering background process
	exit 1
else
	exit 0
fi
EOF
"$SHELL" -i "$sleepsig" 2> /dev/null || err_exit "'sleep -s' doesn't work with intervals of more than 30 seconds"

# ==========
# Builtins should handle unrecognized options correctly
while IFS= read -r bltin <&3
do	case $bltin in
	echo | test | true | false | \[ | : | getconf | */getconf | uname | */uname | login | newgrp)
		continue ;;
	/*/*)	expect="Usage: ${bltin##*/} "
		actual=$({ PATH=${bltin%/*}; "${bltin##*/}" --this-option-does-not-exist; } 2>&1) ;;
	*/*)	err_exit "strange path name in 'builtin' output: $(printf %q "$bltin")"
		continue ;;
	*)	expect="Usage: $bltin "
		actual=$({ "${bltin}" --this-option-does-not-exist; } 2>&1) ;;
	esac
	[[ $actual == *"$expect"* ]] || err_exit "$bltin should show usage info on unrecognized options" \
			"(expected string containing $(printf %q "$expect"), got $(printf %q "$actual"))"
done 3< <(builtin)

# ======
# The 'alarm' builtin could make 'read' crash due to IFS table corruption caused by unsafe asynchronous execution.
# https://bugzilla.redhat.com/1176670
if	(builtin alarm) 2>/dev/null
then	got=$( { "$SHELL" -c '
		builtin alarm
		alarm -r alarm_handler +.005
		i=0
		function alarm_handler.alarm
		{
			let "(++i) > 20" && exit
		}
		while :; do
			echo cargo,odds and ends,jetsam,junk,wreckage,castoffs,sea-drift
		done | while IFS="," read arg1 arg2 arg3 arg4 junk; do
			:
		done
	'; } 2>&1)
	((!(e = $?))) || err_exit 'crash with alarm and IFS' \
		"(got status $e$( ((e>128)) && print -n / && kill -l "$e"), $(printf %q "$got"))"
fi

# ======
exit $((Errors<125?Errors:125))
