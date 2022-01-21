 
$ "$TOG: dtfile.msg /main/6 1998/04/29 15:13:40 rafi $"

$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dtfile.msg
$ **
$ **  Project:     Common Desktop Environment dtfile
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for dtfile
$ **  Any additional messages are to be added to this file by hand,
$ **  and the associated index number placed in the code.
$ **
$ *****************************************************************************
$ **
$ **     (c) Copyright 1990, 1991, 1992 Hewlett-Packard Company
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
$ 03/25/93 H. Amro            removed the guilty $ from message 30
$ 
$ 
$ 
$ *****************************************************************************

$set 2
$ ****** Module: ChangeDir.c ****(developer comment only)********

$ Messages 3 and 10 are titles for the Change Folder dialog, Message 3 is
$   used when the user has specified a title for dtfile windows
$ Messages 2 and 4 are labels for the Change Folder dialog
$ Message 1 is the title for Change Folder errors
$ Messages 7, 8, 9, 11, and 12 are Change Folder error messages

1 彶葎麔淰扢蠆諟
2 瞅隞麔淰扢”
3 彶葎麔淰扢
4 饜鞥”
7 譯ト麔淰扢ボ磝隓淩﹞\n\n%s:%s
8 睎攜逑鼲⺍麔淰扢﹞  睎蒟⑴髓\n\
黀槉ョ睎げ虳柁麔淰扢欄譯柁\n\
麔淰扢﹞  睎攜逑挴泂⺍隞柁麔淰扢柁\n\
廕髱聤梏﹞
9 ヾ槉棷旂ョ抰迻篲鳷﹞睎攜逑鼲⺍\n\
挴泂柁麔淰扢﹜モ珜⼓攜ョ抰迻柁麔淰扢\n\
柁砨髱聤梏譫﹞\n
10 麔淰磣隉炟 -- 䨣彶麔淰扢
11 隓恄抻痤隞麔淰扢ボ磝﹞
12 霘耰蘋麔淰扢ボ磝﹞

13 虳芼蠆諟
14 げ簅麔淰扢”
15 虳芼
16 侇嗄ボ磝”
17 麔淰磣隉炟 -- 虳芼
18 橝⼇げ簅麔淰扢ボ磝﹞\n\
   霘耰蘋麔淰扢ボ磝﹜迖⺌ト玿斕藞謥麔淰扢﹞

19 "譯ト麔淰扢ボ磝攜ポ恄﹞\n\n\
%s"

20 "睎隓恄籠葎怉麔淰扢\n\n\
%s\n\n\
モ珜旂揧迻戔柁麔淰扢\n\
邴髓攜蠢暐髲砫麔淰扢﹞"

$set 3
$ ****** Module: ChangeDirP.c ****(developer comment only)********

$ Messages 2-6 are labels for the folder Status Line
$ Message 3 is required for SUN systems
$ Message 2-9 are obsolete

2 %d 堈麔淰 %d 堈騿鰳
3 %1$d 堈麔淰 %2$d 堈騿鰳
4 %3d 堈麔淰 ...
5 幺抻 ...
6 %d 堈騿鰳

7 %d 堈禋げ %d 堈騿鰳
8 %1$d 堈禋げ %2$d 堈騿鰳
9 %3d 堈禋げ ...



10 %d 堈禋げ
11 %d 堈禋げ...
12 %d 堈禋げ %d 堈騿鰳



$set 4
$set 5
$set 6
$set 7
$set 8



$set 9
$ ****** Module: File.c ****(developer comment only)********

$ Messages 6 and 7 are the title and text for an action error message
$ Messages 8 and 9 are rename error messages
$ Messages 11-19 are the title and text for warning messages displayed
$   when an object/set of objects is moved/copied/linked to a folder
$   containing object(s) with the same name

6 棬汃蠆諟
7 呥隓珜 %s 邴泂氂柁棬汃﹞\n

8 儸槴麔淰髓麔淰ボ磝Бョ齡汃洠睮斕﹞\n\
霘藞謥攜フ柁麔淰ボ磝﹞
9 儸槴麔淰髓ボ磝Бョ﹞\n\
霘藞謥攜フ柁麔淰ボ磝﹞

11 麔淰磣隉炟 -- 傶棬/闀蕍/椵廎 滙夼
$ Messages 12-15 deal with multiple files/folders
12 髓譯麔淰 (迖麔淰扢)\n\
儸槴Бョ卼\n\
%s:
13 \n闀蕍汃鞄渿鞂适嬣楙咍麔淰﹞\n\
          睎衭凭㶴瑱⺼蓇?\n
14 \n傶棬汃鞄渿鞂适嬣楙咍麔淰﹞\n\
          睎衭凭㶴瑱⺼蓇?\n
15 \n椵廎汃鞄渿鞂适嬣楙咍麔淰﹞\n\
          睎衭凭㶴瑱⺼蓇?\n

$ Messages 16&17 deal with a single file/folder
16 ボ磝珜\n%s\n欄昡ス儸Бョ麔淰扢斕﹞\n%s
17 ボ磝珜\n%s\n欄麔淰扢儸Бョ麔淰扢斕﹞\n%s

$ Labels in rename/replace and merge/replace dialogs
20 睎衭惉矓錵?
21 抻鷥儸Бョ柁昡ス﹞
22 渿儸Бョ柁昡ス适隞杬ボ珜”
24 渿怚堈麔淰扢柁蠡晥ポ坰﹞
25 抻鷥儸Бョ柁麔淰扢﹞

27 薚泂
28 抻祤
29 赮伢諰咭
30 抻祤傶棬
31 抻祤闀蕍
32 抻祤椵廎

$ Window title for overwrite dialogs
33 麔淰磣隉炟 -- 傶棬/闀蕍/椵廎 滙夼
34 麔淰磣隉炟 -- 傶棬滙夼
35 麔淰磣隉炟 -- 闀蕍滙夼
36 麔淰磣隉炟 -- 椵廎滙夼

37 昡ス适隞杬ボ -- 蠆諟
38 %s\n儸槴Бョ”霘藞謥ⅱ⼃柁ボ磝﹞
39 %s\n隓恄适隞杬ボ珜\n%s\n%s
40 昡ス抻鷥 -- 蠆諟
41 楙堈麔淰麷伀薚柁頝踛儸槴䬷ざ﹞



51 闀蕍斕
52 傶棬斕
53 椵廎斕
54 彶葎斕
56 抻鷥儸Бョ柁昡ス
57 髓眃蠹蹌磍柁巖冈适隞杬ボ昡ス
58 儸闀蕍
59 儸傶棬
60 儸椵廎
61 儸䨣彶
68 昡ス %s﹞
69 %d 昡ス %s﹞
70 %s\n%d 昡ス縋麔淰扢斕柁昡スフボ\n%s
71 %s\n1 昡ス縋麔淰扢斕柁昡スフボ\n%s
72 闀蕍
73 傶棬
74 椵廎
75 汃鞄
76 闀蕍
77 傶棬
78 椵廎
79 汃鞄
80 %s 抻祤 -- 麔淰扢ゝ揧 %s.\n\n睎衭抻鷥柁麔淰扢攜逑揧伝崽\nモ珜篎麔淰扢斕柁昡ス隓恄伝崽﹞\n篎麔淰斕柁怬鱗昡ス⑴逑ョ%s 嶂囥彘欐欄虳祼髓揧伝崽藹﹞
81 %s\n\n楙堈棯纕瑊⑴逑柁婘モ旂睎扽嵁髱篎隓恄崽⑩柁昡ス柁嬣蘋ḷ暐⑴﹞\n睎⑴髓䨣彶嬣蘋ḷ迖适隞杬ボ睎ョ %s 柁麔淰扢欄ボ磝﹜\nヵ⼓埢祼攜鞂テ砨フ柁ボ磝藹﹞
82 %s 儸伝崽\n\n%s\n隓恄崽⑩﹞\n\n楙堈棯纕瑊⑴逑柁婘モ旂睎扽篎麔淰柁嬣蘋ḷ暐⑴﹞\n睎⑴髓䨣彶嬣蘋ḷ迖适隞杬ボ睎邴ョ柁麔淰欄ボ磝﹜\nヵ⼓埢祼攜鞂テ砨フ柁ボ磝藹﹞
83 %s 儸抻祤 -- 昡スゝ揧 %s.\n\n稌㶴柁昡ス隓恄⺌棬揧适隞杬ボ\n%s\n\n%d 昡スョ %s 嶂囥彘欐虳祼揧适隞杬ボ藹﹞
84 %s\n\n楙堈棯纕瑊⑴逑柁婘モ旂睎髱篎昡ス扽嬣蘋ḷ暐⑴﹞睎⑴髓䨣彶嬣蘋ḷ暐⑴﹜\n迖旂髱ョ %s 柁昡ス适隞杬ボ﹜ヵ⼓祼攜テ砨フ柁ボ磝藹﹞
85 %s 儸抻祤 -- 昡スゝ揧 %s.\n\n稌㶴柁昡ス隓恄⺌棬揧适隞杬ボ\n%s\n\n1 昡スョ %s 嶂囥彘欐虳祼揧适隞杬ボ藹﹞
86 %s 儸抻祤 -- 昡スゝ揧 %s﹞\n\n睎衭抻鷥柁麔淰扢隓恄揧伝崽﹞\n   麔淰扢” %s\n\n麔淰扢斕柁栲咍昡ス⑴逑ョ\n%s 嶂囥彘欐虳祼揧伝崽藹﹞\n\n1 堈怬鱗昡ス儸揧伝崽﹞\n\n楙堈棯纕瑊⑴逑柁婘モ旂\n睎髱篎麔淰扢扽嬣蘋ḷ暐⑴﹞睎⑴髓䨣彶嬣蘋ḷ暐⑴﹜\n迖旂渿睎ョ %s 柁麔淰扢适隞杬ボ﹜ヵ⼓祼攜テ砨フ柁ボ磝藹﹞
87 %s 儸抻祤 -- 昡スゝ揧 %s.\n\n睎衭抻鷥柁麔淰扢隓恄揧伝崽﹞\n 麔淰扢”%s\n\n麔淰扢斕柁栲咍昡ス⑴逑ョ\n%s 嶂囥彘欐虳祼揧伝崽藹﹞\n\n1 堈怬鱗柁昡ス儸揧伝崽﹞\n\n楙堈棯纕瑊⑴逑柁婘モ旂\n睎髱篎麔淰扢扽嬣蘋ḷ暐⑴﹞睎⑴髓䨣彶嬣蘋ḷ暐⑴﹜\n迖旂髱睎ョ %s 柁麔淰扢适隞杬ボ﹜ヵ⼓祼攜鞂テ砨フ柁ボ磝藹﹞
88 %s 儸抻祤 -- 昡スゝ揧 %s.\n\n睎衭抻鷥柁麔淰隓恄揧伝崽﹞\n    麔淰”%s\n\n%d 堈怬鱗昡ス儸揧伝崽﹞\n\n楙堈棯纕瑊⑴逑柁婘モ旂\n睎髱篎麔淰扽嬣蘋ḷ暐⑴﹞睎⑴髓䨣彶嬣蘋ḷ暐⑴﹜\n迖旂髱睎ョ %s 柁麔淰适隞杬ボ﹜ヵ⼓祼攜鞂テ砨フ柁ボ磝藹﹞
89 %s 儸抻祤 -- 昡スゝ揧 %s.\n\n睎衭抻鷥柁麔淰隓恄揧伝崽﹞\n    麔淰”%s\n\n%1 堈怬鱗昡ス儸揧伝崽﹞\n\n楙堈棯纕瑊⑴逑柁婘モ旂\n睎髱篎麔淰扽嬣蘋ḷ暐⑴﹞睎⑴髓䨣彶嬣蘋ḷ暐⑴﹜\n迖旂髱睎ョ %s 柁麔淰适隞杬ボ﹜ヵ⼓祼攜鞂テ砨フ柁ボ磝藹﹞
90 ボ磝鍙秜﹞\n\
  昡スョ齡汃洠睮茯葔泂⻏譫﹞\n\
  ョ茯葔泂⻏譫柁栲堈昡ス欄ボ磝\n\
  縋睎邴耰蘋柁砨フ﹞\n\
  霘藞謥攜フ柁ボ磝﹞

91 彘欐闀蕍
92 彘欐椵廎
93 彘欐傶棬

94 "蠆諟"

95 "抻祤傶棬 - 攜テ傶棬麔淰扢﹞\n\n\
モ珜麔淰扢蠡柁昡ス隓恄伝崽\n\
邴髓隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
麔淰扢蠡柁栲咍昡ス⑴逑ョ傶棬嶂囥\n\
彘欐虳祼伝崽藹﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼隓恄\n\
伝崽柁昡ス谹韁嬣蘋ḷ﹞彶庍\n\
嬣蘋ḷ迖鷗棬彶庍衭傶棬柁\n\
麔淰扢ボ磝﹞"

96 "抻祤闀蕍 - 攜テ闀蕍麔淰扢﹞\n\n\
モ珜麔淰扢蠡柁昡ス隓恄伝崽\n\
邴髓隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
麔淰扢蠡柁栲咍昡ス⑴逑ョ闀蕍嶂囥\n\
彘欐虳祼伝崽藹﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼隓恄\n\
伝崽柁昡ス谹韁嬣蘋ḷ﹞彶庍\n\
嬣蘋ḷ迖鷗棬彶庍衭闀蕍柁\n\
麔淰扢ボ磝﹞"

97 "抻祤椵廎 - 攜テ椵廎麔淰扢﹞\n\n\
モ珜麔淰扢蠡柁昡ス隓恄伝崽\n\
邴髓隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
麔淰扢蠡柁栲咍昡ス⑴逑ョ椵廎嶂囥\n\
彘欐虳祼伝崽藹﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼隓恄\n\
伝崽柁昡ス谹韁嬣蘋ḷ﹞彶庍\n\
嬣蘋ḷ迖鷗棬彶庍衭椵廎柁\n\
麔淰扢ボ磝﹞"

98 "抻祤汃鞄 - 攜彶庍麔淰扢﹞\n\n\
モ珜麔淰扢蠡柁昡ス隓恄伝崽\n\
邴髓隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
麔淰扢蠡柁栲咍昡ス⑴逑ョ嶂囥\n\
彘欐虳祼伝崽藹﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼隓恄\n\
伝崽柁昡ス谹韁嬣蘋ḷ﹞彶庍 \n\
嬣蘋ḷ迖鷗棬彶ボ衭彶庍柁\n\
麔淰扢﹞"

99 "抻祤傶棬\n\n\
%s\n\
隓恄伝崽﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼\n\
麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶庍\n\
衭傶棬柁麔淰ボ磝﹞"

100 "抻祤闀蕍\n\n\
%s\n\
隓恄伝崽﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼\n\
麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶庍\n\
衭闀蕍柁麔淰ボ磝﹞"

101 "抻祤椵廎\n\n\
%s\n\
隓恄伝崽﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼\n\
麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶庍\n\
衭椵廎柁麔淰ボ磝﹞"

102 "抻祤汃鞄\n\n\
%s\n\
隓恄伝崽﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼\n\
麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭彶庍柁麔淰﹞"

103 "抻祤傶棬 - 扽傶棬ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
傶棬嶂囥彘欐虳彶ボ %d 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭傶棬柁昡ス﹞"

104 "抻祤闀蕍 - 扽闀蕍ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
闀蕍嶂囥彘欐虳彶ボ %d 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭闀蕍柁昡ス﹞"

105 "抻祤椵廎 - 扽椵廎ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
椵廎嶂囥彘欐虳彶ボ %d 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭椵廎柁昡ス﹞"

106 "抻祤汃鞄 -扽彶庍ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
嶂囥彘欐虳彶ボ %d 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭彶庍柁昡ス﹞"

107 "抻祤傶棬 - 扽傶棬ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
傶棬嶂囥彘欐虳彶ボ 1 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭傶棬柁昡ス﹞"

108 "抻祤闀蕍 - 扽闀蕍ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
闀蕍嶂囥彘欐虳彶ボ 1 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭闀蕍柁昡ス﹞"

109 "抻祤椵廎 - 扽椵廎ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
椵廎嶂囥彘欐虳彶ボ 1 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭椵廎柁昡ス﹞"

110 "抻祤汃鞄 - 扽彶庍ズ昡ス﹞\n\n\
譯ト昡ス隓恄⺌棬彶ボ\n\
%s\n\n\
嶂囥彘欐虳彶ボ 1 堈昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼昡ス谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭彶庍柁昡ス﹞"

111 "抻祤傶棬 - 扽傶棬ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
傶棬嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭傶棬柁麔淰扢﹞"

112 "抻祤闀蕍 - 扽闀蕍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
闀蕍嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭闀蕍柁麔淰扢﹞"

113 "抻祤椵廎 - 扽椵廎ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
椵廎嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭椵廎柁麔淰扢﹞"

114 "抻祤汃鞄 - 扽彶庍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭彶庍柁麔淰扢﹞"

115 "抻祤傶棬 - 扽傶棬ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
傶棬嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭傶棬柁麔淰扢﹞"

116 "抻祤闀蕍 - 扽闀蕍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
闀蕍嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭闀蕍柁麔淰扢﹞"

117 "抻祤椵廎 - 扽椵廎ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
椵廎嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭椵廎柁麔淰扢﹞"

118 "抻祤汃鞄 - 扽彶庍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰扢﹞\n\
   麔淰扢: %s\n\n\
嶂囥彘欐虳⑴逑儸伝崽\n\
麔淰扢斕柁栲咍昡ス﹞\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰扢谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭彶庍柁麔淰扢﹞"

119 "抻祤傶棬 - 扽傶棬ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
    麔淰: %s\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭傶棬柁麔淰﹞"

120 "抻祤闀蕍 - 扽闀蕍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
    麔淰: %s\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭闀蕍柁麔淰﹞"

121 "抻祤椵廎 - 扽椵廎ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
    麔淰: %s\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭椵廎柁麔淰﹞"

122 "抻祤汃鞄 - 扽彶庍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
    麔淰: %s\n\n\
儸伝崽 %d 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭彶庍柁麔淰﹞"

123 "抻祤傶棬 - 扽傶棬ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
\ 麔淰: %s\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭傶棬柁麔淰﹞"

124 "抻祤闀蕍 - 扽闀蕍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
\ 麔淰: %s\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭闀蕍柁麔淰﹞"

125 "抻祤椵廎 - 扽椵廎ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
\ 麔淰: %s\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭椵廎柁麔淰﹞"

126 "抻祤汃鞄 - 扽彶庍ズ昡ス﹞\n\n\
隓恄伝崽睎衭抻鷥柁麔淰﹞\n\
\ 麔淰: %s\n\n\
儸伝崽 1 堈怬鱗昡ス﹞\n\n\
楸棯纕柁婘モ⑴逑旂髱卼麔淰谹韁嬣蘋ḷ﹞\n\
彶庍嬣蘋ḷ迖鷗棬彶ボ\n\
衭彶庍柁麔淰﹞"

127 "儸傶棬 1 堈昡ス﹞"

128 "儸傶棬 %d 堈昡ス﹞"

129 "儸闀蕍 1 堈昡ス﹞"

130 "儸闀蕍 %d 堈昡ス﹞"

131 "儸椵廎 1 堈昡ス﹞"

132 "儸椵廎 %d 堈昡ス﹞"

133 "儸彶庍 1 堈昡ス﹞"

134 "儸彶庍 %d 堈昡ス﹞"

135 "隓恄渿昡ス %s 傶棬怉⼓ヾ冼﹞  "

136 "隓恄渿昡ス %s 闀蕍怉⼓ヾ冼﹞  "

137 "隓恄渿昡ス %s 椵廎怉⼓ヾ冼﹞  "

138 "譯ト昡ス彶ボ⼇絫\n\n\
%s\n\n\
⑴逑モ珜扽\n\
彶庍昡スボ磝柁ḷ迻﹞"

139 "譯ト昡ス抻鷥⼇絫\n\n\
%s\n\n\
⑴逑モ珜扽\n\
抻鷥昡ス柁ḷ迻﹞"

$ "NEW-"
140 Rename new object to:

$ "NEW-"
141 Rename new objects by appending a number


$set 10
$ ****** Module: FileDialog.c ****(developer comment only)********

$ Messages 1, 2, 20, and 21 are titles for error dialogs
$ Message 3 is an error message for dialogs requiring new file names
$ Messages 5 and 27 are titles for the Copy File dialog, Message 5 is used
$   when the user has specified a title for dtfile windows
$ Messages 6-9 are labels for the File Copy, New Dir, and New File dialogs
$ Messages 10-13 and 25 are error messages for the file copy operation
$ Messages 14 and 28 are titles for the New Folder dialog, Message 14 is
$   used when the user has specified a title for dtfile windows
$ Message 16 is a label for the New Folder dialog
$ Messages 22-24 are error messages for the New File/Folder operations
$ Messages 26 and 29 are titles for the New File dialog, Message 26 is used
$   when the user has specified a title for dtfile windows
$ Messages 30 and 31 are titles for the Move File dialog, Message 30 is used
$   when the user has specified a title for dtfile windows
$ Messages 32 and 33 are titles for the Link File dialog, Message 32 is used
$   when the user has specified a title for dtfile windows

1 麔淰适隞杬ボ蠆諟
2 麔淰闀蕍蠆諟

3 麔淰迖麔淰扢ボ磝斕攜蠢暐洠眭

5 闀蕍麔淰

6 げ虳柁麔淰ボ磝”
7 隞柁麔淰ボ磝”
8 麔淰麷倛
9 䬷ざ麔淰麷倛

10 婘ッ藞謥柁麔淰攜テБョ﹞
11 麔淰迖麔淰扢攜⑴洠く柁ボ磝﹞
13 隓淩柁麔淰迖麔淰扢ボ磝﹞

14 瞅隞麔淰扢

16 隞麔淰扢ボ磝”

20 唈ゥ麔淰扢蠆諟
21 唈ゥ麔淰蠆諟

22 隓恄唈ゥ髓洠く珜ボ磝柁麔淰迖麔淰扢﹞
23 隓淩柁麔淰扢ボ磝﹞
24 隓淩柁麔淰ボ磝﹞

25 睎攜逑囷え闀蕍杬麟渿麔淰\n\
闀蕍⺍齡汃洠睮﹞睎⽁禕囷え\n\
"麔淰"衢逑玿斕柁`勂蘋齡汃洠睮` 杬麟﹜迖旂\n\
渿麔淰泂⻏卼齡惉洠睮斕﹞

26 瞅隞麔淰

27 麔淰磣隉炟 -- 闀蕍麔淰
28 麔淰磣隉炟 -- 瞅隞麔淰扢
29 麔淰磣隉炟 -- 瞅隞麔淰

30 傶棬麔淰
31 麔淰磣隉炟 -- 傶棬麔淰

32 椵廎麔淰
33 麔淰磣隉炟 -- 椵廎麔淰
34 げ簅麔淰扢” 
35 昡スボ磝”
36 䬷ざ頝踛

37 藞泂柁昡ス”
38 闀ヾボ磝”

39 庍ボ蠆諟
40 楙堈昡ス旂纂堈棬汃﹞\n\
   棬汃頝踛簅圝攜逑枺稌庍ボ﹞

41 薚柁罶涷麷伀頝踛儸䬷ざ.

42 "傶棬昡ス"

43 "麔淰磣隉炟 - 傶棬昡ス"

44 "闀蕍昡ス"

45 "麔淰磣隉炟 - 闀蕍昡ス"

46 "椵廎昡ス"

47 "麔淰磣隉炟 - 椵廎昡ス"

48 "隞昡スボ磝:"


$set 11
$ ****** Module: FileManip.c ****(developer comment only)********

$ Message 6 is the title for an error dialog
$ Messages 9, 14, 16, 28, and 30-36 are file manipulation error messages

6 麔淰搢隉蠆諟

9 睎隓恄渿麔淰⺌\n\
麔淰杶扜麔泂⻏⺍齡汃洠睮斕﹞

14 隓恄岊怉麔淰扢柁⻏殦﹞
16 麔淰扢隓恄傶⺍ヾ冼欄斕﹞\n%s
28 隓恄岊怉 %s﹞ 
30 隓恄傶棬迖适隞杬ボ麔淰扢 %s﹞\n\
邴珜麔淰扢迖怬騵麔淰扢䬷ざ柁麔淰磣隉炟槉棷\n\
眙⽁禕ョ麔淰扢揧傶棬迖适隞杬ボ虳驨椲﹞
31 幺抻%s渀僛ぇ蠆諟﹞
32 隓恄适隞杬ボ %s
33 隓恄瞅絒 %s
34 睎扽傶棬 %s 柁暐⑴﹞\n\
隑゛﹜睎⑴髓闀蕍篎麔淰 (霘ョ\n\
侹篎麔淰渀囷え <CTRL>)﹞
35 隓恄闀蕍麔淰扢⺍ヾ冼. 
36 隓恄唈ゥ騵嶂囥﹞

37 睎攜逑渿麔淰⺌\n\
麔淰杶扜麔斕侹⺍齡汃洠睮﹞\n\
蚍衭⺌麔淰杶扜麔斕崽⑩昡ス﹜\n\
   --霘藞謥篎昡ス﹜隑悒\n\
   -霘藞謥 '勂ャ'\n\
髓譫棬汃旂ョ"麔淰"衢逑玿迖篎昡ス柁伒隃衢逑玿斕汒﹞\n\
隑悒睎⑴髓渿篎昡ス⺌麔淰衢逑玿斕侹⺍\n\
齡汃洠睮茯葔泂⻏譫勂殦﹞

38 睎扽傶棬%s柁暐⑴﹞\n\
隑゛﹜睎⑴髓傶棬篎昡ス﹞\n\
蚍衭闀蕍昡ス”\n\
  -- 霘挹⻖ <Ctrl>耰﹜隑悒\n\
  -- 髓睎柁僶趡侹篎昡ス﹞\n\
迖旂\n\
  -- 囷え衢逑犓斕"藞抻"伒隃衢逑玿斕柁"闀蕍怉"杬麟﹞

39 隓恄唈ゥ騵嶂囥﹞\n\
   侇嗄斕嶂囥欄禨げ儸蝞瑊騰畽﹞\n\
   霘彘欐げ虳ョ欹⺼柁栲咍嶂囥迖嶂冈﹜\n\
   隑悒适隞箹篎衢逑﹞

40 坭鳲昡ス縋げ簅昡ス砨フ﹞\n%s
41 麔淰扢\n%s\n攜Бョ﹞
42 睎衭闀蕍柁げ柁ユ扽\n\
   洠睮⑴え﹞
43 睎衭傶棬柁げ柁ユ扽\n\
   洠睮⑴え﹞
44 扽髱昡ス %s 欹⺼銊傶棬汃﹞\n\
   攜逑銊傶篎昡ス⺍儸篎昡ス欄麔淰扢﹞\n\
   睎⽁禕藣蘋纂堈攜フ柁げ柁ユ麔淰扢\n\
   ボ磝懼逑銊傶篎昡ス﹞
45 扽髱昡ス %s 欹⺼闀蕍棬汃﹞\n\
   ⽁禕彶庍げ柁麔淰扢ボ磝迖闀\n\
   ヾボ磝﹜懼逑唈ゥ闀ヾ
46 扽髱昡ス %s 欹⺼椵廎棬汃﹞\n\
   ⽁禕彶庍げ柁麔淰扢ボ磝迖闀\n\
   ヾボ磝﹜懼逑唈ゥ闀ヾ﹞

47 隓恄銊傶麔淰扢⺍ヾ冼﹞

48 "隓恄渿譯ト昡ス闀蕍怉麔淰扢 "%s"\n\n\
%s\n\n\
⑴逑モ珜扽嬣蘋げ簅麔淰扢\n\
柁ḷ迻﹞"

49 "隓恄渿譯ト昡ス傶棬怉麔淰扢 "%s"\n\n\
%s\n\n\
⑴逑モ珜扽嬣蘋げ簅麔淰扢\n\
柁ḷ迻﹞"

50 "隓恄渿譯ト昡ス傶棬怉麔淰扢 "%s"\n\n\
%s\n\n\
⑴逑モ珜扽傶棬坭鳲昡ス\n\
柁ḷ迻﹞"
$        
$ Messages 51 - 56 are new since CDE/SI.          
$        

51 "モ珜渿熅蝝闀蕍げ柁\n\
柁瀄澥洠睮﹜邴髓攜逑闀蕍\n\
麔淰迖麔淰扢﹞"

52 "モ珜渿熅蝝傶棬げ柁\n\
柁瀄澥洠睮﹜邴髓攜逑傶棬\n\
麔淰迖麔淰扢﹞"

53 "モ珜栲咍蠡楶蠆諟゛襓茬\n\
闀蕍麔淰迖麔淰扢⼇絫﹞\n\
蠡楶蠆諟旂:"

54 "モ珜栲咍蠡楶蠆諟゛襓茬\n\
傶棬麔淰迖麔淰扢⼇絫﹞\n\
蠡楶蠆諟旂:"

55 "霘棤℡侇嗄磣隉炟"

56 "(ゝ洁柁):"

58 Process Create Error
59 Cannot create a child process to delete the dropped files.

$set 12
$ ****** Module: FileMgr.c ****(developer comment only)********

$ Message 3 is a dialog title
$ Messages 4-6 are movement warning or error messages
$ Message 7 is the title for the folder popup menus

3 傶棬麔淰

4 昡ス %s げ虳ョ麔淰扢 %s 斕﹞\n\
睎げ虳渿昡ス傶芼麔淰扢 %s﹞\n\
睎衭楙穔惉蓇?
5 昡ス %1$s げ虳ョ麔淰扢 %2$s 斕﹞\n\
睎げ虳渿昡ス傶芼麔淰扢 %3$s﹞\n\
睎衭楙穔惉蓇?
6 睎儸泂⻏柁麔淰斕茬韁纂堈旂坭⺌攜フ柁麔淰扢﹞\n\
睎ョ渿邴柁楙咍麔淰傶芼 %s﹞\n\
睎衭楙穔惉蓇?

7 麔淰磣隉炟

18 麔淰扢 %s 旂洠柁.
19 麔淰扢 %s 斕扽騵げ蠊.


$set 13
$ ****** Module: Filter.c ****(developer comment only)********

$ Messages 11 and 21-22 are button labels for the Modify Filter List dialog
$ Messages 19 and 24 are titles for the Link File dialog, Message 19 is used
$   when the user has specified a title for dtfile windows
$ Message 23 is a text field label for the Modify Filter List dialog
$ Message 25 is a label for the Modify Filter List dialog

11 蠡泂圊

19 暋泂蝝孋蟟藞禋

21 ツ楶藞抻
22 抻祤邴藞抻

23 蝝孋蟟А⻌ (藞謥迒)”

24 麔淰磣隉炟 -- 暋泂蝝孋蟟藞禋

25 藞抻袺騿鰳欄麔淰麷伀”

26 キ騿鰳 (藞謥迒)

27 儸䬷ざ

28 儸騿鰳

29 フ渀䬷ざ (藞謥迒)”

30 藞抻衭騿鰳柁罶涷麷伀:

31 "藞抻罶涷䔝錂倛旂:"


$set 14



$set 15
$ ****** Module: Find.c ****(developer comment only)********

$ Message 1 is the title for an error dialog
$ Messages 14 and 15 are button labels for the Find Files dialog
$ Messages 23, 26, and 27 are Find Files error messages
$ Messages 29 and 41 are titles for the Find Files dialog, Message 29 is used
$   when the user has specified a title for dtfile windows
$ Messages 30-40 and 42 are labels for the Find Files dialog

1 硻岊麔淰蠆諟

14 絒棬
15 彘欐

23 隓淩柁硻岊罶媢﹞\n\n\
禕挴泂袺銌硻柁麔淰扢﹞
26 隓淩柁硻岊罶媢﹞\n\n\
藞抻柁麔淰儸攜Бョ﹞
27 扽麔淰嗃ポ銌硻罶涷﹞

29 硻岊麔淰迖麔淰扢

30 霘蝫蘋纂堈迖ロ堈唫⻏髓挴泂袺硻岊柁麔淰”
31 麔淰迖麔淰扢ボ磝”
32 麔淰蠡晥”

$ Messages 33-35 are used on hpux systems
33 瞅絒
34 驨椲
35 翦襙椵廎”

36 瞅絒隞槉棷
37 勂蘋齡汃洠睮
38 岊怉柁麔淰 (淂謾蠡晥)”
39 岊怉柁麔淰 (淂謾ボ磝縋蠡晥)”
40 岊怉柁麔淰 (淂謾ボ磝)”

41 麔淰磣隉炟 -- 硻岊麔淰迖麔淰扢

42 銌硻麔淰扢”

43 硻岊蠆諟

44 谹韁"銌硻麔淰扢"ボ磝鰱禨﹞\n\
霘耰蘋睎袺瞅沓銌硻柁麔淰扢ボ磝”

45 藞抻柁麔淰儸攜Бョ﹞\n\n\
麔淰ョ銌硻嶂囥汒悒儸揧栲藺伝崽﹞

46 硻岊

47 霘蝫蘋纂堈迖ロ堈唫⻏髓挴泂袺硻岊柁禋げ”

48 瞅絒麔淰扢

49 麔淰磣隉炟 -- 硻岊

50 谹韁"銌硻麔淰扢"ボ磝迖"麔淰蠡晥"鰱禨\n\
霘耰蘋睎袺瞅沓銌硻柁麔淰扢ボ磝\n\
迖耰蘋睎袺銌硻柁А⻌﹞


$set 16
$set 17



$set 18
$ ****** Module: Main.c ****(developer comment only)********

$ Message 1 is a blank line
$ Messages 2, 6, 17-18 and 27-28 are error messages which will ONLY APPEAR
$   in the DT ERRORLOG FILE
$ Messages 16 and 32 are titles for the Save Settings dialog, Message 16 is
$   used when the user has specified a title for dtfile windows
$ Messages 19-21 are error messages for invalid directory input.
$ Message 22 is the title for an error dialog
$ Messages 25 and 26 are usage strings
$ Messages 29 and 30 are text for the Save Settings dialog
$ Messages 34 and 35 are drag/drop error messages

$ DO NOT TRANSLATE or CHANGE or LOCALIZE MESSAGE 1
$quote "
1 ""
$quote

$ MESSAGE 2 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
2 隓恄唈ゥ .dt 麔淰扢迖騵麔淰扢﹞

$ MESSAGE 6 WILL ONLY APPEAR IN THE DT ERRORLOG FILE, and stderr
6 僛ぇ X Toolkit 蠆諟... 廎忒﹞\n

16 鬊Б珜蠡泂圊藞禋

$ MESSSAGES 17-18 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
17 隓恄唈ゥ鬊Б蠡泂圊藞禋柁麔淰﹞
18 隓恄瞅絒瞃栠麔淰﹞

19 麔淰扢斒眭﹜\n\
%s\n\
攜旂纂堈麔淰扢﹞
20 麔淰扢斒眭﹜\n\
%s\n\
攜Бョ﹞
21 隓淩柁麔淰扢斒眭﹜ %s”%s﹞

22 侹蠆諟

23 \nえ恄” %s...\n\n\
   -noview\n\n\
\tDtfile ョɵ峇蟟篲冈譯欹⺼﹜\n\n\
   -session "瞃栠麔淰"\n\n\
\tDtfile 欹⺼ョ"瞃栠麔淰"斕挴泂柁瞃栠麔淰\n\
\t棤禨﹞\n\n\
   -folder 麔淰扢[麔淰扢﹜麔淰扢]\n\
   -dir 麔淰扢[﹜麔淰扢﹜麔淰扢]\n\n\
\tDtfile 珜怀堈ョ"麔淰扢"棤禨斕挴泂柁麔淰扢\n\
\t䬷ざ纂堈槉嵺﹞ "麔淰扢"棤禨⑴讓屼暐ロ\n\
\t髓楉磍觰瞅柁麔淰扢﹞麔淰扢⑴逑ョ\n\
\t'聤梏'斕﹞\n\n\
   -title "簅纕"\n\n\
\tDtfile 囷えョ"簅纕"棤禨斕欐泂柁А⻌\n\
\t汃珜槉嵺柁簅纕﹞\n\n\
   -help_volume "赮伢諰咭晥忟"\n\n\
\tDtfile 囷えョ"赮伢諰咭晥忟"棤禨斕挴泂柁赮伢諰咭晥忟﹞\n\n\
   -restricted\n\n\
\tDtfile 攜鞂䬷ざョ抰迻麔淰扢欄譫柁麔淰扢﹞\n\
\t蚍 -dir 藞禋揧囷え﹜衧篎藞禋斕挴泂柁麔淰扢\n\
\t祼旂抰迻麔淰扢﹞蚍 -dir 藞禋ゝ揧囷え﹜\n\
\t囷え炟柁げ虳麔淰扢祼旂抰迻麔淰扢﹞\n\n\
   -grid 瞅絒Ｑ驨椲\n\n\
\t瞅絒    ９ 麔淰髓篚鷁倛鳷䬷ざ﹞\n\
\t驨椲    ９ 麔淰髓怬揧勂殦柁倛鳷䬷ざ﹞\n\n\
   -tree 瞅絒Ｑ驨椲\n\n\
\t瞅絒     ９ 麔淰髓痼麔淰扢篲冈䬷ざ﹞\n

24 \t驨椲    ９ 麔淰髓麔淰扢蹠篲冈䬷ざ﹞\n\n\
   -tree_files /never/always/choose\n\n\
\tnever  ９ 蹠篲冈怚堈昲鳷”楶ソ鶭痧迖儚巗﹞\n\
\talways ９ 蹠篲冈怚堈昲鳷”汒ツ鶭痧迖儚巗﹞\n\
\tchoose ９ 蹠篲冈警堈昲鳷”楶ソ鶭痧﹜汒ツ\n\
\t鶭痧﹜迖儚巗﹞\n\n\
   -order А々禖囥Ｑ麔淰麷伀Ｑ戀蛺Ｑ騰麵\n\n\
\t麔淰髓挴泂柁禖囥䬷ざ”淂謾А々禖囥﹜淂謾\n\
\t麔淰麷伀﹜淂謾戀蛺﹜迖淂謾騰麵﹞\n\n\
   -view 隓頝踛Ｑ騰頝踛Ｑ麵頝踛Ｑ㪫迒\n\n\
\t麔淰髓挴泂柁眭冈䬷ざ”覂齪А﹜齪А縋\n\
\t騰頝踛﹜齪А縋麵頝踛﹜髓轡㪫迒﹞\n\n\
   -direction 讀囥Ｑ迶囥\n\n\
\t麔淰髓挴泂柁巖ホ䬷ざ”讀囥迖\n\
\t迶囥﹞\n\n\
   -large_icon_width <size>\n\n\
   -large_icon_height <size>\n\n\
   -small_icon_width  <size>\n\n\
   -small_icon_height <size>\n\n\
       ョ麔淰磣隉炟斕頝踛憵踛柁䬷ざ棷棦騰麵\n\
       騰卼楙堈騰麵柁頝踛憵踛渿鞂揧朄椌楙堈騰麵\n\
       蠡泂柁䬷ざ棷棦騰麵﹜騰柁旂 38﹜麵柁旂 24\n\n
26 \n抰迻篲冈え恄” %s...\n\n\
   -folder Folder[,Folder,Folder]\n\
   -dir Folder[,Folder,Folder]\n\n\
\t"Folder"旂纂堈ョ囷え炟柁媊沓麔淰扢欄譯﹜靨/迖讓挭篎媊沓\n\
\t麔淰扢﹞\n\n

$ MESSSAGES 27-28 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
27 隓恄艀婘儸鬊Б柁蠡泂媊沓暋泂麔淰﹜渿囷え蠡泂圊﹞\n
28 隓恄艀婘儸鬊Б柁蠡泂齡怞暋泂麔淰﹜渿囷え蠡泂圊﹞\n

$ Messages 29-30 are the strings displayed in a question dialog
29 睎衭鬊Бげ虳柁"麔淰磣隉炟槉棷"柁槉嵺騰麵﹜\n\
騔ッḷ﹜縋蝝孋蟟暋泂蓇?\n\n\
⼓埢鞂ョズ纂⺌"虳巖郖帣"斕絒棬柁\n\
隞柁"麔淰磣隉炟槉棷"槉嵺斕揧囷え﹞
30 睎衭鬊Бげ虳柁"抰迻麔淰磣隉炟槉棷"柁槉嵺騰麵﹜\n\
騔ッḷ﹜縋蝝孋蟟暋泂蓇?\n\n\
⼓埢鞂ョズ纂⺌"虳巖郖帣"斕絒棬柁\n\
隞柁"抰迻麔淰磣隉炟槉棷"槉嵺斕揧囷え﹞

32 麔淰磣隉炟 -- 鬊Б珜蠡泂圊藞禋

34 睎隓恄渿麔淰迖麔淰扢\n\
闀蕍迖椵廎怉麔淰杶扜麔﹞

$ 35 睎隓恄⺌麔淰杶扜麔斕闀蕍\n\
$ 迖椵廎麔淰迖麔淰扢﹞

35 睎衭鬊Бげ虳柁"鶈え嶂冈磣隉炟槉棷"柁槉嵺騰麵﹜\n\
騔ッḷ﹜縋蝝孋蟟暋泂蓇?\n\n\
⼓埢鞂ョズ纂⺌"虳巖郖帣"斕絒棬柁\n\
隞柁"鶈え嶂冈磣隉炟槉棷"槉嵺斕揧囷え﹞

36 睎隓恄⺌麔淰杶扜麔斕闀蕍迖椵廎麔淰迖麔淰扢﹞\n\
霘渿篎昡ス⺌麔淰杶扜麔斕傶罐﹜呥渿怬勂蘋"麔淰磣隉炟"﹞\n\
睎⑴髓ョ咇怗闀蕍迖椵廎篎昡ス﹞

37 睎隓恄⺌麔淰杶扜麔斕闀蕍迖椵廎麔淰迖麔淰扢﹞\n\
霘渿篎昡ス⺌麔淰杶扜麔斕傶罐﹜呥渿怬勂蘋"麔淰磣隉炟"﹞\n\
睎⑴髓ョ咇怗闀蕍迖椵廎篎昡ス﹞

38 "挴泂麔淰扢攜ポ恄, %s"

$set 19



$set 20
$ ****** Module: Menu.c ****(developer comment only)********

$ Messages 1-8, 123 and 9 are the text and mnemonics for the dtfile menu bar
$ Messages 10/11, 128/129, 124/125, 121/122, 126/127, 16/17, 18/19, 84/85,
$   90/91, 22/23, 117/118, are the text and mnemonics for the Fill 
$   pulldown menu 
$ Messages 10/11, 30/33, 92/93, 34/37, 38/41, 42/94, and 97/98 are the text
$   and mnemonics for the Folder pulldown menu
$ Messages 46/47, 99/100, 48/51, 52/55, 101/102, 103/104, 119/120, and 
$   62/63 are the text and mnemonics for the View pulldown menu
$ Messages 105-116 are the text and mnemonics for the Help pulldown menu

1 麔淰(F)
2 F
3 麔淰扢(D)
4 D
5 槉棷(V)
6 V
7 藞抻(S)
8 S

9 H

10 隞嚌(N)...
11 N
16 笱迒(P)...
17 P
18 硻岊(F)...
19 F
22 䬷ざ麔淰杶扜麔(S)...
23 S
30 彶隞(U)
33 U
34 彶庍珜(C)...
37 C
38 ャ怉媊沓搢(H)
41 H
$ NOTE: The mnemonic for Up is Message 94 in this set.
42 ホ譫(U)
46 隞嚌(N)
47 N
48 ツ楶藞抻(S)
51 S
52 抻祤邴藞抻(D)
55 D
62 鬊Бツ楶笱迒(t)...
63 t
84 勂蘋齡汃洠睮(W)
85 W
90 伝崽呥勂蘋杶扜麔(T)
91 T
92 妐楬彶庍珜(F)
93 F
$ NOTE: Message 94 is the mnemonic for the "Up" menu item
94 U
97 嗈磞鞥(T)
98 T
99 覗崽(C)
100 C
101 䬷ざ騿鰳麔淰(H)
102 H
103 埏庍蝝孋蟟ト玿(F)...
104 F
105 颮羏(v)
106 v
107 齡汃(T)
108 T
109 棤℡罶涷(R)
110 R
111 驨卼禋げ(O)
112 O
113 囷え赮伢諰咭(U)
114 U
115 驨卼麔淰磣隉炟(A)
116 A
117 驨椲(C)
118 C
119 暋泂槉棷笱迒(P)...
120 P
121 闀蕍(y)...
122 y
123 赮伢諰咭
124 傶棬(M)...
125 M
126 椵廎(L)...
127 L
128 适隞杬ボ(R)
129 R
130 瞅隞麔淰扢(N)...
131 N
132 瞅隞麔淰(w)...
133 w
134 虳芼(G)...
135 G
136 瞅絒杶扜麔
137 适隞杬ボ...
138 瞅絒隞槉棷(O)
139 O
140 闀蕍珜椵廎...
141 暋泂槉棷藞禋...
142 鬊Б珜蠡泂圊藞禋.(S)..
143 S
144 暋泂蝝孋蟟藞禋(C)...
145 C
146 瞅絒嗈磞鞥(O)
147 O
148 げ蠊(C)
149 C
150 彶庍暐⑴ḷ...
151 勂蘋杶扜麔
152 傶棬怉...
153 闀蕍怉...
154 闀蕍珜椵廎...
155 芼虳
156 䬷ざ騿鰳昡ス
157 瞅卼鶈え嶂冈磣隉炟


$set 21
$ ****** Module: ModAttr.c ****(developer comment only)********

$ Messages 1 and 21 are titles for the File Properties dialog, Message 1 is
$   used when the user has specified a title for dtfile windows
$ Messages 2-13 and 18 are labels for the File Properties dialog
$ Message 14 is the output of the file modification date; DO NOT LOCALIZE
$ Messages 15 and 16 are file properties error messages
$ Message 17 is the title for an error dialog
$ Message 19 is the default file owner/group, if real one can't be determined
$ Messages 22-28 are error messages that can be generated when dtfile
$   tries to use the dtfile.config configuration file, this file is
$   used to customize the File Properties dialog

1 麔淰暐⑴ḷ

2 麔淰ボ磝”
3 邴炟ボ磝”
4 漦嗢ボ磝”
5 暐⑴ḷ”
6 幺抻
7 嬣蘋
8 欹⺼
9 邴炟
10 漦嗢”
11 怬鱗”
12 騰麵 (⻏蠣嗢)”
13 埏庍”

$ DO NOT LOCALIZE MESSAGE 14
14 %x %X

15 隓淩柁麔淰㪫迒罶媢﹞\n\n\
挴泂柁囷え炟攜Бョ﹞
16 隓淩柁麔淰㪫迒罶媢﹞\n\n\
挴泂柁漦嗢攜Бョ﹞

17 笱迒蠆諟

18 揧椵廎怉”

19 ゝ洁

21 麔淰磣隉炟 -- 麔淰暐⑴ḷ

22 隓恄瞅絒麔淰磣隉炟崷殦麔淰”
24 麔淰磣隉炟崷殦麔淰斕ゝ洁唫⻏簅圝”
25 麔淰磣隉炟崷殦麔淰斕岊攜怉驨卼麔淰侇嗄旂伀А柁罶媢
26 隓恄珜麔淰侇嗄髱緷涺唈ゥ嶂囥
27 蠆諟ユ欹⺼藹麔淰侇嗄髱緷涺
28 閰箹欹⺼”

$ do not localize "fsDialog"
29 dtfile 柁崷殦麔淰斕扽菙坯 fsDialog ズ圊﹞

30 ボ磝”

31 邴炟ボ磝隓淩﹞\n\
挴泂柁囷え炟攜Бョ﹞

32 漦嗢ボ磝隓淩﹞\n\n\
睎柁侇嗄斕扽髓篎ボ磝唈ゥ柁囷え炟漦嗢﹞\n\
蚍睎衭髓篎ボ磝唈ゥ囷え炟漦嗢﹜\n\
霘囷え睎柁侇嗄磣隉楗忟﹞

33 暐⑴ḷ蠆諟

34 麔淰磣隉炟 -- 暐⑴ḷ

35 "昡ス柁暐⑴ḷ髱緷\n\n\
%s/%s\n\n\
驨椲﹜モ珜篎昡ス儸⺌侇嗄\n\
伝崽﹞"

36 "彶庍暐⑴ḷ滙夼"

37 "彶庍隃⺼麔淰扢柁暐⑴ḷ﹜\n\
攜テ蠢暐髲砫麔淰扢﹞\n\
麔淰扢渿⺌棬驨椲\n\
靨攜⑴テ适隞瞅絒\n\
麔淰扢﹞\n\n\
睎衭ヵ汃蓇?"


38 File Manager Error
39 File Open Error

$set 22
$ ****** Module: ModAttrP.c ****(developer comment only)********

$ Messages 1 and 3 are file properties error messages
$ Message 2 is the title for the properties error dialog

1 隓恄瞅絒麔淰﹜汃鞄斕黫
2 笱迒蠆諟
3 隓恄珜 %s 彶庍笱迒
4 隓恄瞅絒昡ス﹞
5 暋泂暐⑴ḷ蠆諟



$set 23
$ ****** Module: Prefs.c ****(developer comment only)********

$ Messages 1 and 22 are titles for the Set Preferences dialog, Message 1 is
$   used when the user has specified a title for dtfile windows
$ Messages 2-20 and 23-29 are labels for the Set Preferences dialog

1 暋泂槉棷藞禋

2 瞅絒槉棷
3 呣謾ボ磝
4 呣謾ボ磝縋頝踛
5 呣謾ボ磝縋麵頝踛
6 呣謾ボ磝﹜戀蛺﹜騰麵 ...
7 䬷ざ
8 呣謾痼麔淰扢
9 呣謾蹠昲
10 囥
11 呣謾麔淰麷伀
12 呣謾А々禖囥
13 呣謾戀蛺
14 呣謾騰麵
15 巖ホ
16 讀囥
17 迶囥
18 勂殦⻏殦
19 粡囥悒柁篚鷁
20 呣勂殦⻏殦

22 麔淰磣隉炟 -- 暋泂槉棷藞禋

23 玿韝
24 頝踛聤梏
25 げ虳麔淰扢
26 昲鳷⺼
27 藈麔淰扢
28 麔淰扢﹜隑悒麔淰
29 麔淰扢縋麔淰
30 蠡泂圊

31 玿ざ巖冈
32 藈淂謾ボ磝
33 淂謾騰頝踛
34 淂謾麵頝踛
35 ト縋⺼
36 齪А聤梏
37 媢桾⺼


$set 24
$set 25
$set 26



$set 27
$ ****** Module: Trash.c ****(developer comment only)********

$ Messages 3, 4, and 81 are titles for error warning dialogs
$ Message 5-8, 56, 58, 78, 82, and 83 are trash error messages
$ Message 9 is the title of the trash container
$ Messages 24/26 and 28/30 are the text and mnemonics for the File pulldown
$   menu
$ Message 73 is an error dialog title
$ Messages 74, 75, 79, and 80 are trash warning messages

3 麔淰杶扜麔蠆諟
4 麔淰杶扜麔滙夼

5    譯ト麔淰迖麔淰扢隓恄揧勂ョ杶扜麔蠡”     \n
6    譯ト珜盻洠麔淰扢﹜    \n   \
迖睎扽嬣蘋暐⑴ḷ柁麔淰﹞    \n   \
睎衭凭㶴蓇?\n
7    睎髱髓譯麔淰扽嬣蘋暐⑴ḷ﹜    \n   \
睎衭凭㶴蓇?\n
8    譯ト麔淰扢楁攜旂洠柁﹞    \n   \
睎衭凭㶴蓇?\n

9 麔淰杶扜麔

24 勂ャ(P)
26 P
28 覗崽杶扜麔(h)
30 h

56    譯ト麔淰隓恄揧勂ャ”\n
$ Message 58 supplements Message 56
58 (ⅱ蠹 %d 堈籧⼃柁麔淰)

73 Shred File(s)

74 髓譯麔淰キョ齡汃洠睮斕”\n\
   %s\n\
渿篎麔淰傶⺍杶扜麔斕鞂渿怬⺌\n\
齡汃洠睮斕崽⑩﹞
75 譯ト麔淰キョ齡汃洠睮斕”\n\
   %s\n\
渿篎麔淰傶⺍杶扜麔斕鞂渿怬⺌\n\
齡汃洠睮斕崽⑩﹞

78 麔淰磣隉炟攜蠢暐麔淰扢迖\n\
麔淰柁ボ磝斕洠く﹜\n\
邴髓宎埢攜逑伝崽鱗埢﹞\n

79 齡汃洠睮麔淰 %s キョ睎柁麔淰侇嗄斕﹜⼓⻏卼”\n\
   %s\n\
渿篎麔淰傶⺍杶扜麔斕鞂渿怬\n\
⺌麔淰侇嗄斕崽⑩﹞

80 齡汃洠睮昡スキョ睎柁麔淰侇嗄斕﹜⼓⻏卼”\n\
   %s\n\
渿篎麔淰傶⺍杶扜麔斕鞂渿怬\n\
⺌麔淰侇嗄斕崽⑩﹞

81 Shred File/Folder 蠆諟

82 譯ト麔淰隓恄⺌麔淰侇嗄斕桷⑩”   \n

83 $HOME/.dt/Trash げ蠊斕柁 .trashinfo 麔隓恄瞅絒﹞\n\
   睎⽁禕Б抻篎麔﹜髓囷杶扜麔逑齡汃﹞\n\
   霘黀髲沺卼篎麔淰轡麔淰扢柁暐⑴ḷ﹞\n
84 纂＾杶扜麔斕柁昡ス揧覗崽﹜鱗埢祼ー踸\n\
   ⺌睎柁侇嗄斕祤⼇藹﹞\n\n\
   睎薚泂衭覗崽杶扜麔蓇?\n
85 睎ョ伝崽柁齡汃洠睮昡ス旂纂堈⻏卼 %s\n\
   麔淰磣隉炟斕柁椵廎闀ヾ﹞\n\
   蚍睎挹譯"薚泂"﹜篎椵廎縋婘囷昡ス楁鞂揧伝崽﹞\n\
   蚍睎ⅲ衭伝崽椵廎﹜\n\
      1) 霘ョ髱緷涺斕挹譯"抻祤"\n\
      2) 隑悒ョ篎椵廎昡ス譫挹譯衢逑玿瘖﹜髓䬷隃'齡汃洠睮昡ス'衢逑玿﹞\n\
      3)  隑悒藞謥"⺌齡汃洠睮斕崽⑩"
86 睎ョ伝崽柁昡ス旂椵廎怉⻏卼 %s\n\
   柁麔淰磣隉炟斕柁婘沓昡ス﹞\n\
   蚍睎挹譯"薚泂"﹜篎椵廎闀ヾ縋婘沓昡ス楁鞂揧伝崽﹞\n\
   蚍睎ⅲ衭伝崽齡汃洠睮昡ス﹜\n\
      1) 霘ョ髱緷涺斕挹譯"抻祤"\n\
      2) 隑悒か齡汃洠睮昡ス柁伒隃冈衢逑玿斕,藞謥"⺌齡汃洠睮斕崽⑩"
87 杶扜麔斕柁昡ス隓恄瞅絒﹞\n\n\
   蚍衭瞅絒篎昡ス﹜霘囷え"勂ャ"渿篎昡ス勂ャ麔淰磣隉炟﹜\n\
   隑悒ョ咇怗渿欄瞅絒﹞

88 隓恄嬣蘋穛渀迒麔淰斕﹞\n\
   躂暐睎柁麔淰侇嗄儸槴橛藹﹞

89 隓恄瞅絒杶扜麔げ蠊\n\
   %s\n\
   (諝糶﹜Б抻暐⑴ḷ棯纕)\n\n\
   邴柁杶扜麔汃鞄渿攜鞂揧欹⺼﹞

90 麔淰杶扜麔隓恄惉媊沓暋泂﹞\n\
   霘黀栯”\n\
        1)$HOME/.dt/Trash 髓蘀痤驨卼暐⑴ḷ柁罶媢﹞\n\
        2)⑴え柁瀄澥洠睮﹞\n\
        3)諝糶﹞

$ 91 is not used
91 A linked copy of the following object is on\n\
the Workspace backdrop:\n\
Moving the object to the trash will remove it from\n\
both the File Manager and Workspace backdrop.

$ 92 is not used
92 A linked copy of the following objects are also on\n\
the Workspace backdrop:\n\
Moving the objects to the trash will remove them from\n\
both the File Manager and Workspace backdrop.

93 隓恄Б抻驨卼杶扜麔罶媢柁麔淰\n\
   %s\n\
   邴柁杶扜麔汃鞄渿攜鞂揧欹⺼﹞\n\
   瑊葾蝯柁婘モ旂”\n\
     -- 篚聤諝糶棯纕﹞\n\
     -- 瀄澥洠睮攜欿﹞\n\
     -- 蠆諟柁暐⑴ḷ $HOME/.dt/Trash﹞

94 麔淰磣隉炟攜蠢暐昡ス\n\
ボ磝斕洠く﹜\n\
邴髓宎埢攜逑伝崽⼓埢﹞\n\
蚍衭伝崽楙咍昡ス”\n\
  -- 霘⺌"麔淰磣隉炟"衢逑犓斕藞抻"瞅絒嗈磞鞥"\n\
  -- 霘譯崽⑩杬麟坭伝崽鱗埢﹞

95 隓恄Б抻杶扜麔げ蠊”\n\
   %s\n\
   邴柁杶扜麔汃鞄渿攜鞂揧欹⺼﹞\n\
   瑊葾蝯柁婘モ旂”\n\
     -- 篚聤諝糶棯纕﹞\n\
     -- 瀄澥洠睮攜冞﹞\n\
     -- 暐⑴ḷ攜髱﹞

96 譯ト昡ス隓恄⺌麔淰侇嗄斕崽⑩”   \n

97 譯ト昡ス隓恄勂ョ杶扜麔蠡”     \n

98 (蠹譫 %d 堈籧⼃柁昡ス)

$ message 99 is not used
99 睎髱譯ト麔淰扽嬣蘋暐⑴ḷ”\n\
睎衭凭㶴蓇?\n

100 譯ト麔淰扢楁攜旂洠柁”\n\
睎衭凭㶴蓇?\n

101 譯ト昡ス隓恄揧勂ャ”\n

102 髓譯昡ス柁纂堈儸椵廎柁闀蕍麔旂ョ\n\
齡汃洠睮茯葔泂⻏譫”\n\
%s\n\
渿篎昡ス傶⺍杶扜麔斕鞂渿怬\n\
フ渀⺌麔淰磣隉炟縋齡汃洠睮茯葔泂⻏斕崽⑩﹞

103 譯ト昡ス柁纂堈儸椵廎柁闀蕍麔旂ョ\n\
齡汃洠睮茯葔泂⻏譫”\n\
%s\n\
渿篎昡ス傶⺍杶扜麔斕鞂渿怬\n\
フ渀⺌麔淰磣隉炟縋齡汃洠睮茯葔泂⻏斕崽⑩﹞

104 睎髱譯ト麔淰扽嬣蘋暐⑴ḷ”\n\
睎衭凭㶴蓇?\n

105 栲堈杶扜昡ス柁蠡泂棬汃隓恄欹⺼﹜\n\n\
    衭欹⺼楙堈杶扜昡ス柁蠡泂棬汃﹜\n\
    霘囷え＞勂ャ＝⣷⼓珃ャ麔淰磣隉炟﹜\n\
    テ卼篎搢欹⺼﹞

106 驨卼麔淰杶扜麔

107 "譯ト麔淰扢斕⺍韁纂堈昡ス隓恄伝崽﹞\n\n\
%s\n\n\
⑴逑モ珜扽伝崽篎昡ス \n\
柁ḷ迻﹞"

108 "隓恄伝崽譯ト麔淰﹞\n\n\
%s\n\n\
⑴逑モ珜扽伝崽篎昡ス \n\
柁ḷ迻﹞"

109 "Put Back 滙夼"

110 "堈昡ス磝珜\n\n\
    %s\n\n\
ヵ峈衭髓杶扜麔柁昡ス﹜\n\
抻鷥昡ス﹜霘藞抻薚泂﹞\n\n\
ヵ峈衭砉絅昡ス﹜霘藞抻抻祤﹞\n\
ヵ峈衭彶庍昡スボ磝﹜渿⑴髓\n\
适闀 Put Back 轡砉怚堈昡ス﹞"

111 "Put Back 蠆諟"

112 "隓恄伝崽譯ト昡ス﹞\n\
⑴逑モ珜楙咍昡ス\n\
儸槴揧伝崽﹞\n\n"

113 "譯ト麔淰扢⺍韁纂堈昡ス﹜迖 \n\
麔淰扢ヾ冼隓恄伝崽﹞\n\
⑴逑モ珜扽伝崽\n\
昡ス柁ḷ迻﹞\n\n"

114 "隓恄伝崽麔淰﹞⑴逑モ珜 \n\
扽伝崽麔淰柁ḷ迻﹞\n\n"

115 "隓恄伝崽譯ト昡ス﹞\n\
谹韁篎昡ス痐譫磣隉侇嗄祼隓恄蝒汃﹞\n\n"

$set 28
$ ****** Module: Desktop.c ****(developer comment only)********

$ Messages 1-3 Workspace error messages
$ Message 4 is the title for the Workspace popup menus
$ Messages 5-8 are the labels and mnemonics for the Workspace obj popup menu

1 儸麔淰髓ボ磝Бョ齡洠睮斕﹞\n\
霘藞謥攜フ柁ボ磝﹞
2 儸麔淰髓ボ磝Бョ婘沓麔淰扢斕\n\
(篎麔淰邴坭⺌柁麔淰扢).\n\
霘藞謥攜フ柁ボ磝﹞
3 ボ磝珜 %s 柁麔淰儸Бョ齡汃洠睮斕﹞\n\
睎攜逑渿フボ柁ⅱ纂堈麔淰勂蘋齡汃洠睮﹞\n\
蚍衭ヵ﹜霘渿怬斕欄纂适隞杬ボ﹞

4 齡汃洠睮昡ス

5 ⺌齡汃洠睮斕崽⑩(R)
6 R
7 瞅絒々麔淰扢(O)
8 O

9 儸昡ス髓ボ磝Бョ齡洠睮斕﹞\n\
霘藞謥攜フ柁ボ磝﹞

10 儸昡ス髓ボ磝Бョ婘沓麔淰扢斕\n\
(篎昡ス邴坭⺌柁麔淰扢).\n\
霘藞謥攜フ柁ボ磝﹞

11 ボ磝珜 %s 柁昡ス儸Бョ齡汃洠睮斕﹞\n\
睎攜逑渿フボ柁ⅱ纂堈昡ス勂蘋齡汃洠睮﹞\n\
蚍衭ヵ﹜霘渿怬斕欄纂适隞杬ボ﹞

12 "熀蝝攜ポ恄柁齡汃洠睮﹞蠡泂齡汃洠睮羼渿旂\n\
纂瞗齡汃洠睮轡昡ス磝珜:\n\
   %s\n\
儸Бョ齡汃洠睮柁茯葔泂⻏﹞\n\
隓恄渿怬鱗フボ昡ス勂蘋齡汃洠睮﹞\n\
蚍衭渿怚フボ昡ス勂蘋齡汃洠睮﹜霘渿怬斕纂堈彶ボ﹞"

13 "昡ス:\n\
   %s\n\
攜ョ麔淰侇嗄斕﹞"

$set 29
$ ****** Module: Help.c ****(developer comment only)********

$ Message 1 is the title for the dtfile help dialog
$ Messages 1 and 2 are titles for the Help dialog, Message 2 is
$   used when the user has specified a title for dtfile windows
$ Message 3 is the text for help on the "Open New View" action
$ Message 4 is the text for help on the "Open In Place" action
$ Messages 5-6 are help error messages

1 麔淰磣隉炟赮伢諰咭
2 %s 赮伢諰咭

3 `%s` 棬汃珜揧衭忴柁麔淰扢瞅絒藹纂堈隞柁麔淰磣隉炟槉棷﹞

4 `%s` 棬汃渿揧衭忴柁麔淰扢䬷ざ卼げ虳柁麔淰磣隉炟槉棷﹞

5 扽嵁髱 %s 棬汃柁赮伢諰咭
6 扽嵁髱 %s 麔淰麷伀柁赮伢諰咭

7 `%s` 棬汃珜揧衭忴柁麔淰扢瞅絒藹纂堈隞柁\n\麔淰磣隉炟槉棷槉嵺﹞

8 `%s` 棬汃渿揧衭忴柁麔淰扢䬷ざ卼げ虳柁\n\麔淰磣隉炟槉棷槉嵺﹞

9 麔淰杶扜麔赮伢諰咭

10 "ロ适藞抻昡ス扽赮伢諰咭﹞"

$set 30
$ ****** Module: SharedMsgs.c ****(developer comment only)********

$ The following messages are used in more than one place within the
$ dtfile source.  Unless otherwise specified, they are error messages.

1 隓恄⺌ %s 幺抻

$ Message 2 is used to format the file attributes in 'by attributes' mode
2 %b %d %H:%M:%S %Y

3 隓恄渿麔淰 %s ⺌饜鞥 %s 傶棬迖闀蕍﹞\n\
饜鞥 %s ⑴逑ョ睎柁麔淰侇嗄斕稹暋痤攜悎撋﹞
4 隓恄渿麔淰 %1$s ⺌饜鞥 %2$s 傶棬迖闀蕍﹞\n\
饜鞥 %3$s ⑴逑ョ睎柁麔淰侇嗄斕稹暋痤攜悎撋﹞
5 隓恄幺抻 %s
6 隓恄嬣蘋麔淰扢 %s
7 隓恄唈ゥ %s
8 隓恄伝崽 %s
9 ボ磝珜\n\
  %s\n\
  柁麔淰迖麔淰扢儸Бョ靨攜逑揧适嬣﹞\n\
  霘耰蘋攜フ柁ボ磝﹞

$ Message 10 is the help topic string for help on a file icon or action
10 麔淰麷伀/棬汃柁絩訒

11 睎攜逑渿聤梏挴泂珜麔淰ボ磝柁纂楶ソ﹞
12 隓淩柁硻岊罶媢﹞\n\n\
髓譯麔淰扢攜Бョ﹜迖隓恄Б抻”\n\n\
     %s\n

$ Messages 13-16 are dialog titles
13 %s 颮羏
14 %s 挴襓
15 驨卼 %s
16 麔淰磣隉炟

$ Message 18 is appended to ".." folders
18 (芼譫纂嬬)

$ Messages 19 and 20 are messages which appear when a user clicks item help
$ outside the application.  19 is the title, while 20 is the message.
19 驨卼禋げ赮伢諰咭蠆諟
20 睎⽁禕ョ麔淰磣隉炟斕\n\
藞謥纂蠣ス﹞

$ Messages 21 and 22 are titles for error dialogs
21 麔淰傶棬蠆諟
22 麔淰椵廎蠆諟
23 隓恄唈ゥ '%s'\n\n\
瑊葾蝯柁婘モ旂\n\
睎髱篎砨驨麔淰迖麔淰扢\n\
扽薚柁暐⑴ḷ﹞\n\n\
蚍衭黀槉暐⑴ḷ﹜ 霘藞抻篎昡ス﹜\n\
隑悒藞抻"彶庍暐⑴ḷ...'

24 睎⽁禕ョ麔淰磣隉炟斕藞抻纂堈昡ス﹞\n\
"驨卼禋げ" 赮伢諰咭ⅲョ睎絒棬柁鶈え嶂冈斕\n\
汃え﹞

25 隓恄唈ゥ '%s'\n\n\
瑊葾蝯柁婘モ旂\n\
睎髱篎砨驨麔淰迖麔淰扢\n\
扽薚柁暐⑴ḷ﹞\n\n\
蚍衭黀槉暐⑴ḷ﹜ 霘藞抻篎昡ス﹜\n\
隑悒⺌伒隃衢逑玿斕藞抻"彶庍暐⑴ḷ...'

26 睎⽁禕ョ鶈え嶂冈磣隉炟斕藞抻纂堈昡ス﹞\n\
"驨卼禋げ" 赮伢諰咭ⅲョ睎絒棬柁鶈え嶂冈斕\n\
汃え﹞


$set 31

$set 32
$ ****** Module: dterror.src ****(developer comment only)********
$ Message 1 is a title for dterror
1 dt 蠆諟
2 麔淰磣隉炟瞅絒げ蠊蠆諟 

$set 33
1 ロ适昡ス
2 げ虳麔淰扢

$quote "
3 "傶棬昡ス蠆諟"

4 "闀蕍昡ス蠆諟"

5 "椵廎昡ス蠆諟"

6 "閰箹傶蘋:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞"

7 "閰箹闀蕍怉:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞"

8 "閰箹椵廎怉:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞"

9 "閰箹傶棬怉:\n\n\
   %s\n\n\
攜旂麔淰扢﹞"

10 "閰箹闀蕍怉:\n\n\
   %s\n\n\
攜旂麔淰扢﹞"

11 "閰箹椵廎怉:\n\n\
   %s\n\n\
攜旂麔淰扢﹞"

12 "閰箹傶棬柁昡ス:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞"

13 "閰箹傶棬柁昡ス:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞\n\
攜傶棬ズ纂堈﹞"

14 "閰箹闀蕍柁昡ス:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞"

15 "閰箹闀蕍柁昡ス:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞\n\
攜闀蕍ズ纂堈﹞"

16 "閰箹椵廎柁昡ス:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞"

17 "閰箹椵廎柁昡ス:\n\n\
   %s\n\n\
攜Бョ麔淰侇嗄斕﹞\n\
攜椵廎ズ纂堈﹞"


$set 99
$ ****** Version Information ********
$ DO NOT TRANSLATE THESE MESSAGES
$ DO NOT CHANGE THESE MESSAGES
$ DO NOT LOCALIZE THESE MESSAGES
$ These messages are used for the version information.
1 "@(#)version_goes_here"
2 "\n@(#)_DtMessage catalog source $TOG: dtfile.msg /main/6 1998/04/29 15:13:40 rafi $"

