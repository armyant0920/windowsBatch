@ECHO off
chcp 65001
:Start
CLS
ECHO ��ܭn���檺����...
ECHO 1 - �w�˥����M�Lñ�WServiSign�w������
ECHO 2 - �����l��(�ݭ��s�}��)
ECHO 3 - �w�˰l��R221��(UniCode)reboot
ECHO 4 - ����pdfxchange 6.0
ECHO 5 - �w��pdfxchange 9.0
ECHO 6 - �w�˼f�P�p�u��
ECHO 7 - CMEXIME 10minute reboot
ECHO 8 - �w�˥��DjudPrintQ
ECHO a - �w�˪k�x�����
ECHO b - install COURT3
ECHO c - �T�N�Ʀ�����x�W�{���w��
ECHO d - �T�N�D�^��ѹq�l�ɮױ��y�޲z�t�ε{���w��
ECHO e - �T�N�Ʀ�����N���{���w��
ECHO 9 - Exit

SET /P OPT=Please make a selection, and press enter:

if %OPT%==1 GOTO OPTION1
if %OPT%==2 GOTO OPTION2
if %OPT%==3 GOTO OPTION3
if %OPT%==4 GOTO OPTION4
if %OPT%==5 GOTO OPTION5
if %OPT%==6 GOTO OPTION6
if %OPT%==7 GOTO OPTION7
if %OPT%==8 GOTO OPTION8
if %OPT%==a GOTO OPTIONA
if %OPT%==b GOTO OPTIONB
if %OPT%==c GOTO OPTIONC
if %OPT%==d GOTO OPTIOND
if %OPT%==e GOTO OPTIONE
if %OPT%==9 GOTO EXIT

GOTO Start

:OPTION1
echo start install !!!
start /wait \\172.17.32.221\update\install\JudicialCAPIServiSign_1.0.19.1112.exe /S
echo exit install !!!
pause
GOTO Start

:OPTION2
echo start install !!!
start /wait RunDll32 C:\PROGRA~2\COMMON~1\INSTAL~1\PROFES~1\RunTime\10\50\Intel32\Ctor.dll,LaunchSetup "C:\Program Files (x86)\InstallShield Installation Information\{71045A08-EFAB-4BF2-9205-1C829F8D8826}\setup.exe" -l0x404  -removeonly
echo �еy�᭫�s�}���� !!!
SHUTDOWN /r /t 10
echo exit install !!!
pause
GOTO Start

:OPTION3
echo start install !!!
start /wait \\172.17.32.221\update\install\Chasew_TSF_Zone_8_x64_x86_ExcludeDotNet_r211_Product.exe
echo �еy�᭫�s�}���� !!!
SHUTDOWN /r /t 10
echo exit install !!!
pause
GOTO Start

:OPTION4
echo start install !!!
start /wait \\172.17.32.221\update\install\PDF-XChange_Editor_6.0.321.0.exe /uninstall /quiet
echo exit install !!!
pause
GOTO Start

:OPTION5
echo start install !!!
start /wait \\172.17.32.221\update\install\PDFXPRO9.exe /quiet USERNAME="TCD" USERMAIL="tcdfax@judicial.gov.tw" KEYDATA="HW92-PWRL-SEDB-3USN"
echo exit install !!!
pause
GOTO Start

:OPTION6
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
if not exist c:\tcdtools\reg md c:\tcdtools\reg
start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download 1_�f�P�p�u��w�˵{��_V10909.exe /R:3 /MT:100
start /wait c:\tcdtools\download\1_�f�P�p�u��w�˵{��_V10909.exe
xcopy \\172.17.32.221\update\reg\juddeamon32.reg C:\tcdtools\reg\. /R /y  /e /C 
copy C:\jud3\bin\�T�N�f�P�t��.lnk %userprofile%\desktop\ /y
regedit /s C:\tcdtools\reg\juddeamon32.reg
xcopy \\172.17.32.221\update\reg\juddeamon.reg C:\tcdtools\reg\. /R /y  /e /C 
regedit /s C:\tcdtools\reg\juddeamon.reg
xcopy \\172.17.32.221\update\reg\chromeTCD.reg C:\tcdtools\reg\. /R /y  /e /C 
regedit /s C:\tcdtools\reg\chromeTCD.reg
rem �ƻs myphrase.dat�� ws2\resources\app\user �ؿ��U
copy c:\winstar\myphrase.dat c:\jud3\ws2\resources\app\user /y
rem �_��blphrase.dat �� myphrase.dat ��s he11 �ؿ��U �A myphrase.dat �� WS2�U
copy c:\winstar\blphrase.dat c:\jud3\he11 /y
copy c:\winstar\myphrase.dat c:\jud3\he11 /y
regsvr32 c:\jud3\bin\jud_word_add_in64.dll /s
echo exit install !!!
pause
GOTO Start

:OPTION7
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
if not exist c:\tcdtools\reg md c:\tcdtools\reg
xcopy \\172.17.32.221\update\download\�����|�y�r_��J�k_setup_1090828.exe C:\tcdtools\download\. /R /y  /e /C
start /wait c:\tcdtools\download\�����|�y�r_��J�k_setup_1090828.exe
echo exit install !!!
pause
GOTO Start

:OPTION8
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
if not exist c:\tcdtools\reg md c:\tcdtools\reg
xcopy \\172.17.32.221\update\download\judPrintQ-1.2.0.exe C:\tcdtools\download\. /R /y  /e /C
start /wait c:\tcdtools\download\judPrintQ-1.2.0.exe
xcopy \\172.17.32.221\update\reg\judprintQ.reg C:\tcdtools\reg\. /R /y  /e /C 
regedit /s C:\tcdtools\reg\judprintQ.reg
xcopy \\172.17.32.221\update\reg\disableQP.reg C:\tcdtools\reg\. /R /y  /e /C 
regedit /s C:\tcdtools\reg\disableQP.reg
echo exit install !!!
pause
GOTO Start

:OPTIONA
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download judge3.exe /R:3 /MT:100
start /wait C:\tcdtools\download\judge3.exe
copy C:\judge3\3�N�k�x�����(�a�Ϊ�).lnk %userprofile%\desktop\ /y
copy C:\judge3\bin\�G�N�q�k��ѽs�边.lnk %userprofile%\desktop\ /y
echo exit install !!!
pause
GOTO Start

:OPTIONB
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\8_�����w�� C:\tcdtools\download 8_�x�W�����w��_V10812��.exe /R:3 /MT:100
start /wait C:\tcdtools\download\8_�x�W�����w��_V10812��.exe
echo exit install !!!
pause
GOTO Start

:OPTIONC
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\9_�T�N�Ʀ�����x�W�{���w�� C:\tcdtools\download 9_�T�N�Ʀ�����x�W�{���w��.exe /R:3 /MT:100
start /wait C:\tcdtools\download\9_�T�N�Ʀ�����x�W�{���w��.exe
echo exit install !!!
pause
GOTO Start

:OPTIOND
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\11_�T�N�D�^��ѹq�l�ɮױ��y�޲z�t�ε{�� C:\tcdtools\download �T�N�D�^��ѹq�l�ɮױ��y�޲z�t�ε{���w��.exe /R:3 /MT:100
start /wait C:\tcdtools\download\�T�N�D�^��ѹq�l�ɮױ��y�޲z�t�ε{���w��.exe
echo exit install !!!
pause
GOTO Start

:OPTIONE
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\10_�T�N�Ʀ�����N���{�� C:\tcdtools\download �T�N�Ʀ�����N���{���w��.exe /R:3 /MT:100
start /wait C:\tcdtools\download\�T�N�Ʀ�����N���{���w��.exe
echo exit install !!!
pause
GOTO Start


:EXIT
pause