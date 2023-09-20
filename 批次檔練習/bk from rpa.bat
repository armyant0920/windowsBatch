@echo off 
chcp 950

set log_path=C:\Users\A3504\Desktop\bat\RPA_BK\LOG\LOG_%date:~6,4%_%date:~0,2%_%date:~3,2%.txt

set rpa01_path=\\UTCSYRPA01\Storage
set rpa02_path=\\utcsyrpa02\OC_BAK
set nbu_path= \\10.13.65.88\nbu_bak\RPA
echo %log_path%

echo ***%date%%time% 開始執行RPA檔案備份*** >> %log_path% 

net use I: /del /y
net use J: /del /y
net use K: /del /y

net use I: %rpa01_path%
net use J: %rpa02_path%
net use K: %nbu_path%



if exist J:\*.bak  (echo 執行RPA02備份 >> %log_path% & goto RPA02) else (echo RPA02下沒有BAK檔>> %log_path% & goto RPA01)

:RPA02
echo ***RPA02:*** >> %log_path%
echo 刪除nbu\rpa02底下所有檔案 >> %log_path%
del	K:\rpa02\* /F /S /Q >> %log_path% 
echo 複製歷史區外的所有BAK檔到NBU後,移動到history >> %log_path% 
for %%i in (J:\*.bak) do xcopy  %%i K:\\RPA02  /S /D /Y  >> %log_path% & move "%%i" J:\history >> %log_path%

goto RPA01

echo ***將rpa02備份檔複製到NBU後,移動到history*** >> %log_path%

for %%i in (:\RPA02\*.bak) do  move "%%i" K:\history >> %log_path% 
xcopy J: K:\RPA02\*.bak /S /D /Y > %log_path%


:RPA01
echo ***RPA01:*** >> %log_path%
echo XCOPY所有OC上傳資料 >> %log_path%
xcopy I: K:\RPA01 /S /D /Y >> %log_path%
goto END



:END
echo 斷開網路連線 >> %log_path%

net use I: /del /y
net use J: /del /y
net use K: /del /y
echo ***%date% %time% 結束備份*** >> %log_path%

exit
::XCOPY
::rem /S 複製每個目錄及其包含的子目錄
::rem /D 複製發生變更的檔案
::rem /Y 所有覆蓋的詢問都回答 YES


