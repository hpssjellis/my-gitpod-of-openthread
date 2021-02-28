@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
setlocal
REM go to the folder where this bat script is located
cd /d %~dp0

where /q eta-flash-tool

IF ERRORLEVEL 1 (
    GOTO NOTINPATHERROR
)


REM so we cannot flash with *.bin, so move to a set name first
IF EXIST ei.bin (
    DEL ei.bin
)
COPY /y /b *.bin ei.bin > nul
CALL eta-flash-tool --firmware-path ei.bin

IF %ERRORLEVEL% NEQ 0 (
    GOTO FLASHFAILEDERROR
)

DEL ei.bin

echo Flashed your Eta Compute ECM3532 AI Sensor development board
echo To set up your development with Edge Impulse, run 'edge-impulse-daemon'
@pause
exit /b 0

:NOTINPATHERROR
echo Cannot find 'eta-flash-tool' in your PATH. Install the Edge Impulse CLI before you continue
echo Installation instructions: https://docs.edgeimpulse.com/docs/cli-installation
@pause
exit /b 1

:FLASHFAILEDERROR
@pause
exit /b %ERRORLEVEL%
