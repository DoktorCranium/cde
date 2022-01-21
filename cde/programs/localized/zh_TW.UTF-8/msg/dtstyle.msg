 
$ "$XConsortium: dtstyle.msg /main/4 1995/12/08 09:50:58 rswiston $"

$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dtstyle.msg
$ **
$ **  Project:     DT Style Manager
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for dtstyle
$ **
$ **
$ *****************************************************************************
$ **
$ **     (c) Copyright 1990 Hewlett-Packard Company
$ **     All Rights reserved
$ **
$ **
$ *****************************************************************************
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
$ 2. Messages that only appear in the DT error log file ($HOME/.dt/errorlog).
$ 
$     The localization of these messages is OPTIONAL.  These messages are
$     identified by the following:
$ 
$  MESSAGES xx-yy IN SET zz WILL ONLY APPEAR IN THE DT ERRORLOG FILE
$ 
$ 3. Messages that should not be localized.  
$ 
$     These messages are identified by the following:
$ 
$  DO NOT TRANSLATE or CHANGE or LOCALIZE MESSAGES xx-yy from set zz
$ 
$ ***** END (NOTE FOR MESSAGE CATALOG TRANSLATORS) *****
$ 
$ ******************************************************************************
$ *************************************<L>*************************************
$ **  -----------------GENERAL LOCALIZATION NOTES SECTION---------------------
$ * Comment lines begin with a $ except $set which indicates the start of a 
$ * new set.
$ *
$ * Do not delete any comments; you may add comments for your use.
$ *
$ * 
$ **  ----------------GENERAL LOCALIZATION NOTES SECTION END------------------
$ *************************************<L>*************************************

$set 2
$ Message 1 from set 2 was deleted from the message catalog

$ _DtMessage 2 is the title of all Information dialog boxes
2 楈夼
$ _DtMessage 3 is the title of all Error dialog boxes
3 蠆諟
$ _DtMessage 4 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
4 Cannot communicate with the session\n\
manager... Exiting.
 
$  MESSAGES 5-6 IN SET 2 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
5 Style Manager is already running,\n\
second attempt aborted.
6 An X Toolkit error occurred...\n\
Exiting.

$ _DtMessage 7 is the title of all Help dialog boxes
7 ⼃倛冈穔磣隉炟 - 赮伢諰咭

$ _DtMessage 8 is an error message that appears when you are using Itemh Help
$ and select on something outside of the Style Manager
8 睎⽁禕ョ⼃倛冈穔磣隉炟\n\
斕藞謥纂堈禋げ﹞

$ _DtMessage 9 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
9 Could not obtain screen saver information\n\
from the session manager. Start up settings\n\
may be incorrect.


$set 4
$ _DtMessage set 4 is for the Style Manager main window
$ Messages 6,8-26,34,39 from set 4 were deleted from the message catalog

$ _DtMessage 1 is the title of the main dtstyle window
1 ⼃倛冈穔磣隉炟

$ mnemonic and label for the File menubar item.
2 F
3 麔淰(F)
$ mnemonic and label for the Help menubar item.
4 H
5 赮伢諰咭(H)

$ _DtMessage 7 is the label for the Exit button in the File pulldown
$ the mnenomic for the Exit button is set 4 _DtMessage 40
7 廎忒

$ Messages 27-33,35  are the labels on the buttons in the dtstyle main window.
27 籦⺪
28 А夆
29 茯葔泂⻏
30 耰薏
31 僶趡
32 韏鐖
33 糬魦
35 絒棬

$  MESSAGE 36 IN SET 4 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
36 No Dtstyle restore information available for current session

$ _DtMessage 37 is the label on the dtstyle icon
37 ⼃倛冈穔 

$ Message 38 is the label on the Window button in the dtstyle main window.
38 槉嵺

$ _DtMessage 40 is replaced with message 53
$ 40 E

$ *
$ * mnemonic and label for the Help menu items.
$ * 

$ Messages 41-42 have been replaced with messages 54-55
$ Overview... menu item
$ 41 I
$ 42 Introduction...

$ Tasks... menu item 
43 T
$ Message 44 has been replaced with messages 56
$ 44 Tasks...

$ Reference... menu item
$ 45 R
$ Message 46 has been replaced with messages 57
$ 46 Reference...

$ On Item menu item
$ Keybaord menu item
47 O
48 驨卼禋げ(O)

$ Using Help... menu item
49 U
$ Message 50 has been replaced with messages 58
$ 50 Using Help... 

$ Messages 51-52 have been replaced with messages 59-60
$ Overview menu item
$ 51 V
$ 52 Version...

$ Message 53 is replaced with message 40
53 x

$ Messages 54-55 are replacements for messages 41-42
54 v
55 颮羏(v)

$ Message 56 is a replacement for messages 44
56 齡汃(T)

$ Message 57 is a replacement for messages 46
57 棤℡(R)

$ Message 58 is a replacement for messages 50
58 囷え赮伢諰咭(U)

$ Messages 59-60 are replacements for messages 51-52
59 A
60 驨卼⼃倛冈穔磣隉炟(A)

$set 5
$ _DtMessage set 5 is for the Font dialog
$ Messages 1-6, 7-16 from set 5 were deleted from the message catalog

$ _DtMessage 17 is the label of the titlebox of the preview font area
17 諅ៜ

$ _DtMessage 18 appears in a Notice dialog after the user selects a new font
$ and presses Ok - when the resource *WriteXrdbImmediate is True
18 А夆柁庍䨣ョ譯絒棬栲咍鶈え嶂\n\
冈渀鞂䬷隃罐坭﹞怬瀦柁鶈え嶂冈﹜\n\
坲ヵ麔淰磣隉炟昑鶈え嶂冈磣隉炟﹜\n\
崽盻睎廎忒痐譫磣隉侇嗄呥テ适隞僳\n\
蘋﹜匢衧攜鞂ゥ伒酈旃罐坭﹞

$ _DtMessage 19 appears in a Notice dialog after the user selects a new font
$ and presses Ok - when the resource *WriteXrdbImmediate is False
19 适隞絒棬楙堈瞃栠汃鞄欄悒﹜\n\
藞泂柁А夆祼鞂揧囷え﹞

$ _DtMessage 20 and 21 is the text that initially appears in the Font Preview 
$ area displaying sample user and system fonts.
20 AaBbCcDdEeFfGg0123456789
21 AaBbCcDdEeFfGg0123456789

$ _DtMessage 22 is the label of the titlebox containing the list of font sizes
22 騰麵

$ _DtMessage 23 is the title of the Fonts dialog
23 ⼃倛冈穔磣隉炟 - А夆

$ _DtMessage 24 is an informative message used by the Fonts dialog 

24 騰麵ト玿斕扽睎げ虳痐郖譫囷え\n\
柁А倛. ヵ峈藞抻呥鶈え隞А倛,\n\
伒囷え⼃倛冈穔磣隉炟 - А倛髱緷,\n\
躂隓恄ャ怉げ虳柁А倛.

$set 6
$ _DtMessage set 6 is for the Beep dialog
$ _DtMessage 1,6 from set 6 have been deleted from the message catalog

$ Messages 2 through 5 are the default buttons and labels of the scales.  
2 蠡泂圊
3 郣畽
4 郣鞜
5 蛺睮

$ _DtMessage 7 is the title of the Beep dialog box
7 ⼃倛冈穔磣隉炟 - 韏鐖  


$set 7
$ _DtMessage set 7 is for the Startup dialog
$ Messages 1-2 from set 7 have been deleted from the message catalog

$ Messages 3 through 9 are labels of the buttons and text visible in the 
$ Session Startup dialog box. 
3 ョ僳蘋渀”
4 凭㶴隃⺼瞃栠汃鞄
5 珃ャ媊沓瞃栠汃鞄
6 僳罐渀緧棯
7 僳罐薚諝髱緷”
8 瞅絒
9 驨椲
10 暋泂媊沓瞃栠汃鞄...

$ _DtMessage 11 is a warning message when the user pushes Set Home Session...
$ Notice the spaces before Continue .. the spaces make it centered.
11 ヵ睎柁媊沓瞃栠汃鞄渿鞂髓\n\
隃⺼瞃栠汃鞄抻鷥﹞\n\n\
                 衭凭㶴蓇?

$ _DtMessage 12 is the title of the warning dialog box when Set Home Session is 
$ pushed. 
12 滙夼

$ _DtMessage 13 is an error message
13 楙堈瞃栠汃鞄旂か纂堈 X 槉嵺侇嗄\n\
絒棬杬麟碬邴絒棬﹞ɪ絒棬暋泂隓淩﹜\n\
モ珜楙堈瞃栠汃鞄隓恄ャ艀﹞

$ _DtMessage 14 is the title of the Session Startup dialog box.
14 ⼃倛冈穔磣隉炟 - 絒棬

$ _DtMessage 15 is an error message
15 瞃栠汃鞄磣隉炟扽ョ欹⺼﹞\n\
絒棬暋泂隓淩﹞


$set 8
$ All of the messages from set 8 have been deleted from the message catalog


$set 9
$ _DtMessage set 9 is for the Mouse dialog
$ Message 7 from set 9 have been deleted from the message catalog

$ Messages 1-4 are labels of toggle buttons in the Mouse Dialog. 
1 ⼢
2 ⑶
3 え鷗塤鳹”
4 挹瘖 2”
$ _DtMessage 5 is the label of default button.
5 蠡泂圊

$ Messages 6,8,9 are labels of the scales.
6 椵挹怚譯
8 蠹楬
9 鶚盉圊

$  MESSAGE 10 IN SET 9 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
10 蠆諟”暋泂挴簅髱鶈\n

11 蒡婽
12 鞜謽

$ _DtMessage 13 appears in a Notice dialog after the user selects the 
$ left-handed or right-handed toggle
13 睎挹纂譯＞薚泂＝欄悒﹜⑶饡縋⼢饡\n\
僶㪫挹瘖柁衢逑ゥ伒ガ葎﹞皕僶趡槉嵺\n\
＞鉡箹椵挹怚譯＝頝夆柁挹瘖 1 縋挹瘖 3\n\
柁⻏殦﹜伒⑴痤洁げ虳え鷗塤鳹柁暋泂﹞\n\

$ _DtMessage 14 appears in a Notice dialog after the user selects the 
$ transfer toggle to change the function of the middle mouse button.
14 ヵ峈睎挹纂譯＞薚泂＝﹜ョ譯纂堈瞃栠汃鞄斕﹜\n\
僶趡挹瘖 2 祼鞂揧暋泂＞鼲葎＝(侹)﹞

$ double-click time and presses Ok (and the resource 
$ *WriteXrdbImmediate is True)
15 鶈え嶂冈适隞絒棬欄悒﹜隞柁椵挹\n\
怚譯楬唄祼鞂ぇ淩﹞

$ _DtMessage 16 appears in a Notice dialog after the user selects a new 
$ double-click time and presses Ok (and the resource 
$ *WriteXrdbImmediate is False)
16 ョ譯纂堈瞃栠汃鞄斕﹜隞柁椵挹怚譯楬唄\n\
伒⑴ぇ淩﹞

$ _DtMessage 17 is the text below the mouse icon. Notice the two lines.
17 鉡箹\n椵挹怚譯

$ _DtMessage 18 is the Mouse Dialog title
18 ⼃倛冈穔磣隉炟 - 僶趡

$ _DtMessage 19 appears in a Notice dialog after the user selects the 
$ adjust toggle to change the function of the middle mouse button.
19 ヵ峈睎挹纂譯＞薚泂＝﹜ョ譯纂堈瞃栠汃\n\
鞄斕﹜僶趡挹瘖 2 祼鞂揧暋泂＞鞜謽＝﹞\n\
挹瘖 2 ⑴髓え坭鞜謽齪А縋トざ藞謥﹞齪А\n\
縋トざ柁柁蒡婽棬汃 (侹) 衧禕囷え挹瘖 1﹞\n\

$set 10
$ _DtMessage set 10 is for the SaveRestore functionality
$ Messages 2,4 from set 10 have been deleted from the message catalog

$  MESSAGE 1,3 IN SET 10 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
$ Messages 1,3 make up one error message.  Put together, they say 
$ "<filename> <_DtMessage 2> <_DtMessage 1>
1 黀栯麔淰暐⑴ḷ﹞
3 %s 旂え坭鬊Б睎柁瞃栠汃鞄柁麔淰\n


$set 11
$ _DtMessage set 11 is for the Backdrop dialog

$  MESSAGE 1 IN SET 11 WILL ONLY APPEAR IN THE DT ERRORLOG FILE

$ _DtMessage 1 - could not open a backdrop directory
1 隓恄瞅絒げ蠊 %s﹞
$ _DtMessage 2 - error opening the backdrop files
2 ⼃倛冈穔磣隉炟柁茯葔泂⻏楶禳\n\
隓恄蝒汃﹜モ珜扽茯葔泂⻏麔⑴\n\
え﹞霘黀栯 $HOME/.dt/errorlog﹞


$ _DtMessage 12 is the title of the Backdrop dialog box
12 ⼃倛冈穔磣隉炟 - 茯葔泂⻏


$set 12
$ _DtMessage set 12 is for the Screen dialog
$ Message 2 from set 12 has been deleted from the message catalog

$ _DtMessage 1 is the title of the Screen dialog box. 
1 ⼃倛冈穔磣隉炟 - 糬魦

$ Messages 3-14 are the labels and buttons for the Screen dialog
3 蠡泂圊
4 糬魦砵諔稹殦
5 絒棬砵諔稹殦
6 ペ伀砵諔稹殦渀睮暋泂
7 禳㺪
8 糬魦孍泂
$ Message 9 has been removed 
10 瞅絒
11 驨椲
12 糬魦砵諔稹殦”
13 糬魦孍泂”
14 絒棬孍泂
15 糬懞⺌棬彘馽
16 糬懞⺌棬彘馽嶂冈
17 絒棬糬懞彘馽嶂冈
18 虳巖郖帣孍泂
$ Message 19 has been replaced by message 21
19 囷え孍泂茯葔
20 ペ伀茯葔渀睮暋泂
$ Message 21 is a replacement for message 19
21 囷え茯葔孍泂
22 椴咭孍泂

$set 13
$ _DtMessage set 13 is for the Keyboard dialog
$ _DtMessage 1,5 from set 13 have been deleted from the message catalog

$ _DtMessage 2 through 4 are labels of scales, buttons, and text visible in the
$ Keyboard dialog box.
2 蠡泂圊
3 ⺌棬适闀
4 挹耰郣畽

$ _DtMessage 6 is the title of the Keyboard dialog box
6 ⼃倛冈穔磣隉炟 - 耰薏


$set 14
$ _DtMessage set 14 is for the Color dialog
$ _DtMessage 1-4,9,14-15,17,19,20,22,24 from set 14 have been deleted from the message catalog

$ Messages 5 through 8 are labels and buttons visible in the Color dialog
5 鞜⺪薏
6 嚌蠹...
7 伝崽...
8 埏庍...

$ _DtMessage 10 is the title above the text area in the Add Palette dialog box
10 隞柁鞜⺪薏ボ磝”

$ _DtMessage 11 is the title of the Add Palette dialog box.
11 嚌蠹鞜⺪薏

$ Messages 12 through 14 are error messages.
12 鞜⺪薏ボ磝攜逑讓屼\n\
譯トА蠣”\n\n\
<space> * : ( ) [ ] { } < > ! | " / \\
$ LOCALIZERS: FOR 8 AND 16 BIT LANGUAGES YOU MAY WANT TO CHANGE THE MESSAGE 
$ TO SAY THE PALETTE NAME MUST BE 10 BYTES OR LESS
13 鞜⺪薏ボ磝⽁禕ョ 10 堈А蠣髓蠡﹞\n

$ _DtMessage 16 is the title of the Delete Palette dialog box.  See screen 4a (2).
16 伝崽鞜⺪薏

$ _DtMessage 18 appears in an information dialog.
18 隓恄伝崽瑊悒纂堈鞜⺪薏﹞\n

$ _DtMessage 21 is an error message
21 滙夼

$ _DtMessage 23 appears in an information dialog
23 衭伝崽鞜⺪薏 '%s' 蓇?\n

$ _DtMessage 25 is an error message that appears when you press the color
$ button and the color server is not running for some reason.
25 ⼃倛冈穔磣隉炟柁籦⺪楶禳隓恄\n\
蝒汃﹜モ珜籦⺪ɵ峇蟟扽ョ欹⺼﹞\n\
霘黀栯 $HOME/.dt/errorlog﹞

$ _DtMessage 26 can be caused by setting the resource *useColorObj to False
$ and then running dtstyle and trying to post the Color Dialog.
26 ⼃倛冈穔磣隉炟柁籦⺪楶禳隓恄\n\
蝒汃﹜モ珜罶鳲 'useColorObj' 暋泂珜\n\
False﹞

$ _DtMessage 27 is for the new ColorUse dialog when you press ok.
27 隞柁＞籦⺪囷え＝圊ョ睎譯纂堈瞃栠\n\
汃鞄渀伒鞂ぇ淩﹞

$ _DtMessage 28 is a warning message that appears on Black and White systems
28 藞抻柁鞜⺪帣ョ睎譯纂堈瞃栠\n\
汃鞄渀伒鞂ぇ淩﹞

$ _DtMessage 29 appears in a warning dialog
29 ボ珜 '%s' 柁鞜⺪薏儸槴Бョ﹞\n\
楙堈隞鞜⺪薏渿鞂适嬣鰹鞜⺪薏﹞\n\
睎裱楙穔惉蓇?

$ _DtMessage 30 is the title of the Color dialog box.
30 ⼃倛冈穔磣隉炟 - 籦⺪

$ _DtMessage 31-33 are the ColorUse options
$ 31 High Color
$ 32 Medium Color
$ 33 Low Color
34 膌く
35 蠡泂圊

$ Dt Message 36 has been replaced by message 39
$ _DtMessage 36 is the title of the Color Use dialog
$ 36 DT Color Use

$ Dt Message 37 has been replaced by message 40
$ _DtMessage 37 is the Color Use button in the main Color Dialog 
$ 37 DT Color Use...

$ _DtMessage 38 is an error message that appears when you press the color
$ button and there are no palette files to be found
38 ⼃倛冈穔磣隉炟柁籦⺪楶禳隓恄\n\
蝒汃﹜モ珜扽鞜⺪薏麔淰⑴え﹞\n\
霘黀栯 $HOME/.dt/errorlog﹞

$ DtMessage 39 is a replacement for DtMessage 36
$ DtMessage 39 is the title of the Color Use dialog
39 衭囷え柁籦⺪禨げ”

$ DtMessage 40 is a replacement for DtMessage 37
$ DtMessage 40 is the title of the Color Use dialog
40 籦⺪禨げ...

$ _DtMessages 41-43 are replacements for Dtmessages 31-33
$ _DtMessage 41-43 are the ColorUse options
41 彶ロ柁痐譫磣隉侇嗄籦⺪
42 彶ロ柁鶈え嶂冈籦⺪
43 彶ロ柁鶈え嶂冈籦⺪

$set 15
$ All of the messages from set 15 have been deleted from the message catalog


$set 16
$ _DtMessage set 16 is for the Color dialog
$ _DtMessage 1-10,13-17 from set 16 have been deleted from the message catalog

$ _DtMessage 11-12 form one error message that appears in an error dialog
11 隓恄伝崽 '%s'﹞\n
12 霘黀栯 $HOME/.dt/errorlog﹜睎⑴皕斕痤怉菙ざ﹞

$  MESSAGE 18-21 IN SET 16 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
18 Warning, Too many directories listed in the resource paletteDirectories,\n\
Maximum number is %d. 
$ _DtMessage 19 - could not open a palette directory
19 Could not open directory %s. 
$ _DtMessage 20 - error opening the palette file
20 Could not open %s. 
$ _DtMessage 21 - error reading a palette file
21 %s is an invalid palette file.


$set 17
$ _DtMessage set 17 is for the Modify Color dialog
$ Messages 1-3,13,16 from set 17 have been deleted from the message catalog

$ Messages 4 through 12 are labels, buttons, and text visible in the
$ Modify Color dialog box
4 籦⺪謓坲
5 鰹
6 隞
7 庉抻籦⺪
8 籦⺪蹌藟蟟
9 ⺪唄
$ We recommend that you don't translate R,G,B which stands for Red, Green,
$ Blue unless there are standard single letter acronyms in your language.
10 窅
11 篝
12 鰼

$  MESSAGE 14-15 IN SET 17 WILL ONLY APPEAR IN THE DT ERRORLOG FILE
14 Warning, couldn't grab pointer.\n
15 Warning, couldn't grab Keyboard.\n

$ _DtMessage 16 is the title of the Modify Color dialog box.
16 ⼃倛冈穔磣隉炟 - 埏庍籦⺪


$set 18
$ _DtMessage set 18 is for the Window dialog
$ _DtMessage 1 is the title of the Window dialog box
1 ⼃倛冈穔磣隉炟 - 槉嵺

$ Messages 2 through 5 are labels on the Window dialog.
2 蠡泂圊
3 槉嵺⺼珜
4 槉嵺頝踛
$ Messages 5-8 have been replaced by messages 13-16 
$ 5 Focus Follows Mouse
$ 6 Click In Window For Focus
$ 7 Raise Window With Focus
$ 8 Opaque Move
9 囷え頝踛巖涺
10 殦卼齡汃洠睮斕
11 蠢暐饜衭槉嵺殦卼煄嬬
12 齡汃洠睮磣隉炟⽁禕适隞絒棬﹜睎\n\
邴汃柁䨣彶懼鞂ぇ淩﹞挹＞薚泂＝⑴髓\n\
适隞絒棬齡汃洠睮磣隉炟﹜挹＞抻祤＝\n\
衧⑴适暋楙咍䨣彶﹞
$ Messages 13-16 are replacements for messages 5-8
13 霘挴怉槉嵺斕囷怬珜隃⺼槉嵺
14 霘挹纂譯槉嵺囷怬珜隃⺼槉嵺
15 珜隃⺼槉嵺悒菙⺍虳磞
16 傶棬渀䬷ざ蠡晥

$set 99
$    DO NOT TRANSLATE THESE MESSAGES
$    DO NOT CHANGE THESE MESSAGES
$    DO NOT LOCALIZE THESE MESSAGES
$    These messages are used for the version information.
$quote "
1 "@(#)version_goes_here"
2 "\n@(#)_DtMessage catalog source $XConsortium: dtstyle.msg /main/4 1995/12/08 09:50:58 rswiston $"

