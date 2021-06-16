@echo off
set work_path=C:\Users\2102062\Desktop\批次檔練習\測試創建並移動檔案

C:
cd %work_path%
setlocal EnableDelayedExpansion
FOR /d %%s in (*) do (

	rem (.,*)
	echo %%s
	echo ^&^&^&^&^&
	echo ^% ^%s =%%s
	set subPATH=%%s
	rem 這邊好像必須要用延遲設定
	echo subPATH !subPATH!
	
	cd %work_path%\%%s
	rem echo currentpath=%CD%
	echo %work_path%\%%s
	rem 有點意外,MKDIR沒有高亮但執行時仍知道是指令
	if not exist jedit ECHO "沒有jedit" & MKDIR jedit
	
	
	FOR  %%i in (*) do (
		
		move %%i %work_path%\%%s\jedit
	)
	pause
)








)
echo 遍歷結束
pause