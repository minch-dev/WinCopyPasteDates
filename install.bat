:by toster-cx@stackoverflow
@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd /D %~dp0

:\"%%1\"
REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDCopyDates" /t REG_SZ /d "Dates COPY" /f
REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDCopyDates\command" /t REG_SZ /d "%cd%\CopyDates.ps1" /f

REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDPasteDates" /t REG_SZ /d "Dates PASTE" /f
REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDPasteDates\command" /t REG_SZ /d "%cd%\PasteDates.ps1" /f
pause