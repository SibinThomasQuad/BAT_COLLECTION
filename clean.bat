@echo off

REM Prompt the user to close all programs
echo Before running the cleanup, please save your work and close all open programs.
set /p "confirm=Enter 'Y' to continue or any other key to exit: "
if /i "%confirm%" neq "Y" (
    echo Cleanup canceled.
    pause
    exit /b 1
)

REM Terminate all running programs
taskkill /f /im *

echo Clearing RAM...
start /wait "" %SystemRoot%\system32\wbem\WMIC.exe MEMORYCHIP get Capacity
echo.
echo Clearing Temporary Files...
rmdir /s /q %TEMP%
mkdir %TEMP%
echo.
echo Running NeoFetch...
neofetch
echo.
echo Emptying Recycle Bin...
rd /s /q %USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\Quick Access
mkdir %USERPROFILE%\AppData\Local\Microsoft\Windows\Explorer\Quick Access
echo.
echo Clearing Clipboard...
echo off | clip
echo.
echo Cleanup complete.
pause
