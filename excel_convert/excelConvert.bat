@echo off
set log_path=C:\Users\SY_RPA\Desktop\RPA_Project\log.txt

set cnv=C:\Program Files\Microsoft Office\Office16\excelcnv.exe 


echo %date%%time% utcsycisfs01�}�l����excel���� >> %log_path%

rem �_�}�����s�u
net use B: /del /y


echo ***%date%%time% 2507�}�l����excel����*** >> %log_path%
C:
rem ���s�s�u
net use B: \\utcsycisfs01\EXPORT\2507
B:
rem �N�Ҧ�xls��(�o�ؼg�k�n���sxlsx�]�|�]��)���ͤ@��xlsx,�ñNxls����Jhistory��
for %%i  in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history  >> %log_path%
rem �_�}�����s�u
net use B: /del /y
echo ***%date%%time% 2507����excel����*** >> %log_path%


echo ***%date%%time% 2603�}�l����excel����*** >> %log_path%
C:
rem ���s�s�u
net use B: \\utcsycisfs01\EXPORT\2603
B:
for %%i  in (B:\*.xls) do echo %%i & echo %%i >> %log_path% & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history  >> %log_path%
rem �_�}�����s�u
net use B: /del /y
echo ***%date%%time% 2603����excel����*** >> %log_path%


echo %date%%time% utcsycisfs01����excel���� >> %log_path%


::& "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history 

:: & echo [B:\history\%%~nxi]

::& echo %%~dpi%%~ni.xlsx




