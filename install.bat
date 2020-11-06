REM Installs BBC News and Weather Android Studio configs into your user configs.
@echo off
echo Installing BBC News and Weather Android Studio configs...

setlocal enableDelayedExpansion

for /D %%i in ("%userprofile%"\.AndroidStudio*) do call :copy_config "%%i"

echo.
echo Restart AndroidStudio, go to preferences, and apply 'BBC News and Weather' code style.
exit /b

REM sub function for copy config files
:copy_config
set config_dir=%~1\config
echo Installing to "!config_dir!"
xcopy /s configs "!config_dir!"
echo Done.
echo.
exit /b
