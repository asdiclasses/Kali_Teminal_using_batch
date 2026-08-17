@echo off
chcp 65001 >nul
setlocal enableDelayedExpansion
set "KALI_SYMBOL=@"

for /f "tokens=3" %%A in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild ^| find "CurrentBuild"') do (
    if %%A GEQ 22000 set "KALI_SYMBOL=㉿"
)

net session >nul 2>&1
if !errorlevel! == 0 (
    set "USER_NAME=root"
    set "USER_COLOR=31"
    set "PROMPT_SYMBOL=#"
) else (
    set "USER_NAME=%USERNAME%"
    set "USER_COLOR=32"
    set "PROMPT_SYMBOL=$"
)
title !USER_NAME!!KALI_SYMBOL!kali - Terminal
:start
set "historyfile=%temp%\kali_history.txt"
type nul > "%historyfile%"
cls
timeout /t 1 >nul
echo.
echo.
echo [34m             888888888888                                         88                           88  [0m
echo [34m                  88                                              ""                           88  [0m
echo [34m                  88                                                                           88  [0m
echo [94m                  88   ,adPPYba,  8b,dPPYba,  88,dPYba,,adPYba,   88  8b,dPPYba,   ,adPPYYba,  88  [0m
echo [94m                  88  a8P_____88  88P'   "Y8  88P'   "88"    "8a  88  88P'   `"8a  ""     `Y8  88  [0m
echo [36m                  88  8PP"""""""  88          88      88      88  88  88       88  ,adPPPPP88  88  [0m
echo [36m                  88  "8b,   ,aa  88          88      88      88  88  88       88  88,    ,88  88  [0m
echo [96m                  88   `"Ybbd8"'  88          88      88      88  88  88       88  `"8bbdP"Y8  88  [0m
echo.
echo.
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
:input
echo.
echo  [97m╔══[96m([!USER_COLOR!m!USER_NAME!!KALI_SYMBOL!Kali[96m)
set /p cmd=".%BS% [97m╚══>[94m!PROMPT_SYMBOL![92m "
echo !cmd!>>"%historyfile%"
echo.

set valid=0

if /i "!cmd!" equ "ls" (
	set valid=1
        dir /s
)
if /i "!cmd!" equ "cd" (
	set valid=1
	cd
)
if /i "!cmd!" equ "clear" (
	set valid=1
	cls
)
if /i "!cmd!" equ "pwd" (
	set valid=1
	cd
)
if /i "!cmd!" equ "cp" (
    set valid=1
    set /p source=Source file:
    set /p dest=Destination file:
    copy "!source!" "!dest!"
)
if /i "!cmd!" equ "mv" (
    set valid=1
    set /p source=Source file:
    set /p dest=Destination file:
    move "!source!" "!dest!"
)
if /i "!cmd!" equ "rm" (
    set valid=1
    set /p file=File to delete:
    del "!file!"
)
if /i "!cmd!" equ "cat" (
    set valid=1
    set /p file=Enter file name:
    if exist "!file!" (
        echo.
        type "!file!"
    ) else (
        echo File not found.
    )
)
if /i "!cmd!" equ "mkdir" (
    set valid=1
    set /p folder=Enter folder name:
    mkdir "!folder!"
)
if /i "!cmd!" equ "ifconfig" (
	set valid=1
	ipconfig
)
if /i "!cmd!" equ "whoami" (
    set valid=1
    whoami
)

if /i "!cmd!" equ "date" (
    set valid=1
    date /t
)

if /i "!cmd!" equ "time" (
    set valid=1
    time /t
)

if /i "!cmd!" equ "uname -a" (
    set valid=1
    echo Kali@%username% - Terminal
    systeminfo
)

if /i "!cmd!" equ "uname" (
    set valid=1
    echo Linux
)

if /i "!cmd!" equ "ps" (
    set valid=1
    tasklist
)

if /i "!cmd!" equ "exit" (
    exit
)

if /i "!cmd!" equ "uptime" (
    set valid=1
    systeminfo | find "System Boot Time"
)

if /i "!cmd!" equ "hostname" (
    set valid=1
    hostname
)

if /i "!cmd!" equ "tree" (
    set valid=1
    tree
)

if /i "!cmd!" equ "exec bash" (
    set valid=1
    goto start
)

if /i "!cmd!" equ "bash" (
    set valid=1
    start "" "%~f0"
)

if /i "!cmd!" equ "touch" (
    set valid=1
    set /p file=Enter file name:
    type nul > "!file!"
)

if /i "!cmd!" equ "df" (
    set valid=1
    wmic logicaldisk get size,freespace,caption
)

if /i "!cmd:~0,5!"=="echo " (
    set valid=1
    echo !cmd:~5!
)
if /i "!cmd!"=="sudo" goto admin
if /i "!cmd!"=="sudo su" goto admin
if /i "!cmd!"=="su" goto admin

if /i "!cmd!" equ "help" (
set valid=1
echo.
echo [96m================ KALI TERMINAL HELP ================[0m
echo.
echo [93m[FILE COMMANDS][0m
echo [92mls[0m        - List files and folders
echo [92mcd[0m        - Show current directory
echo [92mpwd[0m       - Print working directory
echo [92mmkdir[0m     - Create a folder
echo [92mrm[0m        - Delete a file
echo [92mcp[0m        - Copy a file
echo [92mmv[0m        - Move or rename a file
echo [92mcat[0m       - View file contents
echo [92mtouch[0m     - Create an empty file
echo.
echo [93m[SYSTEM COMMANDS][0m
echo [92mwhoami[0m    - Show current user
echo [92mhostname[0m  - Show computer name
echo [92mifconfig[0m  - Show network information
echo [92mps[0m        - Show running processes
echo [92mdate[0m      - Show current date
echo [92mtime[0m      - Show current time
echo [92muptime[0m    - Show boot time
echo [92mdf[0m        - Show disk information
echo [92muname[0m     - Show operating system
echo [92muname -a[0m  - Show detailed system info
echo.
echo [93m[SHELL COMMANDS][0m
echo [92mclear[0m     - Clear terminal
echo [92msudo su[0m     - Run root terminal
echo [92mhistory[0m   - Show command history
echo [92mbash[0m      - Open a new terminal window
echo [92mexec bash[0m - Restart current shell
echo [92mecho[0m      - Prints what you typed
echo [92mhelp[0m      - Show this menu
echo [92mexit[0m      - Exit terminal
echo.
echo [96m====================================================[0m
)


if /i "!cmd!" equ "history" (
    set valid=1
    type "%historyfile%"
)

if not "!valid!"=="1" (
	echo [91mBash: !cmd!: Command Not Found[92m
	timeout /t 1 >nul
	goto input
)

goto input

:admin
if "!USER_NAME!"=="root" (
    echo Already root.
    timeout /t 1 >nul
    goto input
)

powershell -NoProfile -Command Start-Process -FilePath "\"%~f0\"" -Verb RunAs
exit /b