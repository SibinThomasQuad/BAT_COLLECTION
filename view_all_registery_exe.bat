@echo off

REM Display a list of all executables in the Registry
reg query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths" /s /f "" /k | findstr /i ".exe"

pause
