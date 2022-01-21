$ $XConsortium: dtterm.msg /main/3 1995/11/08 14:08:49 rswiston $
$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dtterm.msg
$ **
$ **  Project:     Common Desktop Environment dtterm
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for dtterm
$ **  Any additional messages are to be added to this file by hand,
$ **  and the associated index number placed in the code.
$ **
$ *****************************************************************************
$ **
$ **     (c) Copyright 1993, 1994 Hewlett-Packard Company
$ **     All Rights reserved
$ **
$ **
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

$ *****************************************************************************
$ 
$ ***** NOTE FOR MESSAGE CATALOG TRANSLATORS *****
$ 
$ There may be three types of messages in this file:
$ 
$ 1. Messages that appear in dialogs or are displayed to the user.
$ 
$     These messages are the default and they should ALL BE LOCALIZED.
$     Note that these messages do NOT have any identification (see the
$     comments for type 2 and 3 below).
$ 
$ 2. Messages that only appear in the DT error log file ($HOME?.dt/errorlog).
$ 
$     The localization of these messages is OPTIONAL.  These messages are
$     identified by the following:
$ 
$     MESSAGES xx-yy WILL ONLY APPEAR IN THE DT ERRORLOG FILE
$ 
$ 3. Messages that should not be localized.
$ 
$     These messages are identified by the following:
$ 
$     DO NOT TRANSLATE or CHANGE or LOCALIZE MESSAGES xx-yy
$ 
$ ***** END (NOTE FOR MESSAGE CATALOG TRANSLATORS) *****
$ 
$ ********** PROLOGUE ****************
$  Date    Name               Note
$ ======== =================  ===============================================
$ 03/15/94 B. May             Initial rev
$ 
$ *****************************************************************************

$set 1
$ ****** Module: DtTermMain.c 
$ Message 1 is the window menu addition - do not translate f.separator or
$ f.send_msg.  It will be used as the format string for a sprintf() command,
$ so it is necessary to double up on any percent signs ('%') that you
$ want to keep in the string.
$ Message 2 is an error message

1 \
	Sep             f.separator\n\
	籠葎\\衢逑\\犓  f.send_msg %d\
	
2 %s”-S 藞禋攜逑昑 -server 迖 -serverid 藞禋崷ポ囷え\n
3 嗈磞鞥

$set 2
$ ****** Module: DtTermSyntax.c 
$ These are the usage messages. 
$ DO NOT TRANSLATE Messages 37 or 41 ("End-of-list")

1 -/+132				絒棬/抻祤 80<->132 ⺼鼲葎
2 -/+aw				絒棬/抻祤⺌棬葎⺼
3 -bg color			茯葔籦⺪
4 -/+bs				驨椲/瞅絒嗈磞鞥茯葔藞抻柁籦⺪
5 -display displayname		衭椵稌柁 X ɵ峇蟟
6 -e command args		衭欹⺼柁杬麟
7 -fb fontset			嗊忟А夆
8 -fg color			虳葔籦⺪
9 -fn fontset			琣А夆
10 -geometry geom			槉嵺柁騰麵 (髓А蠣珜痼⻏) 縋⻏殦
11 -help				䬷ざヾ衧媢桾
12 -/+iconic			絒棬/攜絒棬頝踛
13 -/+j				絒棬/抻祤聧葎稂棬鳪郖
14 -/+kshMode			絒棬/抻祤 ksh 篲鳷
15 -/+l				絒棬/抻祤戀諲
16 -lf filename			戀諲麔ボ
17 -/+ls				絒棬/抻祤僳蘋 shell
18 -/+map				絒棬/抻祤 pty 藣罐柁髱鶈槉嵺
19 -/+mb				絒棬/抻祤饡盉褆
20 -ms color			挴簅籦⺪
21 -n string			挴泂頝踛ボ磝
22 -name string			剟鷓鞥骳坲﹝頝踛縋簅纕А⻌
23 -nb distance			挴泂⑶饡盉褆柁煻欏
24 -/+rw				絒棬/抻祤酈ホ葎⺼
25 -/+sb				絒棬/抻祤稂棬犓
26 -/+sf				絒棬/抻祤 SUN 衢逑耰
27 -sl number[s]			衭鬊Б柁稂棬⺼禨[糬魦禨]
28 -ti name			汃珜嶂冈籫伀え柁А⻌
29 -title string			槉嵺柁簅纕А⻌
30 -tm string			嗈磞鞥篲鳷驨耰А縋А蠣
31 -tn name			TERM 蘄頨䨣禨ボ磝
32 -/+vb				絒棬/抻祤槉欓褆
33 -xrm resourcestring		怬鱗柁罶鳲斒眭
34 -C				饜祰ⅵ篲鳷
35 -Sxxd				ョ皕㪫篲鳷 "ttyxx" 柁麔淰萺訒蠣 "d" 
36 -Sxxx.d			ョ皕㪫篲鳷 "ttyxxx" 柁麔淰萺訒蠣 "d" 
37 End-Of-List
38 ヵ峈衭挴泂 -e 藞禋﹜⼓⽁禕罐隃ョ杬麟⺼廎呏﹜
39 匢衧囷え炟蠡泂柁 shell 鞂絒棬﹞虳郖蠹蠹磍 (+)
40 柁藞禋﹜⑴髓ャ艀蠡泂圊﹞
41 End-Of-List
47 %s”杬麟⺼藞禋蠆諟 "%s"\r\n\n
48 え恄”%s
49 \r\n   
50  [%s]
51 \r\n\n耰蘋 "%s -help" 伒⑴痤怉汒謽柁諰咭﹞\r\n\n
52 え恄”\n
53 \t%s [-options ...] [-e command args]\n\n
54 藞禋讓挭”\n

$set 3
$ ****** Module: TermFunction.c
$ This is a warning message dialog box
1 奡襉忟儸橛\n挹＞薚泂＝伒⑴覗崽

$set 4
$ ****** Module: TermPrim.c
$ This is the title of a dialog box
2 嗈磞鞥 - 滙夼

$set 5
$ ****** Module: TermFunction.c
$ This is a warning message dialog box
1 奡襉忟儸橛\n挹＞薚泂＝伒⑴覗崽

$set 6
$ ****** Module: TermView.c
$ DO NOT TRANSLATE Message 1
$ Messages 2 and 3 are titles for dialog boxes.
1 80x24 132x24
4 嗈磞鞥 - Man Page
5 嗈磞鞥 - 赮伢諰咭

$set 7
$ ****** Module: TermViewGlobalDialog.c
$ These are the user-visible labels in the Global Options dialog box.
$ #1 is the title. 
$ The rest are resource types and values - look at the dialog box and 
$ documentation for full specs. 
$ 
$ DO NOT TRANSLATE MESSAGE 15
$ 
2 薚泂
3 抻祤
4 赮伢諰咭
5 謽忟
6 酮簅祰戔
7 巖蜞
8 芚轃
9 酮簅穔冈
10 絒棬
11 抻祤
12 嵑醽酮簅
13 嵑醽跅 (袹秮)
14 騿鰳
15 blinkRate
16 籦⺪祰戔
17 酈く
18 琣
19 槉嵺茯葔
20 稂棬巖冈
21 抻祤
22 絒棬
23 ⼳僶稂棬
24 褆鐖祰戔
25 鐖郣 
26 槉欓
27 褆鐖麷倛 
28 絒棬
29 抻祤
30 饡盉滙夼
31 饡盉煻欏 
32 伒怮鶈え
33 适暋
34 嗈磞鞥 - 謽忟柁藞禋
$set 8
$ ****** Module: TermViewMenu.c
$ These are the menu bar entries and menu pane choices.
$ NOTE TO TRANSLATORS: The Single letter entries are the menu mnemonic
$ for the entry above them (i.e. message 11 "F" is the mnemonic for
$ message 10 "Font Size"). 
$ The items with a "+" in them are the accellerators for an item.
$ The single-character items are the mnemonics for a menu item, where the
$ text of the menu item is specified in the previous message
$ Do not translate messages 24 and 28.
1 蠡泂圊
2 槉嵺騰麵(W)
3 W
4 -iso8859-1
5 %d 鷁
6 %.1f 鷁
7 %.1f 鷁
8 %.2f 鷁
9 蠡泂圊
10 А夆騰麵(F)
11 F

$   Window menu
12 瞅隞槉嵺(N)
13 N
14 トパ(P)
15 P
16 トパ(r)...
17 r
18 驨椲(C)
19 C
20 槉嵺(W)
21 W

$   Edit menu
22 闀蕍(C)
23 C
24 Ctrl osfInsert
25 Ctrl+Insert
26 鶼漜(P)
27 P
28 Shift osfInsert
29 Shift+Insert
30 蹌藟(E)
31 E

$   Option menu

32 衢逑犓(M) 
33 M 
34 稂棬犓(S)
35 S
36 謽忟(G)...
37 G
38 嗈磞鞥(T)...
39 T
40 楗冈适暋(S)
41 S
42 僣冈适暋(H)
43 H
44 适暋(R)
45 R
46 藞禋(O)
47 O

$ Old Help menu (no longer used for CDE)

48 颮羏(O)
49 O
50 齡汃(T)
51 T
52 棤℡罶涷(R)
53 R
54 驨卼禋げ(O)
55 O
56 囷え赮伢諰咭(U)
57 U
59 A
60 赮伢諰咭(H)
61 H

62 Alt+F4

63 dtterm

$ Current CDE Help menu

64 颮羏(v)
65 v
66 袎鰱(I)
67 I
68 げ蠊(C)
69 C
70 齡汃(T)
71 T
72 棤℡罶涷(R)
73 R
74 耰薏(K)
75 K
76 囷え赮伢諰咭(U)
77 U
79 A
80 赮伢諰咭(H)
81 H
82 驨卼嗈磞鞥
83 驨卼嗈磞鞥

$set 9
$ ****** Module: TermTerminalDialog.c
$ These are the messages for the terminal options dialog
2 薚泂
3 抻祤
4 赮伢諰咭
5 耰薏祰戔
6 琣
7 鶈え嶂冈
8 酮簅耰篲鳷
9 禨圊
10 鶈え嶂冈
11 赮伢耰嗢篲鳷
12 囆⻏
13 囆⻏/葎⺼
14 葎⺼禖囥
15 孍泂
16 箾崽孍泂
17 囷え炟衢逑耰
18 糬魦祰戔
19 絒棬
20 抻祤
21 鼲葎 132 ⺼
22 ⺼廎呏葎⺼
23 酈ホ⺼廎呏葎⺼
24 伒怮鶈え
25 适暋
26 嗈磞鞥 - 嗈磞鞥藞禋
