#NoEnv
#NoTrayIcon
#ifwinactive ahk_class Chrome_WidgetWin_1

::yt::youtube.com{enter}
::لخخلمث::google.com{enter}
::غخعفعذث::youtube.com{enter}

#ifwinactive

#c::
keywait Rwin
keywait c

   run, calc.exe
return

^!t:: ; Ctrl + Alt + T
    Run "cmd.exe", "", "RunAs" ; Run Command Prompt as administrator
return

#n::
keywait Rwin
keywait n
   Run Notepad
return

+space::Send {U+200C}

CapsLock::Backspace

#t::
keywait Rwin
keywait t
   FileRecycleEmpty, C:\
   MsgBox, The trash has been taken out.
return

