echo off
set FULLPATH=%1
set FOLDER=%2
set FILNAME=%~nx1
set WINCPD=%TMP%\WinCPD

IF EXIST "%WINCPD%\DATES" (
 rename "%WINCPD%\DATES" "%FILNAME%"
 robocopy "%WINCPD%" "%FOLDER%" "%FILNAME%" /COPY:T /DCOPY:T
 rename "%WINCPD%\%FILNAME%" "DATES"
)