@echo off
ECHO %%~dp0 = %~dp0
::ECHO %%cd%%  = %cd%
set path=%~dp0

for /R %path% %%G in (*) do echo "%%G"

    
pause	
::for %i in (%userprofile%\*) DO @echo %i
::for /D %i in (%userprofile%\*) DO @echo %i
::set path=

