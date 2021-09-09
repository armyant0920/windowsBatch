@echo off
echo 產生目錄檔中
dir *.mp3 /b>playlist.m3u
echo 目錄產生完成 
echo 輸入0撥放,輸入其他離開
set /p choice=要直接撥放嗎^?:
if "%choice%"=="0" (goto play) else exit

:play
start %~dp0playlist.m3u

