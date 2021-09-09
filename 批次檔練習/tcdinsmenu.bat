@ECHO off
chcp 65001
:Start
CLS
ECHO 選擇要執行的項目...
ECHO 1 - 安裝正本套印簽名ServiSign安控元件
ECHO 2 - 移除追音(需重新開機)
ECHO 3 - 安裝追音R221版(UniCode)reboot
ECHO 4 - 移除pdfxchange 6.0
ECHO 5 - 安裝pdfxchange 9.0
ECHO 6 - 安裝審判小工具
ECHO 7 - CMEXIME 10minute reboot
ECHO 8 - 安裝民刑judPrintQ
ECHO a - 安裝法官單機版
ECHO b - install COURT3
ECHO c - 三代數位錄音庭上程式安裝
ECHO d - 三代訴訟文書電子檔案掃描管理系統程式安裝
ECHO e - 三代數位錄音燒錄程式安裝
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
echo 請稍後重新開機中 !!!
SHUTDOWN /r /t 10
echo exit install !!!
pause
GOTO Start

:OPTION3
echo start install !!!
start /wait \\172.17.32.221\update\install\Chasew_TSF_Zone_8_x64_x86_ExcludeDotNet_r211_Product.exe
echo 請稍後重新開機中 !!!
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
start /wait robocopy \\172.17.32.221\update\download C:\tcdtools\download 1_審判小工具安裝程式_V10909.exe /R:3 /MT:100
start /wait c:\tcdtools\download\1_審判小工具安裝程式_V10909.exe
xcopy \\172.17.32.221\update\reg\juddeamon32.reg C:\tcdtools\reg\. /R /y  /e /C 
copy C:\jud3\bin\三代審判系統.lnk %userprofile%\desktop\ /y
regedit /s C:\tcdtools\reg\juddeamon32.reg
xcopy \\172.17.32.221\update\reg\juddeamon.reg C:\tcdtools\reg\. /R /y  /e /C 
regedit /s C:\tcdtools\reg\juddeamon.reg
xcopy \\172.17.32.221\update\reg\chromeTCD.reg C:\tcdtools\reg\. /R /y  /e /C 
regedit /s C:\tcdtools\reg\chromeTCD.reg
rem 複製 myphrase.dat到 ws2\resources\app\user 目錄下
copy c:\winstar\myphrase.dat c:\jud3\ws2\resources\app\user /y
rem 復制blphrase.dat 及 myphrase.dat 到新 he11 目錄下 ， myphrase.dat 到 WS2下
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
xcopy \\172.17.32.221\update\download\中推會造字_輸入法_setup_1090828.exe C:\tcdtools\download\. /R /y  /e /C
start /wait c:\tcdtools\download\中推會造字_輸入法_setup_1090828.exe
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
copy C:\judge3\3代法官單機版(家用版).lnk %userprofile%\desktop\ /y
copy C:\judge3\bin\二代司法文書編輯器.lnk %userprofile%\desktop\ /y
echo exit install !!!
pause
GOTO Start

:OPTIONB
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\8_筆錄安裝 C:\tcdtools\download 8_庭上筆錄安裝_V10812版.exe /R:3 /MT:100
start /wait C:\tcdtools\download\8_庭上筆錄安裝_V10812版.exe
echo exit install !!!
pause
GOTO Start

:OPTIONC
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\9_三代數位錄音庭上程式安裝 C:\tcdtools\download 9_三代數位錄音庭上程式安裝.exe /R:3 /MT:100
start /wait C:\tcdtools\download\9_三代數位錄音庭上程式安裝.exe
echo exit install !!!
pause
GOTO Start

:OPTIOND
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\11_三代訴訟文書電子檔案掃描管理系統程式 C:\tcdtools\download 三代訴訟文書電子檔案掃描管理系統程式安裝.exe /R:3 /MT:100
start /wait C:\tcdtools\download\三代訴訟文書電子檔案掃描管理系統程式安裝.exe
echo exit install !!!
pause
GOTO Start

:OPTIONE
echo start install !!!
if not exist c:\tcdtools\download md c:\tcdtools\download
start /wait robocopy \\172.17.32.221\update\download\10_三代數位錄音燒錄程式 C:\tcdtools\download 三代數位錄音燒錄程式安裝.exe /R:3 /MT:100
start /wait C:\tcdtools\download\三代數位錄音燒錄程式安裝.exe
echo exit install !!!
pause
GOTO Start


:EXIT
pause