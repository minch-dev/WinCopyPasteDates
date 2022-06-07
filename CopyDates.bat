chcp 65001
echo off
SETLOCAL
set FILENAME="%~nx1"
set FOLDER=%~dp1
set FOLDER=%FOLDER:~0,-1%

del /F /Q "%TMP%\WinCPD\*"
robocopy "%FOLDER%" "%TMP%\WinCPD" %FILENAME% /DCOPY:X /COPY:T /R:0 /CREATE

:https://ss64.com/nt/syntax-stampme.html
for /f "tokens=1-6 delims=/: " %%a in ('robocopy "|" . /njh ^| find ":"') do (
set "_YYYY=%%a" & set "_month=%%b" & set "_day=%%c" 
set "_hour=%%d" & set "_min=%%e"   & set "_sec=%%f"
)
:https://ss64.com/nt/syntax-gettime.html
for /f "tokens=1-3 delims=1234567890 " %%a in ("%time%") do set "delims=%%a%%b%%c"
for /f "tokens=1-4 delims=%delims%" %%G in ("%time%") do (
set _ms=%%J
)

set TIMESTAMP=%_YYYY%%_month%%_day%%_hour%%_min%%_sec%%_ms%-%RANDOM%
cd /d "%TMP%\WinCPD"
rename %FILENAME% "%TIMESTAMP%.DATES"
ENDLOCAL