::@echo off

set mypath=\\utcsycisfs01\EXPORT\2248
set cnv=C:\Program Files\Microsoft Office\Office16\excelcnv.exe 

rem �_�}�����s�u
net use B: /del 
rem ���s�s�u

net use B: \\utcsycisfs01\EXPORT\2248

B:
echo %mypath% 
echo =============
rem �N�Ҧ�xls��(�o�ؼg�k�n���sxlsx�]�|�]��)���ͤ@��xlsx,�ñNxls����Jhistory��
for %%i  in (B:\*.xls) do echo %%i  & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history 

:: & echo [B:\history\%%~nxi]

::

::

::& echo %%~dpi%%~ni.xlsx


pause

