@echo off 
chcp 950

set log_path=C:\Users\A3504\Desktop\bat\RPA_BK\LOG\LOG_%date:~6,4%_%date:~0,2%_%date:~3,2%.txt

set rpa01_path=\\UTCSYRPA01\Storage
set rpa02_path=\\utcsyrpa02\OC_BAK
set nbu_path= \\10.13.65.88\nbu_bak\RPA
echo %log_path%

echo ***%date%%time% �}�l����RPA�ɮ׳ƥ�*** >> %log_path% 

net use I: /del /y
net use J: /del /y
net use K: /del /y

net use I: %rpa01_path%
net use J: %rpa02_path%
net use K: %nbu_path%



if exist J:\*.bak  (echo ����RPA02�ƥ� >> %log_path% & goto RPA02) else (echo RPA02�U�S��BAK��>> %log_path% & goto RPA01)

:RPA02
echo ***RPA02:*** >> %log_path%
echo �R��nbu\rpa02���U�Ҧ��ɮ� >> %log_path%
del	K:\rpa02\* /F /S /Q >> %log_path% 
echo �ƻs���v�ϥ~���Ҧ�BAK�ɨ�NBU��,���ʨ�history >> %log_path% 
for %%i in (J:\*.bak) do xcopy  %%i K:\\RPA02  /S /D /Y  >> %log_path% & move "%%i" J:\history >> %log_path%

goto RPA01

echo ***�Nrpa02�ƥ��ɽƻs��NBU��,���ʨ�history*** >> %log_path%

for %%i in (:\RPA02\*.bak) do  move "%%i" K:\history >> %log_path% 
xcopy J: K:\RPA02\*.bak /S /D /Y > %log_path%


:RPA01
echo ***RPA01:*** >> %log_path%
echo XCOPY�Ҧ�OC�W�Ǹ�� >> %log_path%
xcopy I: K:\RPA01 /S /D /Y >> %log_path%
goto END



:END
echo �_�}�����s�u >> %log_path%

net use I: /del /y
net use J: /del /y
net use K: /del /y
echo ***%date% %time% �����ƥ�*** >> %log_path%

exit
::XCOPY
::rem /S �ƻs�C�ӥؿ��Ψ�]�t���l�ؿ�
::rem /D �ƻs�o���ܧ��ɮ�
::rem /Y �Ҧ��л\���߰ݳ��^�� YES


