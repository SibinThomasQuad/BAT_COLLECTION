@echo off
setlocal enabledelayedexpansion

REM Prompt the user for the URL
set /p "url=Enter the URL of the file to download: "

REM Prompt the user for the output file name
set /p "output_filename=Enter the output filename (including extension): "

REM Download the file using certutil
certutil -urlcache -split -f "%url%" "%output_filename%"

if %errorlevel% equ 0 (
    echo Download completed successfully.
) else (
    echo Download failed. Check the URL and try again.
)

pause
