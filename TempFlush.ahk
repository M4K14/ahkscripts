#NoEnv
#NoTrayIcon

Loop 
{
FileDelete, %temp%\*.*
Loop, %temp%\*.*, 2
    FileRemoveDir, %A_LoopFileLongPath%
sleep, 900000
}