; special signs # ! ^ + Win Alt Control Shift
#SingleInstance Force

+/::
Input, headline, , {enter} ; , , means no options. is required elsewise input won`t work
StringUpper headline, headline
SetKeyDelay, -1 ; no animation for the text insertion
length := 90 - StrLen(headline)
space := " "
left := (length/2)
left := Format("{:i}", left)
right := Round(length/2)
Send, /* ======================================================================================== */`n
Send, /*

Loop %left% {
  Send, %space%
}

Send, %headline%

Loop %right% {
  Send, %space%
}

Send, */`n
Send, /* ======================================================================================== */
Send, %right%
Send, %left%
Send, %length%
return


^+e::
ExitApp
return
