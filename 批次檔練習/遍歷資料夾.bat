@echo off
set work_path=C:\Users\2102062\Desktop\�妸�ɽm��\���ճЫبò����ɮ�

C:
cd %work_path%
setlocal EnableDelayedExpansion
FOR /d %%s in (*) do (

	rem (.,*)
	echo %%s
	echo ^&^&^&^&^&
	echo ^% ^%s =%%s
	set subPATH=%%s
	rem �o��n�������n�Ω���]�w
	echo subPATH !subPATH!
	
	cd %work_path%\%%s
	rem echo currentpath=%CD%
	echo %work_path%\%%s
	rem ���I�N�~,MKDIR�S�����G������ɤ����D�O���O
	if not exist jedit ECHO "�S��jedit" & MKDIR jedit
	
	
	FOR  %%i in (*) do (
		
		move %%i %work_path%\%%s\jedit
	)
	pause
)








)
echo �M������
pause