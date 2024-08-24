@echo off
cls
:start
echo This is a Discord optimization program. Do you wish to continue? (WARNING THIS PROCESS WILL REMOVE FEATURES LIKE KRISP)
echo.
echo 1. YES
echo 2. NO
set choice=
set /p choice=Type 1 or 2 to continue.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='2' echo Closing...
if '%choice%'=='2' C:\Windows\System32\TASKKILL.exe /f /im OpenConsole.exe > nul 2> nul
if '%choice%'=='1' echo Continuing... (ignore any "cannot find the file" errors)

C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul

cd %localappdata%\Discord\app-1.0.9159\modules\
rmdir /s discord_cloudsync-1 /q
rmdir /s discord_dispatch-1 /q
rmdir /s discord_erlpack-1 /q
rmdir /s discord_game_utils-1 /q
rmdir /s discord_spellcheck-1 /q
echo Discord is not debloated! Feel free to close this command prompt now.
pause
