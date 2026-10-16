@echo off
cd /d "%~dp0"
set "VERSET_NODE=%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe"
if exist "%VERSET_NODE%" (
  start "" "http://127.0.0.1:4173"
  "%VERSET_NODE%" preview.cjs
) else (
  where node >nul 2>nul
  if errorlevel 1 (
    echo Instale o Node.js para executar a previa local.
    pause
    exit /b 1
  )
  start "" "http://127.0.0.1:4173"
  node preview.cjs
)
pause
