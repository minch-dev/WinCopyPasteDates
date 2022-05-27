chcp 65001
echo off
set FILENAME="%~nx1"
set FOLDER="%~dp1
set FOLDER=%FOLDER:~0,-1%"
echo %FILENAME%
echo %FOLDER%

cd /d %TMP%\WinCPD
IF EXIST "DATES.0" set DATES="DATES.0"
IF EXIST "DATES.1" set DATES="DATES.1"

IF defined DATES (
 rename %DATES% %FILENAME%
 robocopy "." %FOLDER% %FILENAME% /COPY:T
 rename %FILENAME% %DATES%
)
