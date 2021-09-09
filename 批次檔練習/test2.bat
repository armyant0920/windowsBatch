@echo off
 
cls
echo 請在跳出視窗內輸入使用者名稱及密碼
If not exist %0 goto ERROR
type %0 | find "    " | find /v "Not Me!" > %TEMP%\UserIn.hta
start /w %TEMP%\UserIn.hta
 
call %TEMP%\UserIn.bat
echo Your user name is %USERNAME%
echo Your password is %PASSWORD%
:: Clean up
del %TEMP%\UserIn.hta
del %TEMP%\UserIn.bat
goto DONE
 
:ERROR
cls
echo %0 is not the full path and file name
echo for the batch file. You MUST call this
echo batch file with a full path and file name.
goto DONE
 
:HTA
:: All HTA code MUST be indented four or more spaces.
    <html>
    <head>
    <title>Password Entry</title>
    <hta:application>
    <script language="vbscript">
        window.resizeTo 250,200
        Sub SaveBatch()
            Set fs = CreateObject("Scripting.FileSystemObject")
            strFile = fs.GetAbsolutePathName(fs.BuildPath(fs.GetSpecialFolder(2), "UserIn.bat"))
            Set ts = fs.OpenTextFile(strFile, 2, True)
            ts.WriteLine "SET USERNAME=" & document.Forms(0).elements("username").value
            ts.WriteLine "SET PASSWORD=" & document.Forms(0).elements("password").value
            ts.Close
        End Sub
    </script>
    </head>
    <body>
    <form>
        <br>使用者名稱：
        <br><input type=text name=username tabindex=1>
        <br>密碼：
        <br><input type=password name=password tabindex=2>
        <br><input type=button language="vbscript" value="OK" onclick="SaveBatch : Window.Close">
    </form>
    <script language=vbscript>
        document.Forms(0).elements("username").focus
    </script>
    </body>
    </html>
 
:DONE