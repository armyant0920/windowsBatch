@echo off

set log_path=C:\Users\SY_RPA\Desktop\RPA_Project\log.txt

set invoice_path=\\utcsyfs02\carrier_業務部\客戶發票\

set cnv=C:\Program Files\Microsoft Office\Office16\excelcnv.exe 


echo %date%%time% utcsycisfs02開始執行excel轉檔 >> %log_path%
rem 斷開網路連線
net use B: /del /y


echo ***%date%%time% %invoice_path%2503開始執行excel轉檔*** >> %log_path% 
C:
net use B: %invoice_path%2503
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem 斷開網路連線
net use B: /del /y
echo ***%date%%time% %invoice_path%2503結束excel轉檔*** >> %log_path% 



echo ***%date%%time% %invoice_path%2507開始執行excel轉檔*** >> %log_path% 
C:
net use B: %invoice_path%2507
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem 斷開網路連線
net use B: /del /y
echo ***%date%%time% %invoice_path%2507結束excel轉檔*** >> %log_path%


 
echo ***%date%%time% %invoice_path%2602開始執行excel轉檔*** >> %log_path% 
C:
net use B: %invoice_path%2602
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem 斷開網路連線
net use B: /del /y
echo ***%date%%time% %invoice_path%2602結束excel轉檔*** >> %log_path%




echo ***%date%%time% %invoice_path%2603開始執行excel轉檔*** >> %log_path% 
C:
net use B: %invoice_path%2603
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem 斷開網路連線
net use B: /del /y
echo ***%date%%time% %invoice_path%2603結束excel轉檔*** >> %log_path%



echo ***%date%%time% %invoice_path%2803開始執行excel轉檔*** >> %log_path% 
C:
net use B: %invoice_path%2803
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem 斷開網路連線
net use B: /del /y
echo ***%date%%time% %invoice_path%2803結束excel轉檔*** >> %log_path%



echo %date%%time% utcsycisfs02結束excel轉檔 >> %log_path%






