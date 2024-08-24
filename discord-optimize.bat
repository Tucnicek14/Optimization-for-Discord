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
if '%choice%'=='1' echo Continuing...

C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul

cd %localappdata%\Discord\app-1.0.9159\modules\
if exist discord_cloudsync-1
rmdir /s discord_cloudsync-1 /q
if exist discord_dispatch-2
rmdir /s discord_dispatch-2 /q
if exist discord_erlpack-1
rmdir /s discord_erlpack-1 /q
if exist discord_game_utils-1
rmdir /s discord_game_utils-1 /q
if exist discord_spellcheck-2
rmdir /s discord_spellcheck-2 /q
