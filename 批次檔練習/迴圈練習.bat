@echo off
set start=1;
set step=1;
set end=100;
set result=0;
rem 嘗試用變數決定3項條件
for /L %%x in (%start%, %step%, %end%) do (
   echo %%x
   set /a result+=%%x
)
echo result=%result%

pause
chcp 65001
set /P  start="輸入起始值:";
set /P step="輸入增加值:";
set /P end="輸入結尾值:";
set result=0;

for /L %%x in (%start%, %step%, %end%) do (
   echo %%x
   set /a result+=%%x
)
echo result=%result%

pause



