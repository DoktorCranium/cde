$ $XConsortium: dthelpprint.msg /main/3 1995/11/08 14:06:41 rswiston $
$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dthelpprint.msg
$ **
$ **  Project:     Cde1 Help
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for dthelpprint
$ **
$ **
$ *****************************************************************************
$ **
$ ** (c) Copyright 1993, 1994 Hewlett-Packard Company
$ ** (c) Copyright 1993, 1994 International Business Machines Corp.
$ ** (c) Copyright 1993, 1994 Sun Microsystems, Inc.
$ ** (c) Copyright 1993, 1994 Unix System Labs, Inc.,a subsidiary of Novell,Inc.
$ **         All Rights reserved
$ **
$ **
$ **     There are two types of messages in this file:
$ **
$ **     1) Messages that appear in printed output
$ **        These messages are the default and they should all be localized.
$ **        These messages are marked with LOCALIZE THESE MESSAGES.
$ **
$ **     2) Messages that should not be localized.
$ **        These messages are marked with DO NOT LOCALIZE THESE MESSAGES.
$ **
$ *****************************************************************************
$ **
$ **
$ **  ------------------------- MODIFICATION RECORD --------------------------
$ *   Major Mods, 7/11/94 for dthelpprint
$ *
$ **  ----------------------- MODIFICATION RECORD END ------------------------
$ *****************************************************************************
$ *************************************<+>*************************************

$ Use the double quote char around all messages
$quote "

$set 2
$ *****  Module: PrintUtil.c *****
$ 

$set 3
$ *****  Module: PrintTopics.c *****
$ 
$ ** LOCALIZE THESE MESSAGES **
1 "%s 蠆諟”赮伢諰咭麷伀旂饜纕﹜ɪゝ挴泂赮伢諰咭晥忟\n"
2 "%s 蠆諟”隓恄泂⻏赮伢諰咭晥忟 %s\n"
3 "%s 蠆諟”棯纕搢隉赮伢諰咭晥忟 %s\n"
4 "%s 蠆諟”奡襉忟崷殦⼇絫\n"
5 "%s 蠆諟”隓恄抻痤饜纕罶媢”\n晥忟 %s﹜Id ⻏殦 %s\n"
6 "%s 蠆諟”隓恄瞅絒穛渀迒麔淰 %s\n"
$ String used to replace $SECTNUM when printing the index section
10 "袎鰱"
$ String used to replace $SECTNUM when printing the table of contents section
11 "蠡晥玿眭"
$ ** DO NOT LOCALIZE THESE MESSAGES **
$ index entry, page number
20 "%s, %d\n"
$ index subentry, page number
21 "     %s, %d\n"
$ location ID associated with the index in the TOC maintained by dthelpprint
30 "__GENERATED-INDEX"
$ string used by can't get a topic title associated with an index subentry
31 ""

$set 4
$ *****  Module: PrintManStrFile.c *****
$ 
$ ** LOCALIZE THESE MESSAGES **
1 "%s 蠆諟”赮伢諰咭麷伀旂А⻌﹜ɪゝ挴泂А⻌罶涷﹞\n"
2 "%s 蠆諟”赮伢諰咭麷伀旂棬鳷А⻌﹜ɪゝ挴泂А⻌罶涷﹞\n"
3 "%s 蠆諟”赮伢諰咭麷伀旂轃譫葰伢郟﹜ɪゝ挴泂轃譫葰伢郟﹞\n"
4 "%s 蠆諟”赮伢諰咭旂麔淰﹜ɪゝ挴泂赮伢諰咭麔淰﹞\n"
5 "%s 蠆諟”奡襉忟崷殦⼇絫﹞\n"

$set 5
$ *****  Module: Initialize.c *****
$ 
$ ** LOCALIZE THESE MESSAGES **
$ Messages 1 to 29: dthelpprint usage message
$ **DO NOT LOCALIZE** the command line option names (e.g. -copies).
$ **DO LOCALIZE** the option argument (e.g. number) and description.
1 "dthelpprint ２ 赮伢諰咭トパ嶂冈\n\n"
2 "囷え巖恄” dthelpprint [options]\n"
3 "祰戔ヵトパ柁藞禋”\n"
4 "\t-printer printername  袺囷え欄パ玿鞥\n"
5 "\t-copies number        袺トパ欄麔淰禨げ\n"
6 "\t-outputFile filename  渿藣罐嬣蘋ヾ麔淰\n"
7 "\t-paperSize size       嵁髱禳郟蟟騰麵欄眭冈蠡晥\n"
$ DO NOT LOCALIZE THE PAPER SIZE NAMES help_papersize_xxx
8 "\t\tsize = { help_papersize_letter|help_papersize_legal|\n"
9 "\t\t         help_papersize_executive|help_papersize_a4|help_papersize_b5}\n"
10 "\t-display displayname  䬷ざА搢抻痤罶鳲\n"
11 "\t-name                 抻痤罶鳲渀囷え柁嶂冈ボ磝\n"
12 "\t-class                抻痤罶鳲渀囷え柁嶉觕ボ磝\n"
13 "\t-xrm resourcestring   籧⼃柁罶鳲\n"
14 "祰戔袺トパ欄昡柁藞禋”\n"
15 "\t-helpType type        赮伢諰咭罶涷柁麷伀\n"
16 "\t\ttype = 0 (help volume), 1 (string), 2 (man page), 3 (help file)\n"
17 "\t-helpVolume volume    赮伢諰咭晥忟麔淰柁汒謽聤梏\n"
18 "\t-locationId location  晥忟斕赮伢諰咭饜纕柁ボ磝\n"
19 "\t-all                  トパ赮伢諰咭晥忟斕邴饜纕﹜げ蠊﹜昑袎鰱\n"
20 "\t-sub                  トパ饜纕 Id ⻏殦縋ツ楶騵纕\n"
21 "\t-one                  トパ饜纕 Id ⻏殦\n"
22 "\t-toc                  トパ赮伢諰咭晥忟げ蠊\n"
23 "\t-index                トパ赮伢諰咭晥忟袎鰱\n"
24 "\t-frontMatter          トパ赮伢諰咭晥忟虳巖呦禋\n"
25 "\t-manPage manpagename  轃譫齬葰郟柁ボ磝\n"
26 "\t-stringData string    袺トパ柁赮伢諰咭ヾ齪\n"
27 "\t-helpFile filename    讓屼赮伢諰咭ヾ齪柁麔淰\n"
28 "\t-jobTitle title       トパ齡汃欄簅纕А⻌\n"
29 "\t-topicTitle title     赮伢諰咭ヾ齪欄簅纕А⻌\n"
$ Warning and error messages
$ Do NOT localize the default size name help_papersize_letter
40 "%s 滙夼”攜ポ恄柁訬痧騰麵 '%s'﹞囷え help_papersize_letter﹞\n"
41 "%s 滙夼”谹韁訬痧騰麵﹝崼唄迖嬥唄圊﹞囷え help_papersize_letter﹞\n"
42 "%s 滙夼”隓恄瞅絒䬷ざ %s\n"
45 "蠆諟”隓恄珜穛渀迒麔淰崷殦奡襉忟﹞\n"
$ ** DO NOT LOCALIZE THESE MESSAGES **
$ arg order: directory prefix processid filecnt suffix
50 "%1$s/%2$s%3$d_%4$d%5$s"


$set 6
$ *****  Module: Main.c *****
$ 
$ ** LOCALIZE THESE MESSAGES **
1 "%s 蠆諟”赮伢諰咭麷伀 %d 攜髱.\n"



