# WinCopyPasteDates 1.1.1
Windows context menu items (Dates COPY, Dates PASTE) that allow you to stash any file's dates (folders not supported yet) and then apply them to any other file.
Written as three simple .bat scripts and a .reg file for uninstallation

# Installation
Code-> Download ZIP, unzip into any folder that suits your needs, then Run WinCPD_Install.bat and allow running with administrative priviliges when asked. Alternatively you can open WinCPD_Install.bat with "Run as administrator" context menu option straight away. You can move the extension folder anywhere you want as long as you rerun the WinCPD_Install.bat afterwards.

# Uninstallation
Use WinCPD_Unistall.reg that will wipe WinCPD's context menu entries from registry. That's it.

# How It Works
WinCopyPasteDates works with built in tools only so the resulting script is just a few lines of commands in batch files. Robocopy is used to store the dummy zero-length .DATES file with copied dates in the %TMP%\WinCPD directory, so it doesn't mess with the clipboard at all and is even reboot-percistent to a degree.

# Fixing problems
Previous versions could turn some of the folders where you copy-pasted dates into system-hidden in some cases, to fix this run this cmd `attrib -h -s "D:\path to your folder"`

# To DO
Planning to add folders and copying attributes as well, but I have other priorities and this extension suites my needs perfectly for now, so maybe later
