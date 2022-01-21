$ $XConsortium: dtact.msg /main/3 1995/11/08 14:04:58 rswiston $
$ ******************************************************************************
$ 
$ ***** NOTE FOR MESSAGE CATALOG TRANSLATORS *****
$ 
$ There may be thre types of messages in this file:
$ 
$ 1. Messages that appear in dialogs or are displayed to the user.
$ 
$    These messages are the default, and they should ALL BE LOCALIZED.
$    Note that these messages do NOT have any identification (see the
$    comments for type 2 and 3 below).
$ 
$ 2. Messages that only appear in the DT error log file ($HOME/.dt/errorlog).
$ 
$    The localization of these messages is OPTIONAL.  These message are
$    identified by the following:
$ 
$    MESSAGES xx-yy IN SET ZZ WILL ONLY APPEAR IN THE DT ERRORLOG FILE
$ 
$ 3. Messages that should not be localized.
$ 
$    These messages are identified by the following:
$ 
$    DO NOT TRANSLATE or CHANGE or LOCALIZE MESSAGES xx-yy from set zz
$ 
$ ***** END  (NOTE FOR MESSAGE CATALOG TRANSLATORS) *****
$ 
$ ******************************************************************************


$ ******************************************************************************
$ 
$ The following are the messages for the dtaction client.  Here are 
$ instructions for displaying each dialog:
$ 
$ 1) To display the dialog prompting for a user password, run dtaction
$    with the '-user <name>' option, where <name> is a valid login name
$    on your system.
$ 
$ 2) To display the invalid password dialog, follow the steps in (1), and
$    enter a bogus password; select the 'Ok' button.
$ 
$ 3) To display the unknown user dialog, run dtaction with the
$    '-user <name>' option, but specify a bogus <name>; i.e. one which
$    is not listed in /etc/passwd.
$ 
$ ******************************************************************************

$set 1

$ This is the format string used when logging a change of user to the
$ file /usr/adm/sulog; it is written to the sulog file anytime the '-user'
$ option is used.  The fields are:
$  <appl Name> <month>/<day> <hour>:<min> <success> <tty> <old Name> <new Name>
$ The only fields which need to be customized are the date and time fields.
1 dtaction %1$﹜2d/%2$﹜2d %3$﹜2d”%4$﹜2d %5$1﹜1s %6$s %7$s--%8$s\n

$ This is the label for the Ok button in the dialogs which collect
$ the user's password, the invalid password dialog, and the unknown user
$ error dialog.
2 薚泂

$ This is the label for the error dialog which occurs when the user enters
$ and invalid password into the password dialog.
3 睎耰蘋柁湅謑縋囷え炟柁湅謑攜砨嗃﹞%s.\n\n霘适隞耰蘋湅謑﹜迖藞謥\n"抻祤"耰髓廎忒謦汃﹞

$ This is the title for the password error dialog
4 棬汃鞜え蟟 -- 湅謑蠆諟

$ This is the label displayed in the prompt dialog, used to collect the
$ user's password.
5 霘耰蘋囷え炟湅謑 %s”

$ This is the title for the prompt dialog collecting the user's password.
6 棬汃鞜え蟟 -- 湅謑

$ This is the label for the Cancel button in the dialog which is used to
$ collect the user's password.
7 抻祤

$ This is the message displayed in the 'unknown user' dialog
8 囷え炟 '%s' 珜纂堈攜咭柁囷え炟ボ磝﹞\n\n揧衭忴柁棬汃渿攜鞂揧欹⺼﹞

$ This is the title for the 'unknown user' dialog
9 棬汃鞜え蟟 -- 攜咭柁囷え炟

$ This is for when the user has failed to supply an action name
10 ゝ挴泂棬汃ボ磝﹞\n
$ This is for when we are unable to open the display
11 隓恄瞅絒䬷ざ蟟﹞


