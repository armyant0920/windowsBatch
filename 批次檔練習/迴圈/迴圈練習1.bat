@echo off
ECHO %%~dp0 = %~dp0
::ECHO %%cd%%  = %cd%
set path=%~dp0
echo ===============
for /R %path% %%G in (*.txt) do echo "%%G"
echo ===============
for /R "C:\Users\user\OneDrive\文件\GitHub\windowsBatch\批次檔練習\測試創建並移動檔案 - 複製" %%G in (*) do echo %%G
   
pause	
::for %i in (%userprofile%\*) DO @echo %i
::for /D %i in (%userprofile%\*) DO @echo %i
::set path=

