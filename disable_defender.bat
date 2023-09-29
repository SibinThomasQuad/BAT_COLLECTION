@echo off

REM Disable Windows Defender
powershell.exe -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

echo Windows Defender has been disabled temporarily.

REM You can add additional commands or tasks here.

pause
