@echo off

curl.exe --output "%temp%/Asar.zip" --url "https://www.tc4shell.com/binary/Asar.zip"

setlocal
cd /d %~dp0
Call :UnZipFile "C:\Program Files\7-Zip\Formats\" "%temp%\Asar.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%


C:
cd C:\Program Files\7-Zip\
cd C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\
7z x "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\app.asar" -o"C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\temp\"
curl.exe --output "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\temp\stylesheets\temp.css" --url "https://raw.githubusercontent.com/Foxunderground/Signal-Themes/master/Yuri%%20Theme/manifest.css"
type "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\temp\stylesheets\temp.css" >> "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\temp\stylesheets\manifest.css"
del "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\temp\stylesheets\temp.css"
del "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\app.asar"
7z a "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\app.asar" "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\temp"\*
rmdir "C:\Users\%Username%\AppData\Local\Programs\signal-desktop\resources\temp" /S /Q