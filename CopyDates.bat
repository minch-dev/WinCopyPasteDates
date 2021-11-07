chcp 65001
echo off
set FILENAME="%~nx1"
set FOLDER="%~dp1
set FOLDER=%FOLDER:~0,-1%"
echo %FILENAME%
echo %FOLDER%

set WINCPD=%TMP%\WinCPD

del /F /Q "%WINCPD%\DATES"
robocopy %FOLDER% "%WINCPD%" %FILENAME% /COPY:T /CREATE
cd /d %WINCPD%
rename %FILENAME% "DATES"