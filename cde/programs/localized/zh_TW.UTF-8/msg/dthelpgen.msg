$ $XConsortium: dthelpgen.msg /main/3 1995/11/08 14:06:29 rswiston $
$ *****************************************************************************
$ 
$ ***** NOTE FOR MESSAGE CATALOG TRANSLATORS *****
$ 
$ There may be three types of messages in this file:
$ 
$  1. Messages that appear in dialogs or are displayed to the user.
$ 
$     These messages are the default and they should ALL BE LOCALIZED.
$     Note that these messages do NOT have any identification (see the
$     comments for type 2 and 3 below).
$ 
$  2. Messages that only appear in the DT error log file ($HOME/.dt/errorlog).
$ 
$     The localization of these messages is OPTIONAL.  These messages are
$     identified by the following:
$ 
$  MESSAGES xx-yy IN SET zz WILL ONLY APPEAR IN THE DT ERRORLOG FILE
$ 
$  3. Messages that should not be localized.
$ 
$     These messages are identified by the following:
$ 
$  DO NOT TRANSLATE or CHANGE or LOCALIZE MESSAGES xx-yy from set zz
$ 
$ ***** END (NOTE FOR MESSAGE CATALOG TRANSLATORS) *****
$ 
$ ******************************************************************************
$ 
$set 1
$ 
$ _DtMessage 1 is the usage message
$ 
$ Localize only the words 'directory', 'name', and 'language'.
$ 'directory' means the directory name in which the resulting files
$ will be placed. 'name' mean what base name to give the files placed
$ in 'directory'. 'language' means which localized versions of help files
$ to look for.
$ 
1 %s -dir <げ蠊> [-generate] [-file <ボ磝>] [-lang <諴侔>]\n

$ 
$ Mesages 2-18 are error messages.
$ 
2 %s: %s 欄蠣袓攜旂げ蠊\n
3 %s: げ蠊 %s 欄Б抻揧陃\n衭髓崼瞃囷え炟冼禳テ箹纂蓇?\n
4 %s: %s 欄蠣袓攜Бョ\n
5 %s: 讓屼 %s 欄麔淰侇嗄儸橛\n
6 %s: 隓恄Б抻 %s ２ 蠆諟昲鳷磍謑 %d\n
7 %s: 讓屼 %s 欄麔淰侇嗄ⅲ逑幺抻\n
8 %s: 錛衭淂囷え炟髓嬣蘋 %s\n
9 %s: 嬣蘋 %s 攜髱\n
10 %s: 銌硻聤梏旂洠柁\n
11 %s: 曬谹 'title' 罶鳲\n
12 %s: 曬谹 'abstract' 罶鳲\n
13 %s: 曬谹 'volumes' 罶鳲\n
14 %s: 曬谹 'character' 碬罶鳲\n
15 %s: 曬谹げ簅げ蠊\n
16 %s: ゝ僛隃侇ト麔淰\n
17 %s: ゝ僛隃晥忟麔淰\n
18 %s: 隓恄Б抻げ虳齡汃げ蠊 ２ 蠆諟昲鳷磍謑 %d\n
19 %s: 隓恄崷殦奡襉忟\n
20 %s: 挴泂柁侇嗄諴侔 %s 攜髱\n

$ 
$set 2
$ 
$ Specifies the character set used to create this file
$ 
$ This must be localized for the various languages. That is
$ for Japanese shift JIS, it would be 'ja_JP.SJIS'; for Japanese 
$ EUC it would be 'ja_JP.eucJP'. For files written using
$ HP Roman8 character set it would be '<lang+terr>.HP-ROMAN8', etc.
$ The set of allowable locale strings can be found in
$ /usr/dt/config/svc/CDE.lcx
$ 
1 zh_TW.EUC-TW

$ 
$ Specifies the title for the browser.
$ It is used in the body of text displayed to the user.
$ 
2 崐玾囷え赮伢諰咭磣隉婝

$ 
$ Specifies the body of text displayed in the browser.
$ 
$ When localizing, DO NOT alter any text between the "<" and ">" pairs.
$ That is - DO NOT localize the tags such as <ABBREV> and <PARAGRAPH>.
$           DO     localize the text between the tags.
$ 
3 <ABBREV>崐玾囷え赮伢諰咭磣隉婝</ABBREV>                          \
<PARAGRAPH>譯トペ禋簅纕忔鷥玿\n               \
<ANGLE italic> 纂瞗儸ョ轃譫赮伢諰咭</>\n                                      \
Е稹呥漶癱柁雰陔侇ト﹞ 怀禋簅纕\n        \
(縋頝踛) 楁旂ト罐篎侇ト斕赮伢諰咭柁熅椵廎﹞</>     \
<PARAGRAPH after 0 first 1 left 3 label "<CHAR C.DT-SYMBOL-1><0xB7></>"> \
蚍衭䬷ざ雰陔侇ト斕⑴え柁赮伢諰咭柁ト玿﹜霘藞謥\n  \
怬簅纕 (譯簅齪А) 迖頝踛﹞</PARAGRAPH>                        \
<PARAGRAPH after 0 first 1 left 3 label "<CHAR C.DT-SYMBOL-1><0xB7></>"> \
ョ纂雰陔侇ト斕﹜霘硻岊睎衭黀槉柁赮伢諰咭﹜隑悒\n         \
藞謥怬簅纕﹞</PARAGRAPH>                                           \
<PARAGRAPH first 1 left 3 label "<CHAR C.DT-SYMBOL-1><0xB7></>">        \
ヵ峈睎ョ囷え赮伢諰咭槉嵺渀錛衭赮伢諰咭﹜霘挹 F1﹞</PARAGRAPH>

$ 
$ Specifies the Volume Title
$ 
4 赮伢諰咭 ２ 煄嬬

$ 
$ Specifies the preamble to the help file if no volumes or family files
$ are found.
$ 
$ When localizing, DO NOT alter any text between the "<" and ">" pairs.
$ That is - DO NOT localize the tags such as <ABBREV> and <PARAGRAPH>.
$           DO     localize the text between the tags.
$ 
5 <ABBREV>崐玾囷え赮伢諰咭磣隉婝</ABBREV>                                \
<LINK 0 "Help4Help How-To-Register-Help">                                \
<TYPE serif><WEIGHT bold><SIZE 12><ANGLE italic>                         \
霘恞蜑”   扽儸漶癱柁赮伢諰咭                                          \
</SIZE></WEIGHT></TYPE></></LINK>                                        \
<PARAGRAPH leftindent 3 firstindent 3>                                   \
<WEIGHT bold>扽雰陔侇ト蛷漶癱怬轃譫赮伢諰咭麔淰坯廲ៜ.</>              \
赮伢諰咭⑴槴か纂咍鶈え嶂冈囷え﹜霘枺稌ョ鶈え嶂冈斕藞謥赮伢諰咭杬麟﹞</>

$ 
$ Specifies the title to use in the dthelpgen dtksh dialog.
$ 
6 dthelpgen

$ 
$ Specifies the message to display in the dthelpgen dtksh dialog.
$ This message indicates that dthelpgen is building (or rebuilding)
$ the browser information.
$ 
7 雰ぇ廲ៜ嶂冈罶涷斕﹞ 霘寣埸﹞

$ 
$set 3
$ 
$ ******* Text Formatting Templates ********
$ DO NOT TRANSLATE THESE MESSAGES
$ DO NOT CHANGE THESE MESSAGES
$ DO NOT LOCALIZE THESE MESSAGES
$ 
1 <TOPIC charset %s>
2 <TITLE><TYPE serif><WEIGHT bold><SIZE 14>%s</SIZE></WEIGHT></TYPE></TITLE>
3 <PARAGRAPH before 1 first 1 left 1>
4 <CHARACTERSET %s>
5 <TYPE serif><WEIGHT bold><SIZE 12><ANGLE italic>%s</></></></>
6 <PARAGRAPH before 1 first 1 left 1 graphic %s glink %s gtypelink 0>
7 <PARAGRAPH before 1 first 1 left 1 graphic %s glink "%s %s" gtypelink 1>
