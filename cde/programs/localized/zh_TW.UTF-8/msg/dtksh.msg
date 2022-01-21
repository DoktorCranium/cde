$ $XConsortium: dtksh.msg /main/3 1996/07/24 19:02:59 drk $
$set 1
1 DtkshCvtStringToPixel”⺪痝 '%s' ゝ泂氂

$set 5
1 挴泂藹霽ロ罶鳲棤禨“聧蝝 '%s'
2 罶鳲斒眭諟“眭冈鶈珜 'name:value'”%s
3 罶鳲禳觰蠣珜 ':'﹜ɪ睎囷え '='”%s
4 齡怞嗢儸媊沓暋泂
5 え恄”XtInitialize variable applicationName applicationClass [args ...]
6 え恄”%s variable name class parent [arg:val ...]
7 え恄”XtCreateApplicationShell variable name class [arg:val ...]
8 え恄”XtPopup widget GrabNone|GrabNonexclusive|GrabExclusive
9 隓恄藑籫庉抻麷倛 '%s'“モ囷え 'GrabNone'
10 え恄”XtIsShell widget
11 え恄”XtMapWidget widget
12 え恄”XtUnmapWidget widget
13 え恄”%s variable widget
14 え恄”XtScreen variable widget
15 え恄”XtWindow variable widget
16 え恄”XtCallCallbacks widget callbackName
17 え恄”XtHasCallbacks variable widget callbackName
18 え恄”XtAddCallback widget callbackName ksh-command
19 え恄”XtRemoveCallback widget callbackName ksh-command
20 髓譯旂隓淩柁ャⅰ搢隉蹌磍”%s
21 挴泂柁ャⅰ搢隉ゝ漶癱
22 え恄”XtAddEventHandler widget mask nonMaskable ksh-command
23 え恄”XtRemoveEventHandler widget mask nonMaskable ksh-command
24 挴泂柁呦ス搢隉搢隉蟟ゝ蹌磍
25 え恄”XtGetValues widget resource:variable ...
26 髓譯柁罶鳲棤禨眭冈蠆諟”%s
27 え恄”XtSetValues widget arg:val ...
28 え恄”XtAddWorkProc variable command
29 え恄”XtRemoveWorkProc workProcId
30 workProcId 棤禨⽁禕珜觸蠟瑱⻏禨”%s
31 え恄”XtAddTimeOut variable milliseconds command
32 袹秮棤禨⽁禕騰卼誻
33 え恄”XtRemoveTimeOut intervalId
34 intervalId 棤禨⽁禕珜觸蠟瑱⻏禨”%s
35 え恄”%s widget ...
36 え恄”XBell display volume
37 え恄”%s variable screen
38 糬魦棤禨隓淩”%s
39 え恄”XDefineCursor display window cursorId
40 cursorId 棤禨隓淩”%s
41 え恄”XUndefineCursor display window
42 え恄”XtRemoveAllCallbacks widget callbackName
43 え恄”XTextWidth variable fontName  string
44 え恄”%s display drawable [args ...]
45 drawable 棤禨隓淩”%s
46 destination 棤禨隓淩”%s
47 頝夆怐禨ボ磝隓恄藑籫”%s
48 轃蛨穔冈隓恄藑籫”%s
49 鸁頝藞禋隓恄藑籫”%s
50 纂咍瑀瀦柁鷁揧芩靬
51 え恄”XCopyArea display source dest sourceX sourceY width height destX destY [args ...]
52 隓恄渿罶鳲麷倛 '%s' 鼲葎 'String'
53 隓恄渿罶鳲麷倛 'String' 鼲葎 '%s' 麷倛
54 え恄”XtAddInput variable [-r] fileDescriptor kshCommand
56 え恄”XtRemoveInput inputId
57 inputId 棤禨⽁禕珜觸蠟瑱⻏禨”%s
59 え恄”XFlush display
60 え恄”XSync display discard
61 え恄”XRaiseWindow display window
62 え恄”%s widget [True|False]
63 え恄”%s widget translations
64 え恄”XtUninstallTranslations widget
65 え恄”XtParent variable widget
66 え恄”XtLastTimestampProcessed variable display
67 え恄”DtSessionRestorePath widget pathVariable saveFile
68 え恄”DtSessionSavePath widget pathVariable fileVariable
69 え恄”DtShellIsIconified widget
70 え恄”DtSetStartupCommand widget command
71 え恄”DtSetIconifyHint widget boolean
73 rootWindow 棤禨隓淩”%s
74 え恄”DtWsmSetCurrentWorkspace widget atom
75 齡汃洠睮蠣袓隓淩”%s
78 え恄”DtWsmSetWorkspacesOccupied display window workspaceList
79 え恄”DtGetHourGlassCursor variable display
80 え恄”DtWsmAddCurrentWorkspaceCallback variable widget ksh-command
81 え恄”DtWsmRemoveWorkspaceCallback handle
82 え恄”XtNameToWidget variable referenceWidget names
83 え恄”DtDbLoad
84 え恄”DtDbReloadNotify ksh-command
85 え恄”DtActionExists actionName
86 え恄”DtActionLabel variable actionName
87 え恄”DtActionDescription variable actionName
88 え恄”DtActionInvoke widget actionName termParms execHost contextDir useIndicator ksh-command ["FILE" fileName] ...
89 え恄”DtDtsLoadDataTypes
90 え恄”DtDtsFileToDataType variable fileName
91 え恄”DtDtsFileToAttributeValue variable fileName attrName
92 え恄”DtDtsFileToAttributeList variable fileName
93 え恄”DtDtsDataTypeToAttributeValue variable dataType attrName optName
94 え恄”DtDtsDataTypeToAttributeList variable dataType optName
95 え恄”DtDtsFindAttribute variable name value
96 え恄”DtDtsDataTypeNames variable
97 え恄”DtDtsSetDataType variable fileName dataType override
98 え恄”DtDtsDataTypeIsAction dataType
99 え恄”ttdt_open variable status variable2 toolname vendor version sendStarted
100 え恄”tttk_Xt_input_handler procId source id
101 罶鳲棤禨⽁禕珜謽禨”%s
102 id 棤禨⽁禕珜觸蠟瑱⻏禨”%s
103 え恄”ttdt_close status procId newProcId sendStopped
104 え恄”ttdt_session_join variable status sessId shellWidgetHandle join
105 え恄”ttdt_session_quit status sessId sessPatterns quit
106 sessPatterns 棤禨隓淩”%s
107 え恄”ttdt_file_event status op patterns send
108 え恄”ttdt_file_quit status patterns quit
109 え恄”ttdt_Get_Modified pathName scope timeout
110 え恄”%s status pathName scope timeout
112 え恄”tt_error_pointer variable ttStatus
113 え恄”%s status msg
114 え恄”%s status msg msgStatus msgStatusString destroy
115 え恄”ttdt_file_join variable status pathName scope join ksh-command
116 え恄”tt_file_netfile variable status filename
117 え恄”tt_netfile_file variable status netfilename
118 え恄”tt_host_file_netfile variable status host filename
119 え恄”tt_host_netfile_file variable status host netfilename
120 え恄”XtIsSubclass widget class
121 %s 攜旂淩柁 widget 麷伀ボ磝
122 え恄”XtClass variable widget

$set 6
1 DtkshCvtWindowToString”'from' 圊柁騰麵隓淩
2 DtkshCvtHexIntToString”'from' 圊柁騰麵隓淩
3 DtkshCvtIntToString”'from' 圊柁騰麵隓淩
4 DtkshCvtBooleanToString”'from' 圊柁騰麵隓淩
5 DtkshCvtStringToWidget”'from' 圊柁騰麵隓淩
6 DtkshCvtStringToWidget”Unable to find a widget named '%s'
7 DtkshCvtStringToCallback”'from' 圊柁騰麵隓淩
8 DtkshCvtCallbackToString”'from' 圊柁騰麵隓淩
9 DtkshCvtWidgetToString”'from' 圊柁騰麵隓淩
10 DtkshCvtWidgetToString”隓恄岊怉 widget 柁ボ磝
11 DtkshCvtWidgetClassToString”'from' 圊柁騰麵隓淩
12 DtkshCvtWidgetClassToString”ゝ洁柁 widget 麷伀
13 DtkshCvtStringToWidgetClass”ゝ洁柁 widget 麷伀ボ磝
14 DtkshCvtScreenToString”'from' 圊柁騰麵隓淩

$set 11
1 隓恄岊怉唫⻏ボ磝 '%s' ョ '%s' 廎擛斕
2 DtkshCvtCallbackToString”蠡楶鼲葎邅鍙棷鬿⻏
3 罶鳲 '%s' 捋鈺 (Hashing) ⼇絫﹜ョ widget 麷伀 '%s' 斕
4 ゝ菙坯衢逑ボ磝
5 杬麟隓恄欹⺼“齡怞嗢泲ゝ媊沓暋泂
6 widget '%s' 唈ゥ⼇絫
7 䬷ざ棤禨隓淩”%s
8 髓譯笱迒蠣袓隓淩”%s
9 widget '%s' ゝ泂氂髓譯罶鳲”%s
10 挴泂柁⻏殦隓淩”%s
11 挴泂柁А夆隓淩”%s
12 widget 搢隉蹌磍 '%s' ゝ棤嘵怉隃Б柁 widget
13 widget ⽁禕旂纂堈 'command' widget
14 widget ⽁禕旂纂堈 'mainWindow' widget
15 widget ⽁禕旂纂堈 'scale' widget
16 widget ⽁禕旂纂堈 'scrollBar' widget
17 widget ⽁禕旂纂堈 'toggleButton' widget 迖 gadget
18 槉嵺棤禨隓淩”%s
19 隓恄崷殦⽁衭柁奡襉忟﹜廎忒斕
20 隓恄岊怉々 widget
21 隓恄岊怉嗃磍 '%s'
22 隓恄岊怉麷倛 '%s'
23 隓恄箾庰剚夼 '%s'“モ囷え 'unsigned long'
24 ゝ洁柁騵麷倛”%s
25 藞禋憿簅隓恄藑籫”%s
26 え恄”%s widget position
27 え恄”%s widget time
28 え恄”%s widget
29 dtksh 蠆諟
30 dtksh 滙夼
31 え恄”%s display window
32 え恄”%s display window variable
33 え恄”%s display rootWindow variable
34 timeout 棤禨隓淩”%s
35 msg 棤禨隓淩”%s
36 patterns 棤禨隓淩”%s

$set 14
1 widget 媊沓暋泂渀﹜蠡楶捋鈺玿⼇絫“廎忒斕
2 隓恄岊怉ボ珜 '%s' 柁 widget 麷伀
3 籫伀А '%s' 攜旂淩柁 widget 搢隉蹌磍
4 隓恄岊怉 widget 麷伀
5 え恄”DtLoadWidget widgetClassName widgetClassRecordName
6 隓恄岊怉ボ珜 '%s' 柁 widget 麷伀奡蠊
7 widget 麷伀 '%s' 媊沓暋泂渀﹜蠡楶捋鈺玿⼇絫
8 \n%sRESOURCES FOR %s%s%s:\n
9 CONSTRAINT 
10 R
11 M
12 S
13 %-15s %-6s %-6s %-18s %-6s %s\n
14 ENV VARIABLE    HANDLE PARENT CLASS              STATUS NAME\n
15 \nえ恄”\tDtWidgetInfo [widgetHandle]\n\tDtWidgetInfo -r <widgetHandle|className>\n\tDtWidgetInfo -R <widgetHandle|className>\n\tDtWidgetInfo -c [className]\n\tDtWidgetInfo -h [widgetHandle]

$set 15
1 隓恄媊沓暋泂 Toolkit
2 髓譯罶鳲隓恄ョ唈ゥ widget\n渀暋泂﹞霘ョ唈ゥ悒囷え XtSetValues 暋泂”%s
3 え恄”%s variable parent name [argument:value ...]
4 え恄”DtHelpReturnSelectedWidgetId variable widget variable
5 え恄”DtHelpSetCatalogName catalogName
6 え恄”DtHelpQuickDialogGetChild variable quickHelpWidget child
7 widget ⽁禕旂纂堈 'quickHelp' widget
8 widget ⽁禕旂纂堈 'list' widget
9 え恄”%s widget position item
10 え恄”%s widget position itemList
11 え恄”%s widget item
12 え恄”XmListDeleteItemsPos widget count position
13 え恄”XmListDeleteItems widget itemList
14 え恄”XmListDeletePositions widget positionList
15 え恄”XmListGetKbdItemPos variable widget
16 え恄”XmListItemExists widget item
17 え恄”XmListItemPos variable widget item
18 え恄”XmListPosSelected widget position
19 え恄”XmListPosToBounds widget position variable variable variable variable
20 え恄”%s widget position notifyFlag
21 え恄”%s widget item notifyFlag
22 え恄”XmListSetAddMode widget boolean
23 え恄”XmListSetKbdItemPos widget position
24 え恄”XmMainWindowSetAreas mainwindow menu command hscroll vscroll work
25 'mainWindow' 搢隉蹌磍旂 NULL
26 え恄”%s variable mainwindow
27 え恄”XmProcessTraversal widget direction
28 ゝ洁柁傶棬巖ホ”%s
29 え恄”XmInternAtom variable display name onlyIfExists
30 え恄”XmGetAtomName variable display atom
31 挴泂柁蠣袓隓淩”%s
32 え恄”XmGetColors widget background foreground topshadow bottomshadow select
33 茯葔頝踛痼蠣隓淩”%s
34 え恄”XmUpdateDisplay widget
35 え恄”%s widget protocol [protocol ...]
36 挴泂柁蠣袓隓淩”%s
37 え恄”XmAddWMProtocolCallback widget protocol ksh-command
38 え恄”XmRemoveWMProtocolCallback widget protocol ksh-command
39 え恄”XmMenuPosition menu event
40 挴泂柁呦ス隓淩”%s
41 え恄”XmCommandAppendValue commandWidget string
42 え恄”XmCommandError commandWidget errorMessage
43 え恄”XmCommandSetValue commandWidget command
44 え恄”XmCommandGetChild variable commandWidget child
45 え恄”XmMessageBoxGetChild variable commandWidget child
46 widget ⽁禕旂纂堈 'messageBox' widget
47 え恄”XmFileSelectionBoxGetChild variable widget child
48 widget ⽁禕旂纂堈 'file selection box' widget
49 え恄”XmSelectionBoxGetChild variable widget child
50 widget ⽁禕旂纂堈 'selection box' widget
51 え恄”XmScaleGetValue scaleWidget variable
52 え恄”XmScaleSetValue scaleWidget value
53 挴泂柁籤坲饕圊隓淩”%s
54 え恄”XmScrollBarGetValues scrollbar variable variable variable variable
55 え恄”XmScrollBarSetValues scrollbar value sliderSize increment pageIncrement notify
56 挴泂柁圊隓淩”%s
57 挴泂柁僶棬蟟騰麵隓淩”%s
58 挴泂柁嚌蠹畽隓淩”%s
59 挴泂柁郟謑嚌蠹畽隓淩”%s
60 え恄”XmScrollVisible scrolledWin widget leftRightMargin topBottomMargin
61 widget ⽁禕旂纂堈 'scrolledWindow' widget
62 衭䬷ざ柁 widget 攜Бョ﹞
63 挴泂柁⼢/⑶饡盉隓淩”%s
64 挴泂柁譫/譯饡盉隓淩”%s
65 え恄”%s widget state notify
66 え恄”catopen variable catName
67 え恄”catclose catId
68 え恄”catgets variable catId setNum msgNum dftMsg
69 widget ⽁禕旂纂堈 'text' 迖 'textField' widget
70 え恄”%s variable widget
71 え恄”%s widget boolean
72 挴泂柁棤禨隓淩”%s
73 え恄”%s widget lines
74 え恄”%s widget maxLength
75 え恄”%s widget string
76 え恄”%s widget variable variable
77 え恄”%s widget position string
78 え恄”%s widget position variable variable
79 え恄”%s widget fromPosition toPosition string
80 挴泂柁 'from' ⻏殦隓淩”%s
81 挴泂柁 'to' ⻏殦隓淩”%s
82 え恄”%s widget firstPosition lastPosition time
83 挴泂柁剼纂堈⻏殦隓淩”%s
84 挴泂柁瑊悒纂堈⻏殦隓淩”%s
85 挴泂柁渀睮隓淩”%s
86 え恄”%s variable widget x y
87 挴泂柁 x ⻏殦隓淩”%s
88 挴泂柁 y ⻏殦隓淩”%s
89 え恄”%s widget left right mode
90 挴泂柁⼢饡⻏殦隓淩”%s
91 挴泂柁⑶饡⻏殦隓淩”%s
92 え恄”%s widget start string direction variable
93 挴泂柁媊沓⻏殦隓淩”%s
94 え恄”XmListGetSelectedPos variable widget
95 え恄”XmListGetMatchPos variable widget item
96 え恄”XmOptionLabelGadget variable widget
97 え恄”XmOptionButtonGadget variable widget
98 え恄”XmGetVisibility variable widget
99 え恄”XmGetTearOffControl variable widget
100 え恄”XmGetTabGroup variable widget
101 え恄”XmGetPostedFromWidget variable widget
102 え恄”XmGetFocusWidget variable widget
103 え恄”XmFileSelectionDoSearch widget directoryMask

$set 16
1 DtkshCvtNamedValueToString”岊攜怉嗃ポ炟
2 DtkshCvtStringToNamedValue”隓恄鼲葎А⻌ '%s'


$ The following messages are for ksh93 itself.  The message numbers must
$ match those specified in the MsgStr array allmsgs in 
$ ksh93/src/cmd/ksh93/sh/init.c, as must the set number.
$set 25

1  汒
3  欹⺼斕
4  [-n] [arg...]
5  [arg...]
6  [dir] [list]
7  [job...]
8  [n]
9  [name [pathname] ]
10  [name]
11  [top] [base]
12  expr...
13  format [arg...]
14  旂纂堈怐禨
15  旂纂堈驨耰А
16  旂纂堈蠡唈 shell
17  旂纂堈鼲Б怐禨
18  旂纂堈ゝ泂氂柁怐禨
19  name [arg...]
20  optstring name [args...]
21  秮
23 ${HOME:-.}/.profile
24 %c”ョ玿ざ冈斕隓淩柁А蠣 - %s
25 %c”ゝ洁柁眭冈挴泂蠣
26 %d-%d”隓淩柁謓睕
27 %d”隓淩柁蘑蠣杬麟碬斿ヾ
28 %s 旂纂堈伀ボ﹜㪫卼 
29 %s 旂纂堈藣罐柁伀ボ﹜㪫卼
30 谹韁 %s
31 %s ゝ洁柁椕芚
32 %s”'?' 蝒磭騵鶈囷え ':'
33 %s”徆氂
34 %s”鰱禨鶈珜 %job 迖搢隉 ids
35 %s”岊攜怉伀ボ\n
36 %s”磭禨諴恄蠆諟
37 %s”挴泂錛衭 lvalue
38 %s”麔淰痼蠣磍謑蠆諟
39 %s”眭冈蠆諟
40 %s”磍謑蠆諟
41 %s”藞禋蠆諟
42 %s”鷥葎蠆諟
43 %s”暋歂蠆諟
44 %s”隓恄唈ゥ
45 %s”隓恄欹⺼
46 %s”隓恄瞅絒
47 %s”崽禨珜誻
48 %s”錭棦坲⼃
49 %s”隓恄欹⺼汒 %s
50 %s”麔淰儸Бョ
51 %s”攜ポ恄柁怐禨ボ磝
52 %s”隓淩柁伀ボ
53 %s”隓淩柁斒衧 (discipline) 怐禨
54 %s”隓淩柁鼲Бボ磝
55 %s”隓淩柁怐禨ボ磝
56 %s”隓淩柁ボ磝
57 %s”隓淩柁纂郫玿ざ冈
58 %s”隓淩柁⺌宎棤嘵
59 %s”隓淩柁囷え”
60 %s”隓淩柁䨣禨ボ磝
61 %s”攜旂纂堈籫伀А
62 %s”ⅲ逑幺抻
63 %s”簅圝泲ゝ蕍汃
64 %s”熅罐迻戔
65 %s”鶈彶ロ嗃奡
66 %s”扽譫嬬樄鷁
67 %s”扽棤嘵ボ磝
68 %s”隓恄岊怉
69 %s”ゝ蕍汃
70 %s”蝒磭蠣麷倛攜砨晥
71 %s”鬿⻏坲⼃
72 %s”ゝ暋泂棤禨
73 %s”棤禨洠く迖ゝ暋泂
74 %s”踽媝霽豟
75 %s”棤嘵䨣禨攜逑旂嵕ト
76 %s”錛衭聤梏ボ磝鰱禨
77 %s”迻戔
78 %s”痼禨坲⼃
79 %s”漶簅熅罐謓睕
80 %s”挭芧攜髱磝
81 %s”ゝ洁柁怐禨
82 %s”ゝ洁柁諴侔伀
83 %s”ゝ洁柁蝒磭騵
84 %s”ゝ洁柁媢磍ボ磝
85 %s”渿鰱媊媝聤
86 (瀄幰蒺罐)
87 -c 錛衭鰱禨
88 -e - 錛衭痼纂鰱禨
89 /vpix
90 <ゝ洁柁杬麟>
91 ACE#?F#?H:[name]L#?R#?Z#?fi#?[base]lnprtux [name=[value]...]
92 AE#?F#?HL#?R#?Z#?fi#?[base]lnprtux [name=[value]...]
93 斕黫
94 Ad:[delim]prst#[timeout]u#[filenum] [name...]
95 滙夼昋ⅰ
96 淂樄鷁斒眭蠆諟
97 侇嗄昋ⅰ蠆諟
98 磣蝚斕栠
99 蒝殈粡蠆諟
100 隓恄絒棬齡汃祰戔
101 隃⺼藞禋暋泂
102 DIL 媢磍
103 騵樄鷁彘欐蝒汃
104 DircabefhkmnpstuvxCI:[file]o:?[option]A:[name] [arg...]
105 DircabefhkmnpstuvxCo:?[option]A:[name] [arg...]
106 EMT 暋歂
107 熅罐 CPU 渀睮迻戔
108 熅峈麔淰騰麵迻戔
109 秸棬坲⼃
110 HSacdfmnstv [limit]
111 斕欐
112 IO 媢磍
113 攜ポ恄柁挴麟
114 吤黫
115 覗崽
116 LP [dir] [change]
117 奡襉忟蠆諟
118 傶鼲搢隉
119 扽齡汃祰戔
120 諔緷吤黫
121 懘緧滙夼
122 諔鳲斕黫
123 渀睮滙夼晼蠊
124 廎忒
125 罶鳲蟺⼇
126 ャ艀鰹柁 tty 勐棬蟟...
127 S [mask]
129 Еツ簅圝儸庍䨣
130 葅桵吤黫
131 鐖郣汒
132 彘欐 (媢磍)
133 彘欐 (tty 藣蘋)
134 儸彘欐柁搢隉隃ョ凭㶴
135 彘欐
136 彘欐 (tty 藣罐)
137 鼲葎隞柁 tty 勐棬蟟...
138 侇嗄伒渿撋筄
139 嗈欐
140 寍麶/BPT 暋歂
141 隓恄藰籫柁斿ヾ
142 霘囷え 'exit' 坭彘欐楙堈 shell
143 囷え炟媢磍 1
144 囷え炟媢磍 2
145 斿ヾゝ泂氂
146 摫鶅渀睮滙夼
147 槉嵺騰麵庍䨣
148 睎齡汃ョ欹⺼
149 睎斕欐柁齡汃
150 [_[:alpha:]]*([_[:alnum:]])
151 \n@(#)Version 12/28/93\0\n
152 \n@(#)Version M-12/28/93\0\n
153 \n翍骳
154 \r\n\007か卼ゝ汃え﹜shell 渿ョ 60 秮蠡蝺渀
155 a name...
156 a:c [command [args...] ]
157 afpv name...
158 滙夼 %s %.3f\n
159 alarm -r %s +%.3g\n
160 鶈鰱禨
161 げ蠊蠆諟
162 麔淰痼蠣磍謑蠆諟
163 鷥葎蠆諟
164 隓恄Б抻々げ蠊
165 隓恄唈ゥ磣蝚
166 隓恄唈ゥ穛渀麔淰
167 隓恄雰ぇ騵嶂囥
168 隓恄抻痤 %s
169 隓恄暋泂 %s
170 隓恄暋泂滙夼鐖
171 錛衭蛨ス
172 dsf:[library] [name...]
173 e:[editor]lnrsN# [first] [last]
174 麔淰廎忒
175 f:[format]nprsu:[filenum] [arg...]
176 fnv name...
177 hist -e "${VISUAL:-${EDITOR:-vi}}" 
178 奡蠊麔淰ゝ瞅絒
179 諴恄蠆諟
180 麷倛 %c 柁鰱禨隓淩
181 旂纂堈 shell 蠡唈斿ヾ﹜㪫卼
182 旂纂堈寍麶伀ボ﹜㪫卼
183 覗崽
184 剼 %d ⺼”$ 虳郖攜旂 \\
185 剼 %d ⺼”${} 蠡柁 %c 鶈篎蠹鰱磍
186 剼 %d ⺼”%s 旂ゝ洁柁簅圝
187 剼 %d ⺼”[[...]] 斕柁 %s 隃儸寲蛫攜え﹜庍え ((...))
188 剼 %d ⺼”'=' 隃儸寲蛫攜え﹜庍え '=='
189 剼 %d ⺼”-a 隃儸寲蛫攜え﹜庍え -e
190 剼 %d ⺼”%c 虳郖柁 \\ 砉絅髓猻渿坭囷え
191 剼 %d ⺼”`...` 隃儸寲蛫攜え﹜庍え $(...)
192 剼 %d ⺼”%c 鼲氂髓礱伬雰ぇ徆氂
193 剼 %d ⺼”芩靬簅圝 %s
194 剼 %d ⺼”霘渿 %c 蠹譫鰱磍﹜髓礱伬雰ぇ徆氂
195 剼 %d ⺼”set %s 隃儸寲蛫攜え
196 剼 %d ⺼”禂孲 shell 錛蠹蘋洠眭
197 剼 %d ⺼”囷え騰挭芧挭⻖﹜髓伬 $id[...] 雰ぇ徆氂
198 剼 %d ⺼”囷え洠眭迖聧眭坭禳觰蝒磭騵 %c 縋 %c
199 ln#[signum]s:[signame] sig...
200 槮欐僳蘋 setuid/setgid shell
201 髱鶈
202 隞⺼
203 nlp [job...]
204 扽奡蠊麔
205 扽栯緧搢隉
206 扽楙堈齡汃
207 扽楙堈搢隉
208 ゝ齬葰
209 驨椲
210 瞅絒
211 熅罐瞅絒麔淰迻戔
212 奡襉忟跂潞
213 p [action condition...]
214 p [name[=value]...]
215 棤禨ゝ暋泂
216 攜怞暐⑴ḷ
217 搢隉儸Бョ
218 ptx [name=[value]...]
219 pvV name [arg]...
220 r [varname seconds]
221 剼 %d ⺼諴恄蠆諟”`%s' %s
222 剼 %d ⺼諴恄蠆諟”簅圝 %s 适闀
223 諴恄蠆諟”`%s' %s
224 sys
225 嶉恁藣蘋蝺渀
226 盻蛺恁斕
227 錭棦隓恄Б抻
228 ゝ迻戔
229 攜嗃ポ
230 囷え炟
231 斿ヾ
232 嬣蘋 %d ⼇絫
233 ョ $_ 睎柁瑧ス
234 誻⻏蠣嗢
