@echo off

set mypath=\\utcsycisfs01\EXPORT\2248\Convert_TEST\
set cnv=C:\Program Files\Microsoft Office\Office16\excelcnv.exe 

rem 斷開網路連線
net use B: /del 
rem 重新連線
net use B: \\utcsycisfs01\export\2248\Convert_TEST



echo %mypath% 
echo =============
pause



B:

for /F %%j in ('dir /s /b  *.xls') do  echo %%j & "%cnv%" -oice "%%j" "%mypath%%%~nj.xlsx"
::for /F %%j in ('dir %mypath% /b  *.xls') do  echo %%j 

::& "%cnv%" -oice %%j %mypath%%%~nj.xlsx



pause

