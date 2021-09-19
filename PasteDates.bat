echo off
SetLocal EnableDelayedExpansion

set FILENAME=%~nx1
 set TRAILING=!FILENAME:~-1!
 if !TRAILING!==\ set FILENAME=!FILENAME:~0,-1!
 
set FOLDER=%~2 
 set TRAILING=!FOLDER:~-1!
 if !TRAILING!==\ set FOLDER=!FOLDER:~0,-1!
set WINCPD=%TMP%\WinCPD

IF EXIST "%WINCPD%\DATES" (
 rename "%WINCPD%\DATES" "%FILENAME%"
 robocopy "%WINCPD%" "%FOLDER%" "%FILENAME%" /COPY:T
 rename "%WINCPD%\%FILENAME%" "DATES"
)

:pause