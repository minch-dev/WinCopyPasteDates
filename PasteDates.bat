chcp 65001
echo off
set FILENAME="%~nx1"
set FOLDER="%~dp1
set FOLDER=%FOLDER:~0,-1%"
echo %FILENAME%
echo %FOLDER%

set WINCPD=%TMP%\WinCPD

IF EXIST "%WINCPD%\DATES" (
 cd /d %WINCPD%
 rename "DATES" %FILENAME%
 robocopy "%WINCPD%" %FOLDER% %FILENAME% /COPY:T
 rename %FILENAME% "DATES"
)