@echo off
D:
set /a time =%time:~0,2%
echo %time%
cd "D:\visualcode\TaskTest\bin\Debug\net6.0\"
set /a dice = %random%

set /a dice=dice%%2
echo %dice%
if %dice% == 0 ("D:\visualcode\TaskTest\bin\Debug\net6.0\TaskTest.exe" "ABC")
else(
"D:\visualcode\TaskTest\bin\Debug\net6.0\TaskTest.exe" "DEF"
)
pause

::TaskTest.exe "ABC"
::else
::TaskTest.exe "DEF"
::exit