

@echo off
set EXE=ThreatSonar.exe
start C:\ThreatSonar\ThreatSonar.exe

set min=0
echo ���q���r�{���}�l����


color a
tasklist|find /i "%EXE%" && echo %EXE%���椤 && goto working || echo %EXE%���楢�� && goto end



:working
timeout 	/t 60 /nobreak
set /a min+=1

::echo %min%����
tasklist|find /i "%EXE%" && echo %EXE%���椤...�ثe�w����%min%���� && goto working || echo %EXE%���� && goto end 


:end
	
color c
echo �{�ǵ���
pause
exit
rem color r �i�Hshow�X��X

