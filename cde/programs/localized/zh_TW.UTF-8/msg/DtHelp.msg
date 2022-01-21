$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dthelp.msg
$ **
$ **  Project:     CDE 1.0 Help
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for DtHelp 
$ **
$ **
$ *****************************************************************************
$ **
$ **     (c) Copyright 1990 Hewlett-Packard Company
$ **         All Rights reserved
$ **
$ **
$ **     There are two types of messages in this file:
$ **
$ **     1) Messages that appear in dialogs or are displayed to the user.
$ **        These messages are the default and they should ALL BE LOCALIZED.
$ **        Note that these messages do NOT have any identification.
$ **
$ **     2) Messages that should not be localized.
$ **        These messages are marked with DO NOT TRANSLATE THESE MESSAGES.
$ **
$ *****************************************************************************
$ **
$ **
$ **  ------------------------- MODIFICATION RECORD --------------------------
$ *   Major Mods, 3/26/92 in preperation for the NLS package release on the 
$ *               27th.  (Mike Wilson).
$ *
$ *   Major Mods, 6/10/94 in prep for Cde Message Catalog Freeze
$ *
$ **  ----------------------- MODIFICATION RECORD END ------------------------
$ *****************************************************************************
$ *************************************<+>*************************************

$set 2
$ *****  Module: HelpDialog.c  and a few from HelpQuickD.c *****
$ 
$ These Messages appear in the pulldown menus for Cde Help General Help
$ dialog widget.
$ 
$ They come in pairs where the first is the menu name (e.g. 1 Print...) and the
$ second is the mnemonic (e.g. 2 P).  
$ 
$ Messages 1 through 6 are the pulldown menus for the File menu.
1 トパ(P)...
2 P
3 驨椲(C)
4 C
5 瞅隞槉嵺(W)...
6 W
$ Messages 7 through 8 are the pulldown menus for the Edit menu.
7 闀蕍(C)
8 C 
$ Messages 9 through 10 are the pulldown menus for the Search menu.
9 袎鰱(I)...
10 I
$ Messages 11 through 16 are the pulldown menus for the Navigate menu.
11 媊沓饜纕(T)
12 T
13 酈ホ銌硻(B)
14 B
15 奡蠊(H)...
16 H
$ Messages 17 through 28 are the pulldown menus for the Help menu.
17 颮羏(v) - 囷え赮伢諰咭
18 v
19 げ蠊(C)
20 C
21 齡汃(T)
22 T
23 棤嘵(R)
24 R
25 僶趡昑耰薏(M)
26 M
27 驨卼赮伢諰咭(A)
28 A
$ 
$ Messages 29 through 36 are the menu labels and mnemonics for for the 
$ Help Dialog.
29 麔淰(F)
30 F
31 銌硻(S)
32 S
33 硻郲(N)
34 N
35 赮伢諰咭(H)
36 H
37 蹌藟(E)
38 E
$ 
$ 
$ >>>>> Skip #39 through #49
$ 
$ Messages 50 through 55 are used to display formatting errors within the
$ helps dialog and quick help dialog widgets.
$ 
50 А⻌罶涷隓恄眭冈襲﹞
51 棬鳷⺌⻌罶涷隓恄眭冈襲﹞
52 轃譫葰伢郟隓恄眭冈襲﹞睎邴錛衭柁轃譫葰伢郟⑴逑攜Бョ﹜迖旂\
儸銧骱﹞
53 齪А麔淰罶涷隓恄眭冈襲﹞睎邴錛衭柁轃譫葰伢郟⑴逑攜Бョ﹜迖\
旂儸銧骱﹞
54 赮伢諰咭饜纕隓恄眭冈襲﹞
55 ⑶ト ID ⻏殦攜Бョ”
$ 
$ Messages 56 and 67 are displayed when a hypertext link type is selected but
$ not supported within the current application.
$ 
56 楙堈鶈え嶂冈攜齬葰睎邴藞抻柁熅齪А椵廎﹞
57 楙堈鶈え嶂冈攜齬葰椵廎轃譫葰伢郟衢逑﹞
$ 
$ Messages 58 through 62  are used when bad or null help volumes or 
$ locationId's are used.
$ 
58 睎錛衭柁轃譫赮伢諰咭⑴逑扽Е稹﹜迖ゝ⻏卼懱撋柁銌硻聤梏譫﹞驨Е稹轃譫赮伢諰咭柁罶媢﹜霘棤℡雰陔柁諰咭齪ス﹞\n
59 ゝ挴泂 ID ⻏殦﹞
60 ゝ挴泂赮伢諰咭晥忟﹞
61 赮伢諰咭晥忟”
62 ID ⻏殦”
$ 
$ >>>>> Skip #63 through #69
$ 
$ 
$ Message 70 is used when a null value for DtNtopicTitle is used.
$ 
70 饜纕簅纕攜Бョ﹞
$ 
$ $ New messages added after early msg cat freeze; not in order
80 挴泂柁赮伢諰咭麷倛隓淩﹞



$set 3
$ ****  Module: History.c ****
$ These messages are used as labels for the History Dialog.
1 赮伢諰咭 - 奡蠊廲ៜ嶂冈
2 廲ៜ蝝柁赮伢諰咭晥忟”
3 驨椲
4 赮伢諰咭
5 赮伢諰咭麔淰
6 轃譫葰伢郟
7 赮伢諰咭媢桾
8 廲ៜ蝝柁赮伢諰咭饜纕”
9 廲ៜ蝝柁赮伢諰咭麔淰”
10 廲ៜ蝝柁轃譫葰伢郟”
11 廲ៜ蝝柁赮伢諰咭媢桾饜纕”


$set 4
$ *****  Module: Print.c  *****
$ These messages are used as labels for the Print Dialog.
$ 1: dialog title
1 赮伢諰咭 - トパ
$ 10-12: standard printer dialog labels
10 パ玿鞥”
11 ソ禨”
12 玿韝簅纕郟簅纕”
$ 20-25: paper size label and sizes
20 訬痧騰麵”
21 Letter 8.5 x 11 in
22 Legal 8.5 x 14 in
23 Executive 7.25 x 10.5 in
24 A4 210 x 297 mm
25 B5 182 x 257 mm
$ 30-33: help volume-specific printing options
30 衭トパ柁饜纕
31 隃⺼饜纕
32 隃⺼饜纕縋嬬饜纕
33 げ蠊縋袎鰱
34 晥忟斕柁邴饜纕
$ 40-42: buttons at bottom of dialog
40 トパ
41 抻祤
42 赮伢諰咭
$ These messages are used to describe the kind of content to be printed
$ 50 "Help Volume: "
50 赮伢諰咭晥忟”
51 赮伢諰咭媢桾”
52 赮伢諰咭麔淰
$ 53 "Manual Page: "
53 轃譫葰伢郟”
54 蠆諟媢桾
$ Don't translate message 60 unless it is not an empty string
$ This is the default value that goes in the Printer field
$ 60 " "
$quote "
60 ""
$quote

$ Don't translate message 61
$ This is the default value that goes in the Copies field
61 1


$set 5 
$ *****  Module: GlobSearch.c  *****
$ Message 1 is the label used to label the dialog
1 赮伢諰咭 - 袎鰱銌硻
2 銌硻
3 隃⺼晥忟
$ DO NOT TRANSLATE MESSAGE 4; it is no longer used
$ " (%s)"
4  (%s)
5 邴晥忟
6 藞抻柁晥忟
7 藞抻晥忟...
8 䬷ざ
9 汒謽袎鰱
10 藣蘋罶涷”
11 虳芼
12 瞅沓銌硻
13 凭㶴銌硻
14 彘欐銌硻
15 驨椲
16 赮伢諰咭
17 筈萺晥忟... 岊怉 %d 堈
18 銌硻斕... 瑀瀦晥忟”%d 堈
19 岊攜怉袎鰱禋げ
20 汒謽袎鰱
21 藣蘋罶涷 "%s"
22 ゝ藞抻晥忟
23 皕譫巖藞抻銌硻藞禋
$ Do NOT translate messages 25-31
$quote "
$ " "
25 " "
26 "+"
27 "-"
$ "  +"
28 "  +"
$ "  -"
29 "  -"
$ 30 "       "
30 "       "
$ 31 "         "
31 "         "
$quote
$ DO translate messages 32 and above
$ kind of topic messages
32 Help Message
33 赮伢諰咭麔淰
34 葰伢諰咭郟
35 攜咭柁眭冈
$ specialized title of Search Volume Selection dialog
40 赮伢諰咭 - 銌硻晥忟藞謥
$ additional messages (late addition caused this ordering)
50 岊攜怉袎鰱禋げ﹞霘閰箹銌硻邴晥忟﹞
51 岊攜怉袎鰱禋げ﹞霘閰箹囷え怬鱗驨耰А﹞
$ additional messages (later addition caused this ordering)
$ These messages are the braces that go around the current volume name
$ in the index search dialog.  They are kept in the message catalog
$ in case they need to be localized.
60 (
61 )


$set 6
$ *****  Module: HelpAccess.c  *****
$ These messages are used for the Help on Help dialog in Cde Help widgets.
1 驨赮伢諰咭柁赮伢諰咭 
2 トパ ...
3 驨椲
4 楙堈鶈え嶂冈攜齬葰＞驨赮伢諰咭柁赮伢諰咭＝衢逑!
5 酈ホ銌硻
6 赮伢諰咭 ...


$set 7
$ *****  Module: Main.c & Util.c & (dthelpview CDE 1.0  *****
$ These messages are used by the dthelpview program.  They need to be 
$ localized for dthelpview, however, they are not directly used by libDtHelp
$ Messages 1 through 7 are command line usage response messages.
$ Do NOT translate the option name (e.g. -helpVolume).  DO translate
$ the argument descriptor name (e.g. <Help Volume File>)
1 え恄”%s...\n
2 \t-helpVolume <Help Volume File>\n
3 \t-locationId  <ID>\n
5 \t-file  <ASCII Text File>\n
6 \t-man\n
7 \t-manPage <Unix Man Page>\n\n\n
$ man page dialog
11 轃譫葰伢郟
12 轃譫葰伢郟”
13 䬷ざ轃譫葰伢郟
$ button labels
16 廎忒
17 驨椲
18 酈ホ銌硻
19 トパ ...
$ title of helpview window
20 赮伢諰咭髲砫蟟


$set 8
$ *****  Module: HelpUtil.c  *****
$ Message 1 is the label used in the definition link dialog box 
$ (e.g. Quick help close button)
2 驨椲
3 蠡楶蠆諟”隓恄庉抻僶趡\nDtHelpReturnSelectedWidget 斕黫﹞\n
4 蠡楶蠆諟”隓恄庉抻耰薏\nDtHelpReturnSelectedWidget() 斕黫﹞\n
5 赮伢諰咭蠆諟 
$ Messages 10 and up were added after message catalogs were taken
$ for translation.  They are not in any order or chosen location.
10 羼鰹欹⺼
11 攜衭欹⺼
12 赮伢諰咭晥忟裱欹⺼纂堈杬麟伀ボ﹞\n伀ボ '%s' ゝ泂氂﹞
13 赮伢諰咭晥忟裱欹⺼纂堈杬麟伀ボ﹞\n珜藹Еツ摽裱﹜⺌棬欹⺼杬麟柁衢逑揧驨椲﹞\n杬麟珜” %s
$ End Message set 8


$set 9
$ *****  Module: PathArea.c  *****
$ These messages are used in the general Help Dialog Widget.
$ Message 1 is the label used to label Topic Tree Area  
1 晥忟”
$ Messages 2 though 5 are used in the Button Box area of our general 
$ help dialog.
2 酈ホ銌硻
3 奡蠊...
4 袎鰱...
5 煄嬬


$set 10 
$ *****  Module: VolSelect.c  *****
$ Message 1 is the default label used to label the volume selection dialog.
1 赮伢諰咭 - 晥忟藞謥
2 赮伢諰咭晥忟
3 霘藞謥纂堈迖ロ堈赮伢諰咭晥忟
4 驨椲
5 赮伢諰咭


$set 11
$ *****  Module: HelpQuickD.c  *****
$ These messages are used as labels for the quick help dialog.
1 驨椲
2 彶ロ ...
3 酈ホ銌硻
4 トパ ...
5 赮伢諰咭 ...

$set 99
$    DO NOT TRANSLATE THESE MESSAGES
$    DO NOT CHANGE THESE MESSAGES
$    DO NOT LOCALIZE THESE MESSAGES
$    These messages are used for the version information.
$quote "
1 "@(#)version_goes_here"
2 "\n@(#)Message catalog source $XConsortium: DtHelp.msg /main/3 1995/11/08 14:03:11 rswiston $"

