@echo off
echo ���ͥؿ��ɤ�
dir *.mp3 /b>playlist.m3u
echo �ؿ����ͧ��� 
echo ��J0����,��J��L���}
set /p choice=�n���������^?:
if "%choice%"=="0" (goto play) else exit

:play
start %~dp0playlist.m3u

