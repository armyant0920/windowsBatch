@echo off

set log_path=C:\Users\SY_RPA\Desktop\RPA_Project\log.txt

set invoice_path=\\utcsyfs02\carrier_�~�ȳ�\�Ȥ�o��\

set cnv=C:\Program Files\Microsoft Office\Office16\excelcnv.exe 


echo %date%%time% utcsycisfs02�}�l����excel���� >> %log_path%
rem �_�}�����s�u
net use B: /del /y


echo ***%date%%time% %invoice_path%2503�}�l����excel����*** >> %log_path% 
C:
net use B: %invoice_path%2503
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem �_�}�����s�u
net use B: /del /y
echo ***%date%%time% %invoice_path%2503����excel����*** >> %log_path% 



echo ***%date%%time% %invoice_path%2507�}�l����excel����*** >> %log_path% 
C:
net use B: %invoice_path%2507
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem �_�}�����s�u
net use B: /del /y
echo ***%date%%time% %invoice_path%2507����excel����*** >> %log_path%


 
echo ***%date%%time% %invoice_path%2602�}�l����excel����*** >> %log_path% 
C:
net use B: %invoice_path%2602
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem �_�}�����s�u
net use B: /del /y
echo ***%date%%time% %invoice_path%2602����excel����*** >> %log_path%




echo ***%date%%time% %invoice_path%2603�}�l����excel����*** >> %log_path% 
C:
net use B: %invoice_path%2603
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem �_�}�����s�u
net use B: /del /y
echo ***%date%%time% %invoice_path%2603����excel����*** >> %log_path%



echo ***%date%%time% %invoice_path%2803�}�l����excel����*** >> %log_path% 
C:
net use B: %invoice_path%2803
B:
for %%i in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\XLS
rem �_�}�����s�u
net use B: /del /y
echo ***%date%%time% %invoice_path%2803����excel����*** >> %log_path%



echo %date%%time% utcsycisfs02����excel���� >> %log_path%






