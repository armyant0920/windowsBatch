@echo off
echo > c:\tcdtools\begin.ok
if not exist c:\tcdtools md c:\tcdtools
if not exist c:\tcdtools\download md c:\tcdtools\download
if not exist c:\tcdtools\ok md c:\tcdtools\ok
if not exist c:\tcdtools\reg md c:\tcdtools\reg
REM
REM  �g�Jc:\tcdtools\begin.ok��������}�l 
REM
cd c:\tcdtools
REM %_ver% ��������Φ��� ex:1100410A
REM %_IPAddress% ��������Φ���+IP��} ex:1100410A 172_17_39_122
rem pause
FOR /F "delims=: tokens=2" %%a in ('ipconfig ^| find "IPv4"') do set _IPAddress=%%a
set _IPaddr=%_IPAddress:~1%.A
echo %_IPaddr%
set _IPaddr3=%_IPAddress:~1,10%
echo %_IPaddr3%
set "_IPAddress=%_IPAddress:.=_%"
rem pause
REM
REM ���|TightVNC�K�XRESET�q���}�l
REM
if exist "C:\tcdtools\ok\TightVNC.ok" goto BINdispath
xcopy \\172.17.32.221\update\reg\TightVNC.reg C:\tcdtools\reg\. /R /y  /e /C 
regedit /s C:\tcdtools\reg\TightVNC.reg
set _ver=TightVNC
echo > c:\tcdtools\ok\%_ver%.ok
echo > \\172.17.32.124\update_result\TightVNC\%_ver%_%_IPAddress:~1%.ok
REM
REM ���|TightVNC�K�XRESET�q������
REM
rem pause
:BINdispath
rem pause
REM
REM �]�wbin.ini��dispatch.ini��sub_dispatch.ini��COPY
REM
if exist "C:\tcdtools\ok\bin0615.ok" goto BEGIN
if not exist "C:\tcdtools\ok\jud3.ok" goto BEGIN
xcopy \\172.17.32.221\update\reg\bin.ini C:\jud3\bin\. /R /y  /e /C 
xcopy \\172.17.32.221\update\reg\DISPATCH.ini C:\jud3\bin\. /R /y  /e /C 
xcopy \\172.17.32.221\update\reg\sub_dispatch.ini C:\jud3\bin\. /R /y  /e /C 
set _ver=bin0615
echo > c:\tcdtools\ok\%_ver%.ok
REM
REM �]�wbin.ini��dispatch.ini��sub_dispatch.ini��COPY end
REM
rem pause
goto PDFXPRO9
:BEGIN
rem pause

REM
REM 1100521 17:00�~�}��R���G�N�s��
REM
REM if exist "C:\tcdtools\ok\DELETELNK.ok" goto PDFXPRO9
REM del %userprofile%\desktop\�f�P��@�n��.lnk /q
REM del %userprofile%\desktop\�k�x�����(�a�Ϊ�) /q
REM del %userprofile%\desktop\�G�N�x�W����.lnk /q
REM del %userprofile%\desktop\���u������.lnk /q
REM del %userprofile%\desktop\��������.bat /q
REM del %userprofile%\desktop\�f�P�d������.bat /q
REM del %userprofile%\desktop\�k�x�Ʀ�����t��.lnk /q
REM set _ver=DELETELNK
REM echo > c:\tcdtools\ok\%_ver%.ok
REM echo > \\172.17.32.124\update_result\DELETELNK\%_ver%_%_IPAddress:~1%.ok
rem
rem ����pdf xchange 6.0�w��pdf xchange pro 9.0
rem
:PDFXPRO9
set _ver=PDFXPRO9
set BuildDate=null
if exist c:\tcdtools\ok\%_ver%.ok goto chasew
rem for /f "tokens=2*" %%a in ('REG QUERY "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{c9f1f55e-3a9e-4d5a-963c-5443b66c53b4}" /v DisplayVersion') do set "BuildDate=%%~b"
if exist "C:\ProgramData\Package Cache\{1410a742-27e9-4525-8194-3b8abdc99fda}\PDFXPRO9.exe" goto chasew
rem pause
rem if %BuildDate% equ 9.0.350.0 goto chasew
rem findstr %_IPaddr3% \\172.17.32.221\update\TXT\TCDALL.txt
rem if %errorlevel% equ 1 goto chasew
rem pause
rem
rem 46�B47���q�N�w���ɮץ��U����c:\tcdtools\download
if %_IPaddr3% equ 172.17.46. ( 
   start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download PDFXPRO9.exe /R:3 /MT:100
   start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download PDF-XChange_Editor_6.0.321.0.exe /R:3 /MT:100
rem   xcopy \\172.17.32.221\update\download\*.* C:\tcdtools\download\*.* /R /y  /e /C
   goto PDFXPRO9_outside
)
if %_IPaddr3% equ 172.17.47. ( 
   start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download PDFXPRO9.exe /R:3 /MT:100
   start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download PDF-XChange_Editor_6.0.321.0.exe /R:3 /MT:100
rem   xcopy \\172.17.32.221\update\download\*.* C:\tcdtools\download\*.* /R /y  /e /C 
   goto PDFXPRO9_outside
)
rem
start /wait \\172.17.32.221\update\install\PDF-XChange_Editor_6.0.321.0.exe /uninstall /quiet
start /wait \\172.17.32.221\update\install\PDFXPRO9.exe /quiet USERNAME="TCD" USERMAIL="tcdfax@judicial.gov.tw" KEYDATA="HW92-PWRL-SEDB-3USN"
echo > c:\tcdtools\ok\%_ver%.ok
echo > \\172.17.32.124\update_result\PDFXPRO9\%_ver%_%_IPAddress:~1%.ok
rem pause
goto chasew
:PDFXPRO9_outside
start /wait C:\tcdtools\download\PDF-XChange_Editor_6.0.321.0.exe /uninstall /quiet
start /wait C:\tcdtools\download\PDFXPRO9.exe /quiet USERNAME="TCD" USERMAIL="tcdfax@judicial.gov.tw" KEYDATA="HW92-PWRL-SEDB-3USN"
echo > c:\tcdtools\ok\%_ver%.ok
echo > \\172.17.32.124\update_result\PDFXPRO9\%_ver%_%_IPAddress:~1%.ok
rem pause
goto chasew

REM
REM �l���ˬd����
REM
:chasew
echo REM �l���ˬd����
rem pause
set BuildDate=null
if exist c:\tcdtools\ok\chasewremove.ok goto chasew4_211A
for /f "tokens=2*" %%a in ('REG QUERY "HKLM\SOFTWARE\WOW6432Node\IQ Technology\Chasew4" /v BuildDate') do set "BuildDate=%%~b"
set _ver=%BuildDate:~8,3%
set  BuildDate=%BuildDate:~0,1%
echo %BuildDate%
echo %_ver%
rem pause
if %BuildDate% equ V (
   echo > c:\tcdtools\ok\chasew0619.ok
   echo > \\172.17.32.124\update_result\chasew4\%_ver%_%_IPAddress:~1%.ok
   rem pause
   if %_ver% equ 211 goto CMEXIME
   goto chasew4_211
)
if %BuildDate% equ I (
   echo > c:\tcdtools\ok\chasew0619.ok
   echo > \\172.17.32.124\update_result\chasew4\%_ver%_%_IPAddress:~1%.ok
   goto chasew4_211
)
rem pause
echo > c:\tcdtools\ok\chasew0619.ok
goto CMEXIME

REM
REM ���q5/21�~�}��A�������°l���A���}����A�A�w��211���l���C
REM
:chasew4_211
if exist c:\tcdtools\ok\chasew211.ok goto CMEXIME
if exist c:\tcdtools\ok\chasewremove.ok goto chasew4_211A
findstr %_IPaddr% \\172.17.32.221\update\TXT\TCDchasew4.txt
if %errorlevel% equ 1 goto CMEXIME
echo %_IPaddr%_remove_chasew4
rem pause
start /wait RunDll32 C:\PROGRA~2\COMMON~1\INSTAL~1\PROFES~1\RunTime\10\50\Intel32\Ctor.dll,LaunchSetup "C:\Program Files (x86)\InstallShield Installation Information\{71045A08-EFAB-4BF2-9205-1C829F8D8826}\setup.exe" -l0x404  -removeonly
rem ping 127.0.0.1 -n 60 -w 1000
echo > c:\tcdtools\ok\chasewremove.ok
echo �еy�᭫�s�}���� !!!
SHUTDOWN /r /t 60
rem pause
exit
:chasew4_211A
if exist c:\tcdtools\ok\chasew211.ok goto CMEXIME
findstr %_IPaddr% \\172.17.32.221\update\TXT\TCDchasew4.txt
if %errorlevel% equ 1 goto CMEXIME
echo %_IPaddr%_install_chasew4
rem pause
start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download Chasew_TSF_Zone_8_x64_x86_ExcludeDotNet_r211_Product.exe /R:3 /MT:100
start /wait C:\tcdtools\download\Chasew_TSF_Zone_8_x64_x86_ExcludeDotNet_r211_Product.exe
echo > c:\tcdtools\ok\chasew211.ok
REM
REM ���q�����C
REM
REM
REM �w�ˤ����|�y�r
REM
:CMEXIME
rem pause
findstr %_IPaddr% \\172.17.32.221\update\TXT\TCDCMEXIME.txt
rem pause
if %errorlevel% equ 1 goto END
REM�@1100521 1730�A�����A��u���kĵ�Ǥ��ˡA��l�����ˤ����|
REM  findstr %_IPaddr% \\172.17.32.221\update\TXT\TCDNOCMEXIME.txt
REM  if %errorlevel% equ 0 goto END
rem pause
echo %_IPaddr%JUD_CMEXIME_SETUP
if exist c:\tcdtools\ok\CMEXIME.ok goto END
if exist c:\CMEXIME goto END
rem pause
set _ver=CMEXIME
start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download �����|�y�r_��J�k_setup_1090828.exe /R:3 /MT:100
start /wait c:\tcdtools\download\�����|�y�r_��J�k_setup_1090828.exe
echo > c:\tcdtools\ok\CMEXIME.ok
echo > \\172.17.32.124\update_result\CMEXIME\%_ver%_%_IPAddress:~1%.ok
rem ping 127.0.0.1 -n 10 -w 1000 > nul
rem pause
goto END

:END
rem pause
rem
rem  �g�Jc:\tcdtools\end.ok�������浲�� 
echo > c:\tcdtools\end.ok
rem pause