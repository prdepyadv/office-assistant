@ECHO OFF
setlocal EnableExtensions
title Office Assistant
echo Hello %username%

:start
echo ....
echo ...
echo Choose from the following:
echo 1 - Citrix in IE
echo 2 - Teams
echo 3 - Connect to RDP4
echo 4 - Hubstaff
echo 5 - Spotify
echo 6 - Clear
echo 7 - End

choice /c 12345678 /N /T 7200 /D 6
SET APPNUM=%ERRORLEVEL%
IF %APPNUM% EQU 1 goto citrix
IF %APPNUM% EQU 2 goto teams
IF %APPNUM% EQU 3 goto rdp
IF %APPNUM% EQU 4 goto hubstaff
IF %APPNUM% EQU 5 goto spotify
IF %APPNUM% EQU 6 (cls & goto start)
IF %APPNUM% EQU 7 goto end
IF %APPNUM% EQU 8 goto start
goto start

:citrix
echo "Opening Citrix in IE..."
@start http://login.myrealdata.in/
timeout /t 10
goto start

:teams
echo "Opening Teams..."
@start C:\Users\pradeep\AppData\Local\Microsoft\Teams\Update.exe --processStart "Teams.exe"
timeout /t 10
goto start

:rdp
echo "Connecting to RDP4..."
@start MSTSC C:\Users\pradeep\Downloads\RDP4.rdp
timeout /t 10
goto start

:hubstaff
echo "Opening Hubstaff..."
@start C:\PROGRA~1\Hubstaff\HubstaffClient.exe
timeout /t 10
goto start

:spotify
echo "Opening Spotify..."
@start C:\Users\pradeep\AppData\Roaming\Spotify\Spotify.exe
timeout /t 10
goto start

:end
echo Toddles...
timeout /t 10
END