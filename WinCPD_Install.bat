:force admin rights start (by toster-cx@stackoverflow)
@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cd /D %~dp0
:force admin rights end

REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDCopyDates" /t REG_SZ /d "Dates COPY" /f
REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDCopyDates\command" /t REG_SZ /d "%cd%\CopyDates.bat \"%%L\"" /f

REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDPasteDates" /t REG_SZ /d "Dates PASTE" /f
REG ADD "HKEY_CLASSES_ROOT\*\shell\WinCPDPasteDates\command" /t REG_SZ /d "%cd%\PasteDates.bat \"%%L\"" /f

REG ADD "HKEY_CLASSES_ROOT\lnkfile\shell\WinCPDCopyDates" /t REG_SZ /d "Dates COPY" /f
REG ADD "HKEY_CLASSES_ROOT\lnkfile\shell\WinCPDCopyDates\command" /t REG_SZ /d "%cd%\CopyDates.bat \"%%L\"" /f

REG ADD "HKEY_CLASSES_ROOT\lnkfile\shell\WinCPDPasteDates" /t REG_SZ /d "Dates PASTE" /f
REG ADD "HKEY_CLASSES_ROOT\lnkfile\shell\WinCPDPasteDates\command" /t REG_SZ /d "%cd%\PasteDates.bat \"%%L\"" /f

:REG ADD "HKEY_CLASSES_ROOT\InternetShortcut\shell\WinCPDCopyDates" /t REG_SZ /d "Dates COPY (.URL)" /f
:REG ADD "HKEY_CLASSES_ROOT\InternetShortcut\shell\WinCPDCopyDates\command" /t REG_SZ /d "%cd%\CopyDates.bat \"%%L\"" /f

:REG ADD "HKEY_CLASSES_ROOT\InternetShortcut\shell\WinCPDPasteDates" /t REG_SZ /d "Dates PASTE (.URL)" /f
:REG ADD "HKEY_CLASSES_ROOT\InternetShortcut\shell\WinCPDPasteDates\command" /t REG_SZ /d "%cd%\PasteDates.bat \"%%L\"" /f

echo Installation complete
pause