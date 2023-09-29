@echo off
cls
echo List of User Profiles on this Computer:
echo.

for /d %%i in (C:\Users\*) do (
    echo %%~nxi
)

echo.
pause
