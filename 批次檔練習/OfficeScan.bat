

@echo off
echo G
set EXE=ThreatSonar.exe
start C:\ThreatSonar_IRCase_20210602\ThreatSonar.exe

set min=0
echo ���q���r�{���}�l����
start C:\Users\2102062\Desktop\�妸�ɽm��\�}�l���r.mp3


color a
tasklist|find /i "%EXE%" && echo %EXE%���椤 && goto working || echo %EXE%���楢�� && start ?C:\Users\2102062\Desktop\�妸�ɽm��\���r���_.mp3 && goto end



:working
timeout 	/t 60 /nobreak
set /a min+=1

::echo %min%����
tasklist|find /i "%EXE%" && echo %EXE%���椤...�ثe�w����%min%���� && goto working || echo %EXE%����  && goto end 


:end
	
color c
echo �{�ǵ���
start C:\Users\2102062\Desktop\�妸�ɽm��\���r����.mp3
pause
exit
rem color r �i�Hshow�X��X

