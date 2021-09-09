

@echo off
echo G
set EXE=ThreatSonar.exe
start C:\ThreatSonar_IRCase_20210602\ThreatSonar.exe

set min=0
echo 公司掃毒程式開始執行
start C:\Users\2102062\Desktop\批次檔練習\開始掃毒.mp3


color a
tasklist|find /i "%EXE%" && echo %EXE%執行中 && goto working || echo %EXE%執行失敗 && start ?C:\Users\2102062\Desktop\批次檔練習\掃毒中斷.mp3 && goto end



:working
timeout 	/t 60 /nobreak
set /a min+=1

::echo %min%分鐘
tasklist|find /i "%EXE%" && echo %EXE%執行中...目前已執行%min%分鐘 && goto working || echo %EXE%結束  && goto end 


:end
	
color c
echo 程序結束
start C:\Users\2102062\Desktop\批次檔練習\掃毒完成.mp3
pause
exit
rem color r 可以show出色碼

