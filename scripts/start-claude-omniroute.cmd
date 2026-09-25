@echo off
echo Waiting for OmniRoute...
:wait
curl.exe -s http://localhost:20128/api/monitoring/health | findstr /C:"healthy" >nul
if errorlevel 1 (
    timeout /t 3 /nobreak >nul
    goto wait
)
echo OmniRoute is ready. Starting Claude Code...
cd /d "%USERPROFILE%\Projects" && start "" "%APPDATA%\npm\omniroute.cmd" launch --profile agy-claude-sonnet-4-6
