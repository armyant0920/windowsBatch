@echo off&color 0a&title music player
mode con cols=40 lines=20
echo       ************************
echo            music player  
echo       ************************

pause
echo    1¡Cplay   2¡Cstop
set /p smilediao=enter code:
if "%smilediao%"=="1" (goto hello) else (wmic process where name='wscript.exe' call terminate>nul&echo goodbye&ping -n 2 127.1>nul&del /f /q x.vbs&exit)
:hello
echo  loading music......
echo set diao=createobject("wmplayer.ocx")>x.vbs
for /r . %%a in (*.mp3 *.wma) do (
echo diao.url="%%a">>x.vbs
echo wscript.sleep 1200>>x.vbs
echo wscript.sleep diao.currentMedia.duration *1000>>x.vbs
echo wscript.sleep 1000>>x.vbs
)
start x.vbs[/code]