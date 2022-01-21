$ *************************************<+>*************************************
$ *****************************************************************************
$ **
$ **  File:        DtWidget.vmsg
$ **
$ **  Project:     DT
$ **
$ **  Description:
$ **  -----------
$ **  This file is the source for the message catalog for the Dt widget
$ **  library.
$ **
$ **
$ *****************************************************************************
$ **
$ **  (c) Copyright 1993, 1994 Hewlett-Packard Company
$ **  (c) Copyright 1993, 1994 International Business Machines Corp.
$ **  (c) Copyright 1993, 1994 Sun Microsystems, Inc.
$ **  (c) Copyright 1993, 1994 Novell, Inc.
$ **
$ *****************************************************************************
$ **
$ **
$ **  $XConsortium: DtWidget.msg /main/4 1996/06/19 11:45:23 cde-dec $
$ *****************************************************************************
$ *****************************************************************************

$ *****************************************************************************
$ 
$ ***** NOTE FOR MESSAGE CATALOG TRANSLATORS *****
$ 
$ There MAY be three types of messages in this file:
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


$set 2
$ *************************************************************
$ ** 							     ** 
$ ** Common messages shared by all DT widgets                **
$ ** 							     ** 
$ *************************************************************
$ Default value for DtNdialogCloseButtonLabel resource.
$ This string is used for all "Close" buttons in all dialogs.
1 驨椲

$ Default value for DtNdialogHelpButtonLabel resource.
$ This string is used for all "Help" buttons in all dialogs.
2 赮伢諰咭

$set 3
$ *************************************************************
$ ** 							     ** 
$ **  This set of messages is used by the DtEditor widget.  **
$ ** 							     ** 
$ *************************************************************

$ **********************************************
$ **                         module: Editor.c **
$ **  Messages for the Format/Settings dialog **
$ **********************************************

$ Default value for DtNformatSettingsDialogTitle resource,
$ title of format settings dialog
1 眭冈暋泂

$ Default values for DtNlMarginFieldLabel and DtNrMarginFieldLabel resources,
$ labels for margin fields in Format Settings dialog
2 ⑶饡盉”
3 ⼢饡盉”

$ Default values for DtNlAlignToggleLabel, DtNrAlignToggleLabel,
$ DtNjustifyToggleLabel, and DtNcenterToggleLabel resources,
$ labels for justification radio buttons in Format Settings dialog
4 氋⼢髱錔
5 氋⑶髱錔
6 汒ツ髱錔
7 祂斕

$ Default values for DtNformatParagraphButtonLabel and 
$ DtNformatAllButtonLabel resources,
$ labels for paragraph and all buttons in Format Settings dialog
8 栠瘥
9 ツ楶

$ ******************************************************************
$ **                                              module Editor.c **
$ ** Strings used in the spell checking and find/change dialogs.  **
$ ******************************************************************

$ Default value for DtNspellDialogTitle resource,
$ title of the Spell dialog
20 捋А

$ Default value for DtNfindDialogTitle resource,
$ title of the Find/Change dialog
21 硻岊/彶庍

$ Default value for DtNmisspelledListLabel resource,
$ label for list of unrecognized and misspelled words
22 捋А蠆諟”

$ Default value for DtNfindFieldLabel resource,
$ label of field in which user types string for which to search.
23 硻岊”

$ Default value for DtNchangeFieldLabel resource,
$ label of field in which user types the replacement string
24 彶庍珜”

$ Default values for DtNfindButtonLabel, DtNchangeButtonLabel, and
$ DtNchangeAllButtonLabel resources,
$ labels for find, change, and change all buttons in Find/Change dialog
25 硻岊
26 彶庍
27 ツ楶彶庍

$ ******************************************************************
$ ** 					      module: SearchDlg.  **
$ ** Message displayed when Find/Replace/Spell fails to find the  **
$ ** specified string or word.                                    **
$ ******************************************************************
$ Used to display "Unable to find the string FOO in the current document."
$ Note: Do not localize the characters %s.
30 ョ隃⺼齪ス斕岊攜怉А⻌ %s﹞

$ Title for general information dialog (e.g. "Find/Change dialog can't 
$ find word in document.").
31 罶媢

$ ***********************************************************
$ **                                       module Editor.c **
$ ** Messages and strings associated with the status line. **
$ ***********************************************************

$ Default value for DtNcurrentLineLabel resource,
$ label for the display showing the current insert cursor line 
40 ⺼磍”

$ Default value for DtNtotalLineCountLabel resource,
$ label for the display showing the total number of lines in the document
41 鐠⺼禨”

$ Default value for DtNoverstrikeLabel resource,
$ label used to indicate Editor is in overstrike (overtype) mode. 
42 鷋嬣

$ Default value for DtNinsertLabel resource,
$ label used to indicate Editor is in insert mode. 
$ The default value is a blank string.
$quote "
43 ""
$quote

$ ******************************************************************
$ **                                          module: SearchCalls **
$ ** Message displayed when Find/Replace/Spell fails to execute   **
$ ** the spell filter.                                            **
$ ******************************************************************
$ Error message if there is a problem running the spell filter
$ Message 34 and 35 are part of the same message for the error
$ dialog.
$ do not translate %s
$ "NEW-"
50 Error executing spell filter.
$ "NEW-"
51 Check to see if filter, %s, is installed and in the path.

$ Title for Error dialog
$ "NEW-"
52 Editor Error


$set 4
$ *************************************************************
$ ** 							     ** 
$ ** MenuButton messages 				     **
$ ** 							     ** 
$ *************************************************************
$ Warning messsage
$ Note: do not localize the chars XmNmenuPost
1 XmNmenuPost 柁圊攜ポ恄﹞

$ Error messsages
$ Note: do not localize the chars DtMenuButtonWidget in messages 2 and 3
2 DtMenuButtonWidget”隓淩柁譫嬬衢逑玿﹞
3 DtMenuButtonWidget”隓淩柁衢逑玿﹞

$set 5
$ *************************************************************
$ ** 							     ** 
$ ** ComboBox  	messages 				     **
$ ** 							     ** 
$ *************************************************************
$ Warning messsages
$ Note: do not localize the chars DtComboBoxWidget in messages 1 - 11
$ Note: do not localize the chars alignment and DtALIGNMENT_CENTER
1 DtComboBoxWidget”隓淩柁 alignment 罶鳲 (蠡泂圊珜 DtALIGNMENT_CENTER)﹞
$ Note: do not localize the chars marginHeight 
2 DtComboBoxWidget”隓淩柁 marginHeight 罶鳲 (蠡泂圊珜 2)﹞
$ Note: do not localize the chars marginWidth
3 DtComboBoxWidget”隓淩柁 marginWidth 罶鳲 (蠡泂圊珜 2)﹞
$ Note: do not localize the chars horizontalSpacing
4 DtComboBoxWidget”隓淩柁 horizontalSpacing 罶鳲 (蠡泂圊珜 0)﹞
$ Note: do not localize the chars verticalSpacing
5 DtComboBoxWidget”隓淩柁 verticalSpacing 罶鳲 (蠡泂圊珜 0)﹞
$ Note: do not localize the chars orientation and DtRIGHT
6 DtComboBoxWidget”隓淩柁 orientation 罶鳲 (蠡泂圊珜 DtRIGHT)﹞
$ Note: do not localize the chars itemCount
7 DtComboBoxWidget”隓淩柁 itemCount 罶鳲 (蠡泂圊珜 0)﹞
$ Note: do not localize the chars selectedPosition
8 DtComboBoxWidget”隓淩柁 selectedPosition 罶鳲 (蠡泂圊珜 to 0)﹞
$ Note: do not localize the chars textField
9 DtComboBoxWidget”隓恄暋泂 textField  罶鳲﹞
$ Note: do not localize the chars DtComboBoxSetItem
10 DtComboBoxWidget”隓恄岊怉禋げ坭暋泂 (DtComboBoxSetItem)﹞
$ Note: do not localize the chars DtComboBoxSelectItem
11 DtComboBoxWidget”隓恄岊怉禋げ坭藞抻 (DtComboBoxSelectItem)﹞
12 彶庍騰麵⼇絫﹞⑴逑旂瑊畈柁禋げ熅蝝⑴え嬥唄邴襓茬﹞

$ Label value
13 篞ポ巖涺

$ Error message
$ Note: do not localize the chars String and XmRType
14 cvtStringToType”棤禨蠆諟﹜String 怉 XmRType 柁鼲葎攜錛衭籧⼃柁棤禨

$ Warning message
15 DtComboBoxDeletePos”棤禨蠆諟﹜隓淩柁⻏殦圊

$set 6
$ *************************************************************
$ ** 							     ** 
$ ** SpinBox   	messages 				     **
$ ** 							     ** 
$ *************************************************************
$ Warning messsages
$ Note: do not localize the chars DtSpinBoxWidget in messages 1 - 14
$ Note: do not localize the chars arrowSensitivity and DtARROWS_SENSITIVE
1 DtSpinBoxWidget”隓淩柁 arrowSensitivity 罶鳲 (蠡泂圊珜 DtARROWS_SENSITIVE)﹞
$ Note: do not localize the chars alignment and DtALIGNMENT_CENTER
2 DtSpinBoxWidget”隓淩柁 alignment 罶鳲 (蠡泂圊珜 DtALIGNMENT_CENTER)﹞
$ Note: do not localize the chars intialDelay 
3 DtSpinBoxWidget”隓淩柁 initialDelay 罶鳲 (蠡泂圊珜 250)﹞
$ Note: do not localize the chars marginHeight
4 DtSpinBoxWidget”隓淩柁 marginHeight 罶鳲 (蠡泂圊珜 2)﹞
$ Note: do not localize the chars marginWidth
5 DtSpinBoxWidget”隓淩柁 marginWidth 罶鳲 (蠡泂圊珜 2)﹞
$ Note: do not localize the chars arrowLayout and DtARROWS_BEGINNING
6 DtSpinBoxWidget”隓淩柁 arrowLayout 罶鳲 (蠡泂圊珜 DtARROWS_BEGINNING)﹞
$ Note: do not localize the chars repeatDelay
7 DtSpinBoxWidget”隓淩柁 repeatDelay 罶鳲 (蠡泂圊珜 200)﹞
$ Note: do not localize the chars itemCount
8 DtSpinBoxWidget”隓淩柁 itemCount 罶鳲 (蠡泂圊珜 0)﹞
$ Note: do not localize the chars position in messages 9 and 10
9 DtSpinBoxWidget”隓淩柁 position 罶鳲 (蠡泂圊珜 0)﹞
10 DtSpinBoxWidget”隓淩柁 position 罶鳲 (蠡泂圊珜 minimum)﹞
$ Note: do not localize the chars decimalPoints
11 DtSpinBoxWidget”隓淩柁 decimalPoints 罶鳲 (蠡泂圊珜 0)﹞
$ Note: do not localize the chars minimum
12 DtSpinBoxWidget”隓淩柁 minimum 罶鳲 (蠡泂圊珜 maximum)﹞
$ Note: do not localize the chars textField
13 DtSpinBoxWidget”隓恄暋泂 textField 罶鳲﹞
$ Note: do not localize the chars DtSpinBoxSetItem
14 DtSpinBoxWidget”隓恄岊怉禋げ坭暋泂 (DtSpinBoxSetItem)﹞

$ Label value
15 藞禋巖涺
