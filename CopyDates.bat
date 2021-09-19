echo off
SetLocal EnableDelayedExpansion

set FILENAME=%~nx1
 set TRAILING=!FILENAME:~-1!
 if !TRAILING!==\ set FILENAME=!FILENAME:~0,-1!

set FOLDER=%~2 
 set TRAILING=!FOLDER:~-1!
 if !TRAILING!==\ set FOLDER=!FOLDER:~0,-1!
set WINCPD=%TMP%\WinCPD

del /F /Q "%WINCPD%\DATES"
robocopy "%FOLDER%" "%WINCPD%" "%FILENAME%" /COPY:T /CREATE
rename "%WINCPD%\%FILENAME%" "DATES"

:pause