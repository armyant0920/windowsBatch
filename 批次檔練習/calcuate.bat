@echo off
cls
:: System Parameter
set xpProgName=DosCalculator
set xpProgVer=1.0.0.1
echo.
title 歡迎使用Taoether編制的小計算器(DCal.bat) %xpProgName%_V%xpProgVer%
color 1f
rem mode con cols=80 lines=40
echo 歡迎使用Taoether編制的小計算器(DCal.bat) %xpProgName%_V%xpProgVer%
if /I {%1}=={} goto Main
if /I "%1〃=="C" goto Main
if /I "%1〃=="H" goto help
if /I "%1〃=="V" goto ver
:Ver
echo.
rem 重要宣告：
rem 本程式由陶永利編寫，您可以任意傳播，但請不要刪除以下資訊!
rem 如用於商業用途，請與作者聯絡。
echo Version:
echo ——————————
echo Program: %xpProgName%
echo Author: Taoether
echo Version: %xpProgVer%
echo IssueTime: 09:01 2009-2-18
echo UpdateTime: 9:01 2009-6-5
echo Email: taoether@gmail.com
echo HomePage: www.taoyoyo.net
echo ——————————
echo.
echo Version Log:
echo —————————————–
echo Ver. Date. Log.
echo —————————————–
echo V1000 20090218 New program issue.
echo V1001 20090605 Add new function: Clear.
echo …
echo —————————————–
if /I {%1}=={} goto Main
if /I "%1〃=="H" goto end
if /I "%1〃=="V" goto end
:help
echo.
echo Help:
echo —————————————–
echo 此程式為計算器，輸入計算表示式後，返回計算結果。
echo.
echo DCal [M]
echo.
echo [M]: 指定執行的模式
echo =空，進入計算模式
echo =C，清屏；
echo =H，顯示幫助；
echo =V，顯示版本；
echo.
echo 說明:
echo.
echo 1,在計算模式下：
echo 直接輸入算式，回車返回計算結果；
echo 按E，退出程式；
echo 按H，顯示幫助；
echo 按V，顯示版本；
echo.
echo 2,該計算器可以實現簡單的計算，以遞減的優先權順序支援下列操作:
echo.
echo () – 分組
echo * / % – 算數運算子
echo – – 算數運算子
echo ^<^< ^>^> – 邏輯移位
echo – 按位"與"
echo ^^ – 按位"異"
echo ^| – 按位"或"
echo = *= /= %= = -= – 賦值
echo ^&= ^= ^|= ^<^<= ^>^>= -二進位制運算賦值
echo , – 表示式分隔符
echo.
echo 如果您使用任何邏輯或取餘操作符， 您需要將表示式字串用引號擴起來。
echo 在表示式中的任何非數字字串鍵作為環境變數名稱，這些環境變數名稱的值已在使用前轉換成數字。
echo 如果指定了一個環境變數名稱，但未在當前環境中定義，那麼值將被定為零。
echo 這使您可以使用環境變數值做計算而不用鍵入那些 % 符號來得到它們的值。
echo 如果 SET /A 在命令指令碼外的命令列執行的，那麼它顯示該表示式的最後值。
echo 該分配的操作符在分配的操作符左邊需要一個環境變數名稱。
echo 除十六進位制有 0x 字首， 八進位制有 0 字首的，數字值為十進位數字。
echo 因此， 0x12 與 18 和 022 相同。
echo 請注意八進位制公式可能很容易搞混: 08 和 09 是無效的數字，因為 8 和 9 不是有效的八進位制位數。
echo —————————————–
if /I {%1}=={} goto Main
if /I "%1〃=="H" goto end
if /I "%1〃=="V" goto end
:Main
echo.
echo 進入計算模式: (顯示幫助:請按H；顯示版本:請按V；清屏:請按C；退出:請按E)
echo.
:Calc
set /p input=請輸入表示式：
if /I "%input%"=="E" goto end
if /I "%input%"=="H" goto help
if /I "%input%"=="V" goto Ver
if /I "%input%"=="C" goto Clear
set /a result=%input%
echo 計算結果為：%input%=%result%
echo.
goto Calc
:Clear
cls
if /I {%1}=={} goto Main
if /I "%1〃=="H" goto end
if /I "%1〃=="V" goto end
:end
echo.
echo 祝您工作順利，心情愉快!
echo.