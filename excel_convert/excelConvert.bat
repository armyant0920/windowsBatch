@echo off
set log_path=C:\Users\SY_RPA\Desktop\RPA_Project\log.txt

set cnv=C:\Program Files\Microsoft Office\Office16\excelcnv.exe 


echo %date%%time% utcsycisfs01開始執行excel轉檔 >> %log_path%

rem 斷開網路連線
net use B: /del /y


echo ***%date%%time% 2507開始執行excel轉檔*** >> %log_path%
C:
rem 重新連線
net use B: \\utcsycisfs01\EXPORT\2507
B:
rem 將所有xls檔(這種寫法好像連xlsx也會跑到)產生一份xlsx,並將xls檔轉入history區
for %%i  in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history  >> %log_path%
rem 斷開網路連線
net use B: /del /y
echo ***%date%%time% 2507結束excel轉檔*** >> %log_path%


echo ***%date%%time% 2603開始執行excel轉檔*** >> %log_path%
C:
rem 重新連線
net use B: \\utcsycisfs01\EXPORT\2603
B:
for %%i  in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history  >> %log_path%
rem 斷開網路連線
net use B: /del /y
echo ***%date%%time% 2603結束excel轉檔*** >> %log_path%


echo %date%%time% utcsycisfs01結束excel轉檔 >> %log_path%


::& "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history 

:: & echo [B:\history\%%~nxi]

::& echo %%~dpi%%~ni.xlsx




