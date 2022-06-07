chcp 65001
echo off
SETLOCAL
set FILENAME="%~nx1"
set FOLDER="%~dp1
set FOLDER=%FOLDER:~0,-1%"

for %%a in ("%TMP%\WinCPD\*.DATES") do (
set DATES=%%~nxa
)

IF defined DATES (
 cd /d "%TMP%\WinCPD"
 rename "%DATES%" %FILENAME%
 robocopy "." %FOLDER% %FILENAME% /DCOPY:X /COPY:T  /R:0
 rename %FILENAME% "%DATES%"
)
ENDLOCAL