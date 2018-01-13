#NoTrayIcon
#NoEnv
!c::
KeyWait !
SetFormat, Integer, H
Kel= % DllCall("GetKeyboardLayout", Int,DllCall("GetWindowThreadProcessId", int,WinActive("A"), Int,0))

if % kel != 0x4090409
{SetFormat, Integer, D
    sendinput {alt down}{shift down}{shift up}{alt up}
    lclip:=Clipboard
    Send {Ctrl down}x{Ctrl up}
    Clipboard:=SwapLang(Clipboard,1)
    Send {Ctrl down}v{Ctrl up}
    Clipboard=%lclip%
}
Else
{SetFormat, Integer, D
    lclip:=Clipboard
    Send {Ctrl down}x{Ctrl up}
    Clipboard:=SwapLang(Clipboard,2)
    Send {Ctrl down}v{Ctrl up}
    sendinput {alt down}{shift down}{shift up}{alt up}
    Clipboard=%lclip%
}



SwapLang(text,target)
	{
	 lang1=abcdefghijklmnopqrstuvwxyz,;'\?.] [` ; english
         lang2=شذزیثبلاهتنمئدخحضقسفعرصطغظوکگپ؟.چ جپ ; other language
   if (target = 1)
   	Source = 2
   else
   	Source = 1
   	
   Loop, parse, text
   	{
         IfInString, lang%source%, %A_Loopfield% 
	 {
         Get:=InStr(Lang%source%,A_Loopfield)
         SwappedText .= SubStr(lang%target%,get,1)
         }
	 else
	 {
	 SwappedText .= A_Loopfield
	 }
   	}
   Return SwappedText	
	}