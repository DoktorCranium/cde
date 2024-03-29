$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        dtcalc.msg
$ **
$ **  Project:     CDE dtcalc
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for dtcalc
$ **  Any additional messages are to be added to this file by hand,
$ **  and the associated index number placed in the code.
$ **
$ *****************************************************************************
$ **
$ **    (c) Copyright 1993, 1994 Hewlett-Packard Company
$ **    (c) Copyright 1993, 1994 International Business Machines Corp.
$ **    (c) Copyright 1993, 1994 Sun Microsystems, Inc.
$ **    (c) Copyright 1993, 1994 Novell, Inc.
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
$ *****************************************************************************

$set 2
$ ****** Module: motif.c ****(developer comment only)********
$ 
$ Messages 1 - 4 are used by the "numeric base" option button.  Bin is 
$  short for Binary, Oct is short for Octal, Dec is short for Decimal and 
$  Hex is short for Hexidecimal.  Keep these to 3 to 4 characters!
$ 
1 蘑瑱⻏
2 蘇瑱⻏
3 觸瑱⻏
4 觸蠟瑱⻏
$ 
$ Messages 5 - 7 are used by the "display mode" option button. Eng is an
$  abbreviation for Engineering, Fix is an abbreviation for Fixed, and
$  Sci is an abbreviation for Scientific.  Keep these to 3 characters.
$ 
5 齡嶂冈
6 枒泂冈
7 秠蟨冈
$ 
$ NOTE: no message 8
$ 
$ Messages 9 - 11 refer to the three modes the Calculator can operate in.
$  They are listed in the "Mode" option button.
$ 
9 娷棜篲冈
10 敭藟篲冈
11 秠蟨篲冈
$ 
$ Message 12 - This is the title to the Calculator.
$ 
12 衶磭鞥
$ 
$ Messages 13 - 30 are the labels in the menubar pulldown menus and the
$  mnemonic's (the letter that gets underlined for keyboard access) that 
$  go with them. 
$ 
$ Message 13 is the mnemonic for Message 14
$ 
13 O
14 藞禋(O)
15 奡襉穛Б蟟(R)
16 ASCII 鼲葎(A)
$ 
$ Message 17 is the mnemonic for Message 18
$ 
17 H
18 赮伢諰咭(H)
$ 
$ Message 19 is the mnemonic for Message 20
$ 
19 v
20 颮羏(v)
$ 
$ Message 21 is the mnemonic for Message 22
$ 
21 T
22 齡汃(T)
$ 
$ Message 23 is the mnemonic for Message 24
$ 
23 R
24 棤℡罶涷(R)
$ 
$ Message 25 is the mnemonic for Message 26
$ 
25 O
26 驨卼禋げ(O)
$ 
$ Message 27 is the mnemonic for Message 28
$ 
27 U
28 囷え赮伢諰咭(U)
$ 
$ Message 29 is the mnemonic for Message 30
$ 
29 A
30 驨卼衶磭鞥(A)
$ 
$ Message 31 is an simple error message.
$ 
31 隓恄瞅絒䬷ざ蟟﹞\n
$ 
$ Messages 32 and 33 are button labels for dialog boxes.
$ 
32 驨椲
33 伒怮鶈え
$ 
$ Message 34 is an simple error message.
$ 
34 隓恄瞅絒瞃栠汃鞄麔淰
$ 
$ Message 35 - Gets put in the "Functions" popup when no functions have been
$  defined by the users.
$ 
35 ゝ泂氂怐禨
$ 
$ Message 36 and 37 are titles to two types of dialogs.
$ 
36 凭㶴謦汃楈夼
37 薚諝楈夼
$ 
$ Message 38 and 39 are another label for the Help pulldown menu.
$ Message 38 is the mnemonic for Message 39
$ 
38 C
39 蠡晥玿眭(C)
$ 
$ 40 -  This is the mnemonic for the 'Memory Registers...'  option on 
$  the Option menu pulldown.  (message 15 set 2)
$ 
40 R
$ 
$ 41 -  This is the mnemonic for the 'ASCII Convert...' option on the Option
$   menu pulldown. (message 16 set 2)
$ 
41 A
$ 
$ 42 -  This is the mnemonic for the 'Enter Function...' option on the Option
$   menu pulldown.  (message 143 set 3)
$ 
42 F
$ 
$ 43 -  This is the mnemonic for the 'Enter Constant...' option on the Option
$   menu pulldown. (message 142 set 3)
$ 
43 C
$ 
$ 44 -  This is the mnemonic for the 'Exit' option on the Option
$   menu pulldown. (message 403 set 3)
$ 
44 x
$ 
$ 45 -  This is the mnemonic for the 'Financial Registers' option on the Option
$   menu pulldown. (message 138 set 3)
$ 
45 g
$ 
$ 46 - This is the title for the popup menu.
$ 
46 伒怮䬷ざ衶磭鞥
$ 
$ Used as the title, In Asian languages labels need to be different
$  from the menu label.
$ 
47 赮伢諰咭
$ 
$set 3
$ ****** Module: text.c ****(developer comment only)********
$ 
$ NOTE: there is no Message 1 - 4.
$ 
$ Messages 5-47 are what gets displayed on each of the calculator keys.
$ 
5 怐禨
6 琣禨
7 挹耰
$ 
$ Message 8 - Int is short for integer.
$ 
8 謽禨
$ 
$ Message 9 - Frac is short for fraction.
$ 
9 麵禨
$ 
$ Message 10 - Abs is short for absolute value.
$ 
10 廕髱圊
$ 
$ Message 11 - Exp is short for exponent.
$ 
11 挴禨
12 窵薚圊
13 鬊Б
14 痻ャ
15 ガ葎
16 1/x
17 x^2
18 %
$ 
$ Message 19 - Sqrt is short for square root.
$ 
19 Sqrt
20 (
21 )
$ 
$ Message 22 - Bsp is short for backspace.
$ 
22 Bsp
$ 
$ Message 23 - Clr is short for clear.
$ 
23 Clr
24 D
25 E
26 F
27 +/-
28 A
29 B
30 C
31 X
32 7
33 8
34 9
35 /
36 4
37 5
38 6
39 -
40 1
41 2
42 3
43 +
44 0
45 .
46 =
47 Quit
$ 
$ Messages 48-51 tell the user what mode they are in.
$ 
48 Base
49 Disp
50 Mode
51 Trig
$ 
$ Messages 52-94 are what gets put on the keys when the user presses the 'Keys'
$  key.  These are the keyboard keys which provide the given function. These are
$  also known as keyboard accelerators.  These keys directly correspond to
$  Messages 5-47. (i.e 5 maps to 52, 6 maps to 53, etc.).
$ 
52 F - 怐禨
53 # - 琣禨
54 k - 挹耰
55 I - 謽禨
$ Message 56 is "Control f" 
56 ^f - 麵禨
$ Message 57 is "Control u"
57 ^u 廕髱圊
58 E - 挴禨
59 A - 窵薚圊
60 S - 鬊Б
61 R - 痻ャ
62 X - ガ葎
63 r - 1/x
64 @ - x^2
65 %
66 s - Sqrt
67 (
68 )
$ 
$ Message 69 is "Control h"
$ 
69 ^h - Bsp
$ 
$ Message 70 is "Delete"
$ 
70 del - Clr
71 d
72 e
73 f
74 C - +/-
75 a
76 b
77 c
78 x
79 7
80 8
81 9
82 /
83 4
84 5
85 6
86 -
87 1
88 2
89 3
90 +
91 0
92 .
93 =
94 q - 廎忒
$ Messages 95-98 are keyboard acclerators for Messages 48-51 
95 B
96 D
97 M
98 T
$ 
$ NOTE: Messages 99 - 106 aren't used.
$ 
$ Messages 107-118 are dialog/popup titles.
$ 
107 窵薚圊
108 禨圊椕禨
109 琣禨
110 ガ葎
111 怐禨
113 篲冈
114 䬷ざ麷伀
115 抻ャ
116 ⑶傶
117 鬊Б
118 警侜怐禨倛鳷
$ 
$ Messages 119-128 are the messages describing the Constants listed when the
$ Constant popup is brought up.  NOTE: don't translate <=>
$ 
119 襬咑/麵渀 <=> 蚆婗/麵渀﹞
120 2 柁⼳巖淂﹞
121 e﹞
122 pi﹞
123 襬禳 <=> 蚆ベ﹞
124 芧唄﹞
125 2 ^ 20﹞
126 襬优 <=> 翊⑼﹞
127 霰閛⺀ <=> 蚆戔逑畽痼⻏(BTU)﹞
128 ゥ巖襬禳 <=> ゥ巖蚆ベ﹞
$ 
$ Messages 132-143 are labels in the dialogs.
$ 
132 琣禨蹌磍”
133 怐禨蹌磍”
134 衶磭鞥
135 隞琣禨
136 隞怐禨
137 奡襉穛Б蟟
138 娷棜穛Б蟟(g)
139 衶磭鞥笱迒
140 絩訒”
141 禨圊”
142 耰蘋琣禨(C)
143 耰蘋怐禨(F)
$ 
$ NOTE: Message 144 - 147 aren't used.
$ 
$ Messages 148 is an error message used when the command line is used 
$  improperly.  %s tells the user what argument should come next.
$ 
148 %s\n
$ 
$ Message 149 is an error message.  %s is either the word "Function" or the
$  word "Constant" and %1d is a number 0-9.  This message gets put in a 
$  dialog when the user defines a new Function or Constant that already 
$  exists and the dialog asks the user wheither to overwrite it. (Message 380)
$ 
149 %s %1d 儸槴Бョ
$ 
$ Messages 153-162 are in the accuracy popup menu for the level of accuracy.
$ 
153 0 ⻏窵薚禨А
154 1 ⻏窵薚禨А
155 2 ⻏窵薚禨А
156 3 ⻏窵薚禨А
157 4 ⻏窵薚禨А
158 5 ⻏窵薚禨А
159 6 ⻏窵薚禨А
160 7 ⻏窵薚禨А
161 8 ⻏窵薚禨А
162 9 ⻏窵薚禨А
$ 
$ Messages 163-172 are in the Sto, Rcl, Exch popup menu's listing the registers.
$ 
163 穛Б蟟 0
164 穛Б蟟 1
165 穛Б蟟 2
166 穛Б蟟 3
167 穛Б蟟 4
168 穛Б蟟 5
169 穛Б蟟 6
170 穛Б蟟 7
171 穛Б蟟 8
172 穛Б蟟 9
$ 
$ Messages 188-191 are the numeric base types of operation.
$ 
188 蘑瑱⻏
189 蘇瑱⻏
190 觸瑱⻏
191 觸蠟瑱⻏
$ 
$ Messages 192-194 are the display types.
$ 
192 齡嶂冈
193 枒泂冈
194 秠蟨冈
$ 
$ Messages 195-197 are the trig. types.
$ 
195 唄 
196 侜唄
197 芧唄
$ 
$ Messages 198-201 are the modes of operation of the calculator.
$ 
198 椕ヾ篲冈
199 娷棜篲冈
200 敭藟篲冈
201 秠蟨篲冈
$ 
$ Messages 203-207 are the labels in the Financial Registers dialog.
$ 
203 蛺禨:
204 龰伈跅 %:
205 隃圊:
206 蛺體畇籧:
207 嗈圊:
$ 
$ Messages 208-217 are the button labels of the financial portion of the
$ Calculator when it is in Financial mode.
$ 
208 蛺禨(Term)
209 龰伈跅,%(i%Yr)
$ 
$ Message 210 - Pv stands for Present Value.
$ 
210 隃圊(Pv)
$ 
$ Message 211 - Pmt stands for Payment
$ 
211 蛺體畇籧(Pmt)
$ 
$ Message 212 - Fv stands for Future Value.
$ 
212 嗈圊(Fv)
$ 
$ Message 213 means clear financial registers
$ 
213 覗崽娷棜穛Б蟟
$ 
$ Message 214 means Compounding term
$ 
214 闀伈蛺禨(Ctrm)
$ 
$ Message 215 means double-declining depreciation
$ 
215 灛唲蠹楬帊鰹恄(Ddb)
$ 
$ Message 216 means Straight-line depreciation
$ 
216 枺轃帊鰹恄(Sln)
$ 
$ Message 217 means Sum-of-the-years-digits depreciation
$ 
217 龰禨ポ衶帊鰹恄(Syd)
$ 
$ Messages 218-226 are the button labels of the logical portion of the
$ Calculator when it is in Logical mode.
$ 
$ Message 218 means shift left
$ 
218 <
$ 
$ Message 219 means shift right
$ 
219 >
$ 
$ Message 220 means trunctate to the lower 16 bits.
$ 
220 &16
$ 
$ Message 221 means trunctate to the lower 32 bits.
$ 
221 &32
$ 
$ Message 222 means perform a logical OR
$ 
222 Or
$ 
$ Message 223 means perform a logical AND
$ 
223 And
$ 
$ Message 224 means perform a logical NOT
$ 
224 Not
$ 
$ Message 225 means perform a logical XOR
$ 
225 Xor
$ 
$ Message 226 means perform a logical XNOR
$ 
226 Xnor
$ 
$ Messages 227-238 are the button labels of the Scientific portion of the
$ Calculator when it is in Scientific mode. This is the default mode.
$ 
$ 
$ Message 227 - Hyp is short for Hyperbolic
$ 
227 Hyp
$ 
$ Message 228 - Inv is short for Inverse
$ 
228 Inv
229 e^x
230 10^x
231 y^x
232 x!
233 Cos
234 Sin
235 Tan
236 Ln
237 Log
$ 
$ Message 238 - Rand is short for Random
$ 
238 Rand
$ 
$ Messages 239-248 are the button labels of the financial portion of the
$ Calculator when it is in Financial mode when in "keys" mode. (i.e. button
$ acclerators).
$ 
239 T - 蛺禨(Term)
$ Message 240 is 'Control r'
240 ^r - 龰伈跅,%(i%Yr)
241 p - 隃圊(Pv)
242 P - 蛺體畇籧(Pmt)
243 v - 嗈圊(Fv)
244 L - 覗崽娷棜穛Б蟟
$ Message 245 is 'Control t'
245 ^t - 闀伈蛺禨(Ctrm)
$ Message 246 is 'Control d'
246 ^d - 灛唲蠹楬帊鰹恄(Ddb)
$ Message 247 is 'Control s'
247 ^s - 枺轃帊鰹恄(Sln)
$ Message 248 is 'Control y'
248 ^y - 龰禨ポ衶帊鰹恄(Syd)
$ 
$ Messages 249-257 are the button labels of the logical portion of the
$ Calculator when it is in Logical mode when in "keys" mode. (i.e. button
$ acclerators).
$ 
249 <
250 >
251 [ - &16
252 ] - &32
253 | - Or
254 & - And
255 ~ - Not
256 ^ - Xor
257 n - Xnor
$ 
$ Messages 258-269 are the button labels of the scientific portion of the
$ Calculator when it is in Scientific mode when in "keys" mode. (i.e. button
$ acclerators).
$ 
258 h - Hyp
259 i - Inv
260 { - e^x
261 } - 10^x
262 y - y^x
263 ! - x!
$ Message 264 is 'Control c'
264 ^c - Cos
$ Message 265 is 'Control s'
265 ^s - Sin
$ Message 266 is 'Control t'
266 ^t - Tan
267 N - Ln
268 G - Log
269 ? - Rand
$ 
$ Messages 270-272 are capitalized versions of the calculator MODES.
$ 
270 娷棜篲冈
271 敭藟篲冈
272 秠蟨篲冈
$ 
$ Messages 273-336 are error messages which will go into $HOME/.errorlog. They
$ are all math errors. Localization of these are optional.
$ 
273 *** SIGN NOT 0, +1 OR -1 IN MPADD2 CALL.\n
274 POSSIBLE OVERWRITING PROBLEM ***\n
275 *** N .LE. 1 IN CALL TO MPART1 ***\n
276 *** ABS(X) .GT. 1 IN CALL TO MPASIN ***\n
277 *** ERROR OCCURRED IN MPATAN, RESULT INCORRECT ***
278 *** B = %d ILLEGAL IN CALL TO MPCHK.\n
279 PERHAPS NOT SET BEFORE CALL TO AN MP ROUTINE ***\n
280 *** T = %d ILLEGAL IN CALL TO MPCHK.\n
282 *** M .LE. T IN CALL TO MPCHK.\n 
284 *** B TOO LARGE IN CALL TO MPCHK ***\n
285 *** MXR TOO SMALL OR NOT SET TO DIM(R) BEFORE CALL
286 TO AN MP ROUTINE ***\n
287 *** MXR SHOULD BE AT LEAST %d*T + %d = %d  ***\n 
288 *** ACTUALLY MXR = %d, AND T= %d  ***\n
289 *** FLOATING-POINT OVER/UNDER-FLOW IN MPCMD ***\n
290 *** FLOATING-POINT OVER/UNDER-FLOW IN MPCMR ***\n
291 *** J = 0 IN CALL TO MPCQM ***\n
292 *** ATTEMPTED DIVISION BY ZERO IN CALL TO MPDIV ***\n
293 *** OVERFLOW OCCURRED IN MPDIV ***\n
294 *** ATTEMPTED DIVISION BY ZERO IN CALL TO MPDIVI ***\n
295 *** INTEGER OVERFLOW IN MPDIVI, B TOO LARGE ***\n
296 *** OVERFLOW IN SUBROUTINE MPEXP ***\n
297 *** ERROR OCCURRED IN MPEXP, RESULT INCORRECT ***\n
298 *** ABS(X) NOT LESS THAN 1 IN CALL TO MPEXP1 ***\n
299 *** X NONPOSITIVE IN CALL TO MPLN ***\n
301 *** ERROR IN MPLN, ITERATION NOT CONVERGING ***\n
302 *** ABS(X) .GE. 1/B IN CALL TO MPLNS ***\n
303 *** ERROR OCCURRED IN MPLNS.\n
304 NEWTON ITERATION NOT CONVERGING PROPERLY ***\n
305 *** INTEGER OVERFLOW IN MPMUL, B TOO LARGE ***\n
306 *** ILLEGAL BASE B DIGIT IN CALL TO MPMUL.\n
307 POSSIBLE OVERWRITING PROBLEM ***\n
308 *** OVERFLOW OCCURRED IN MPMUL2 ***\n
309 *** INTEGER OVERFLOW IN MPMUL2, B TOO LARGE ***\n
310 *** ATTEMPTED DIVISION BY ZERO IN MPMULQ ***\n
311 POSSIBLE OVERWRITING PROBLEM ***\n
312 *** OVERFLOW OCCURRED IN MPNZR ***\n
313 *** CALL TO MPOVFL, MP OVERFLOW OCCURRED ***\n
314 *** ERROR OCCURRED IN MPPI, RESULT INCORRECT ***\n
315 *** ATTEMPT TO RAISE ZERO TO NEGATIVE POWER IN\n
316 CALL TO SUBROUTINE MPPWR ***\n
317 *** X NEGATIVE IN CALL TO MPPWR2 ***\n
318 *** X ZERO AND Y NONPOSITIVE IN CALL TO MPPWR2 ***\n
319 *** ATTEMPTED DIVISION BY ZERO IN CALL TO MPREC ***\n
320 *** ERROR OCCURRED IN MPREC, NEWTON ITERATION\n
321 NOT CONVERGING PROPERLY ***\n
322 *** OVERFLOW OCCURRED IN MPREC ***\n
323 *** N = 0 IN CALL TO MPROOT ***\n
324 *** ABS(N) TOO LARGE IN CALL TO MPROOT ***\n
325 *** X = 0 AND N NEGATIVE IN CALL TO MPROOT ***\n
326 *** X NEGATIVE AND N EVEN IN CALL TO MPROOT ***\n
327 *** ERROR OCCURRED IN MPROOT, NEWTON ITERATION\n
328 NOT CONVERGING PROPERLY ***\n
329 *** IDECPL .LE. 0 IN CALL TO MPSET ***\n
330 ITMAX2 TOO SMALL IN CALL TO MPSET ***\n
331 *** INCREASE ITMAX2 AND DIMENSIONS OF MP ARRAYS \n
332 TO AT LEAST %d ***\n
333 *** ERROR OCCURRED IN MPSIN, RESULT INCORRECT ***\n
334 *** ABS(X) .GT. 1 IN CALL TO MPSIN1 ***\n
335 *** X NEGATIVE IN CALL TO SUBROUTINE MPSQRT ***\n
336 *** TAN(X) TOO LARGE IN CALL TO MPTAN ***\n
$ 
$ Messages 337-343 are error messages from the command line options.
$ They also will only show up in the errorlog.
$ 
337 衶磭鞥” -a 錛衭 0-9 欄窵薚圊﹞\n
$ 
$ Message 338 only goes to the errorlog file 
$ 
338 衶磭鞥” 窵薚圊鶈ョ 0-9 欄謓睕蠡\n窵薚唄渿暋珜蠡暋圊” 2﹞\n
339 衶磭鞥” 椕禨鶈珜蘑瑱⻏﹜蘇瑱⻏﹜觸瑱⻏迖觸蠟瑱⻏﹞\n椕禨渿暋珜蠡暋圊”觸瑱⻏﹞\n
$ 
$ Message 340 - %s is the invalid display mode the user supplied.
$   This goes to $HOME/.dt/errorlog only.
$ 
340 衶磭鞥”䬷ざ篲冈 [%s] 攜髱\n
$ 
$ Message 341 - %s is the invalid mode the user supplied.
$   This goes to $HOME/.dt/errorlog only.
$ 
341 衶磭鞥”篲冈 [%s] 攜髱\n篲冈渿暋泂蠡泂圊”秠蟨篲冈\n
$ 
$ Message 342 - %s is the invalid trig. mode the user supplied.
$   This goes to $HOME/.dt/errorlog only.
$ 
342 衶磭鞥”警侜怐禨篲冈 [%s] 攜髱﹞\n
343 衶磭鞥”瞃栠麔淰攜髱﹞\n
$ 
$ NOTE: no Messages 344 through 350
$ 
$ Message 351 is a label in the ASCII convert dialog.
$ 
351 А蠣”
$ 
$ Message 352 is the title of the ASCII convert dialog.
$ 
352 抻痤 ASCII А謑
$ 
$ Messages 353-355 are the Trigonometric types (abbreviations).
$ 
353 唄
354 侜唄
355 芧唄
$ 
$ Messages 356-358 are the usage messages.
$    Don't translate dtcalc, -a, -m, -b, -no_menu_bar -? -notation -trig or
$     -session.
$ 
356 衶磭鞥 (dtcalc) 斿ヾ丐﹞%1d\n\n
357 え恄”dtcalc [-a accuracy] [-m mode] [-b base] [-no_menu_bar] [-?]\n
358 \t [-notation display_notation] [-trig trignometric_type] [-session session_file]\n
$ 
$ Messages 359 and 360 not used
$ 
$ Messages 361 - 363 are button labels
$ 
361 抻祤
362 薚諝
363 凭㶴
364 蠆諟
$ 
$ Message 365 - 369 not used
$ 
$ Messages 370 - 372 get put under the Calculator display when the 
$  corresponding calculator key is pressed, CLR is short for clear, HYP is
$  short for Hyperbolic, and INV is short for Inverse.
$ 
370 CLR
371 HYP
372 INV
373 琣禨圊攜髱﹞
374 琣禨蹌磍攜髱﹞
375 怐禨蹌磍攜髱﹞
$ 
$ Message 376 not used.
$ 
377 琣禨ゝ庍䨣﹞
378 禨圊椆巗蠆諟﹞
379 蝒磭蠣椆巗蠆諟﹞
380 薚泂衭适嬣蓇?
381 ⽁禕ョ 0-9 柁謓睕蠡﹞
$ 
$ Message 382 not used.
$ 
383 琣禨
384 怐禨
385 隓恄鬊Б蠡泂圊﹞\n
$ 
$ NOTE: Messages 386 - 402 are not used.
$ 
403 廎忒(x)
$ 
$ Messages 452-478 are the actual characters that the keyboard accelerators
$  map to.  These are the keyboard keys which provide the given function. 
$  For example: Message 5 is the label of the Functions key, Message 52 is
$  the label of the Functions key when the "keys" button is pressed, and
$  finally Message 452 is the character (i.e. 'F') that the calculator uses
$  to represent the Functions key so if the user had a "function string" which
$  included 'F' the calculator know that the 'F' represents the Function key.
$ 
$ Message 452 - the Functions key.
$ 
452 F
$ 
$ Message 453 - the Constants key.
$ 
453 #
$ 
$ Message 454 - the Keys key.
$ 
454 k
$ 
$ Message 455 - the Int (integer) key.
$ 
455 I
$ 
$ Message 456 - the Frac (fraction) key.
$  \006 is "Control f"
$ 
456 \006
$ 
$ Message 457 - the Abs (absolute value) key.
$  \025 is "Control u"
$ 
457 \025
$ 
$ Message 458 - the Exp (exponent) key.
$ 
458 E
$ 
$ Message 459 - the accuracy key.
$ 
459 A
$ 
$ Message 460 - the Store key (memory register store)
$ 
460 S
$ 
$ Message 461 - the Recall key (memory register recall)
$ 
461 R
$ 
$ Message 462 - the Exchange key (memory register exchange)
$ 
462 X
$ 
$ Message 463 - the 1/x key 
$ 
463 r
$ 
$ Message 464 - the x^2 key 
$ 
464 @
$ 
$ Message 465 - the % key 
$ 
465 %
$ 
$ Message 465 - the square root key 
$ 
466 s
$ 
$ Message 467 - the Bsp (backspace) key.
$  \010 is "Control h"
$ 
467 \010
$ 
$ Message 468 - the clear key.
$ Message 468 is "Delete" (Note: Message 513 is the same)  
$ 
468 \177
$ 
$ Message 469 - hex 'd' key
$ 
469 d
$ 
$ Message 470 - hex 'e' key
$ 
470 e
$ 
$ Message 471 - hex 'f' key
$ 
471 f
$ 
$ Message 472 - Change sign (i.e. +/-) key
$ 
472 C
$ 
$ Message 473 - hex 'a' key
$ 
473 a
$ 
$ Message 474 - hex 'b' key
$ 
474 b
$ 
$ Message 475 - hex 'c' key
$ 
475 c
$ 
$ Message 476 - multiplcation key
$ 
476 x
$ 
$ Message 477 - the quit key
$ 
477 q
$ 
$ NOTE: 478 and 479 are not used.
$ 
$ Messages 480-489 are the actual characters that the keyboard accelerators
$  map to when the calculator is in Financial mode.  These are the keyboard 
$  keys which provide the given function. 
$ 
$ Message 480 - the Term key
$ 
480 T
$ 
$ Message 481 - the i%Yr (interest per year)
$  \022 is 'Control r'
$ 
481 \022
$ 
$ Message 482 - the Pv (present value) key
$ 
482 p
$ 
$ Message 483 - the Pmt (payment) key
$ 
483 P
$ 
$ Message 484 - the Fv (future value) key
$ 
484 v
$ 
$ Message 485 - the clrgs (clear financial registers) key
$ 
485 L
$ 
$ Message 486 - the Ctrm (Compounding term) key
$  \024 is 'Control t'
$ 
486 \024
$ 
$ Message 487 - the Ddb (Double-declining depreciation) key
$  \004 is 'Control d'
$ 
487 \004
$ 
$ Message 488 - the Sln (Straight-line depreciation) key
$  \023 is 'Control s'
$ 
488 \023
$ 
$ Message 489 - the Syd (Sum-of-the-years'-digits depreciation) key
$  \031 is 'Control y'
$ 
489 \031
$ 
$ Messages 490-496 are the actual characters that the keyboard accelerators
$  map to when the calculator is in Logical mode.  These are the keyboard 
$  keys which provide the given function. 
$ 
$ Message 490 - the &16 (truncate to 16 bits) key.
$ 
490 [
$ 
$ Message 491 - the &32 (truncate to 32 bits) key.
$ 
491 ]
$ 
$ Message 492 - the OR key
$ 
492 |
$ 
$ Message 493 - the AND key
$ 
493 &
$ 
$ Message 494 - the NOT key
$ 
494 ~
$ 
$ Message 495 - the XOR key
$ 
495 ^
$ 
$ Message 496 - the XNOR key
$ 
496 n
$ 
$ NOTE 497 - 499 aren't used.
$ 
$ Messages 500-511 are the actual characters that the keyboard accelerators
$  map to when the calculator is in Scientific mode.  These are the keyboard 
$  keys which provide the given function. 
$ 
$ Message 500 - the Hyp (Hyperbolic) key
$ 
500 h
$ 
$ Message 501 - the Inv (Inverse) key
$ 
501 i
$ 
$ Message 502 - the e^x key
$ 
502 {
$ 
$ Message 503 - the 10^x key
$ 
503 }
$ 
$ Message 504 - the y^x key
$ 
504 y
$ 
$ Message 505 - the x! key
$ 
505 !
$ 
$ Message 506 - the Cos (cosine) key
$  \003 is 'Control c'
$ 
506 \003
$ 
$ Message 507 - the Sin (sine) key
$  \023 is 'Control s'
$ 
507 \023
$ 
$ Message 507 - the Tan (tangent) key
$  \024 is 'Control t'
$ 
508 \024
$ 
$ Message 509 - the Ln key
$ 
509 N
$ 
$ Message 510 - the Log key
$ 
510 G
$ 
$ Message 510 - the Rand (random) key
$ 
511 ?
$ 
$ Message 512, 513 are HP's del - Clr when it finds an ITF keyboard.
$ 
512 clr disp
$ 
$ Message 513 is 'Clear Display' on HP boxes
$ 
513 \013
$ 
$ added now capability to Financial regs: change the payment per year
$ The following messages (514 - 517) refect this new button.
$ 
514 體遄畇籧/龰:
515 P/YR 
516 y - P/YR
517 y
$ 
$ Used as the title, In Asian languages the dialog title needs to be different
$  from the menu label.
$ 
518 娷棜穛Б蟟
$ 
$set 4
$ ****** Module: help.c ****(developer comment only)********
$ Message 1 is the title for the calculator help dialogs.
1 衶磭鞥--赮伢諰咭
2 睎⽁禕ョ"衶磭鞥"斕藞謥纂堈禋げ﹞
3 蠆諟
4 薚泂

$set 5
$ ****** Module: functions.c ****(developer comment only)********
$ 
1 蠆諟”衶磭⼇絫
2 蠆諟”隓箾
3 蠆諟”ロ适箾
4 蠆諟”Term<= 0
5 蠆諟”痼瑢蛺圊攜髱
6 蠆諟”禨げ霽騰
7 隓恄髓盻誻欄伈跅﹜\n盻誻欄隃圊﹜\n縋盻誻欄嗈圊\n衶磭 "闀伈蛺禨"﹞\n

$set 99
$ ****** Version Information ********
$ DO NOT TRANSLATE THESE MESSAGES
$ DO NOT CHANGE THESE MESSAGES
$ DO NOT LOCALIZE THESE MESSAGES
$ These messages are used for the version information.
$quote "
1 "@(#)version_goes_here"
2 "\n@(#)_DtMessage catalog source $XConsortium: dtcalc.msg /main/3 1995/11/08 14:05:09 rswiston $"

