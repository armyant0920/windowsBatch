::@echo off

set mypath=\\utcsycisfs01\EXPORT\2248
set cnv=C:\Program Files\Microsoft Office\Office16\excelcnv.exe 

rem 斷開網路連線
net use B: /del 
rem 重新連線

net use B: \\utcsycisfs01\EXPORT\2248

B:
echo %mypath% 
echo =============
rem 將所有xls檔(這種寫法好像連xlsx也會跑到)產生一份xlsx,並將xls檔轉入history區
for %%i  in (B:\*.xls) do echo %%i  & "%cnv%" -oice "%%i" "%%~dpi%%~ni.xlsx" & move "%%i" B:\history 

:: & echo [B:\history\%%~nxi]

::

::

::& echo %%~dpi%%~ni.xlsx


pause

