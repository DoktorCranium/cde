$ "$XConsortium: dthello.msg /main/3 1995/11/08 14:06:18 rswiston $";

$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dthello.msg
$ **
$ **  Project:     HP DT login transition program (dthello) 
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for dthello
$ **
$ **
$ *****************************************************************************
$ **
$ **     (c) Copyright 1990, 1991 Hewlett-Packard Company
$ **     All Rights reserved
$ **
$ **
$ *****************************************************************************
$ *****************************************************************************
$ *************************************<+>*************************************

$ *************************************<L>*************************************
$ **  -----------------GENERAL LOCALIZATION NOTES SECTION---------------------
$ * Comment lines begin with a $ except $set which indicates the start of a 
$ * new set.
$ *
$ * Do not delete any comments; you may add comments for your use.
$ *
$ **  ----------------GENERAL LOCALIZATION NOTES SECTION END------------------
$ *************************************<L>*************************************

$set 2
$    THIS COMMENT FOR DT TEAM ONLY -- dthello.c --
$    Do not translate. Blank message, please ignore
$quote "
1 ""
$quote

$    Message #2 is no longer used. It has been replaced with messag #3
2 絒棬\n\
COSE\n\
囷え炟蘄頨\n\n

$    Default startup message (written before the contents
$    of the default file, /etc/copyright).
3 絒棬\n\
纂郫痐譫磣隉侇嗄蘄頨\n\n


$set 4
$    THIS COMMENT FOR DT TEAM ONLY -- dthello.c --
$    This entire set is for error messages
$    DO NOT TRANSLATE THESE MESSAGES
1 %s: 隓恄瞅絒䬷ざ\n
2 %s: 蝝渀⽁禕珜\n
3 %1$s: 蠢暐瑊騰麔淰禨珜 %2$d ﹜ 靬蝝 %3$s\n

$ Messages 4 and 5 are both used when there is a syntax error on
$ the command line invoking dthello
$ 
4 え恄” %s [-display <䬷ざ>] [-fg <⺪痝>] [-bg <⺪痝>]\\\n
5 [-font <А夆>] [-string <媢桾>] [-file <ボ磝>] [-timeout <秮>]\n

$ _DtMessage 6 occurs when an font can't be loaded
$  the likely causes: (1) the font was incorrectly specified
$                     (2) it is not available on this server
6 %1$s: 䬷ざ %2$s 攜洁蝚А夆 %3$s\n

7 %1$s”隓恄瞅絒麔淰 %2$s\n
8 %1$s”隓恄渿茯葔暋泂珜 %2$s﹜囷え %3$s﹞\n
9 %1$s”隓恄渿虳葔暋泂珜 %2$s＝囷え %3$s﹞\n
10 %s”(禳觰柁ヾ齪⺼)\n

$set 99
$    DO NOT TRANSLATE THESE MESSAGES
$    DO NOT CHANGE THESE MESSAGES
$    DO NOT LOCALIZE THESE MESSAGES
$    These messages are used for the version information.
$quote "
1 "@(#)version_goes_here"
2 "\n@(#)_DtMessage げ蠊坭鳲 $XConsortium: dthello.msg /main/3 1995/11/08 14:06:18 rswiston $:

