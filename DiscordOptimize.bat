@echo off
set "TARGET_DIR=%localappdata%\Discord"
set "FOLDER_PATTERN=app-*"



cd /d "%TARGET_DIR%" || (
    echo Failed to access directory: %TARGET_DIR%
    pause
    exit /b
)

set "found="
set "find_modules="

for /d %%D in (%FOLDER_PATTERN%) do (
    cd "%%D"
	set "find=1"
    set "found=1"
)

if not defined found (
    echo No matching folder found.
)


if defined find (
cd modules
)

echo This is a Discord debloater. BEWARE! This will remove some features. If you wanna proceed, type 1. If you dont, type 2


set choice=
set /p choice=... 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='2' echo Closing...
if '%choice%'=='2' C:\Windows\System32\TASKKILL.exe /f /im OpenConsole.exe > nul 2> nul
if '%choice%'=='1' echo Proceeding...

C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe > nul 2> nul

if exist discord_cloudsync-1 (
rmdir /s discord_cloudsync-1 /q
)

if exist discord_dispatch-1 (
rmdir /s discord_dispatch-1 /q
)

if exist discord_erlpack-1 (
rmdir /s discord_erlpack-1 /q
)

if exist discord_game_utils-1 (
rmdir /s discord_game_utils-1 /q
)

if exist discord_spellcheck-1 (
rmdir /s discord_spellcheck-1 /q
)


echo Complete!

pause