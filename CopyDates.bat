chcp 65001
echo off
set FILENAME="%~nx1"
set FOLDER="%~dp1
set FOLDER=%FOLDER:~0,-1%"
echo %FILENAME%
echo %FOLDER%


cd /d "%TMP%\WinCPD"
robocopy %FOLDER% "." %FILENAME% /COPY:T /CREATE
IF EXIST "DATES.0" (
del /F /Q "DATES.0"
rename %FILENAME% "DATES.1"
) ELSE (
del /F /Q "DATES.1"
rename %FILENAME% "DATES.0"
)
