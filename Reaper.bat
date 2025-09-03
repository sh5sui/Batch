@echo off
color 0C
title Repear
chcp 65001 >nul
reg add HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 1 /f
for /f "delims=" %%A in ('echo prompt $E ^| cmd') do set "ESC=%%A"

cd Version
cls
if exist "1.0" (
    echo.
) else (
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░   
echo.
echo.
    echo Reaper has updated and your version is outdated.
    echo Would you like to update? [Y/N]

    choice /c YN /n /m "@ "

    if errorlevel 2 (
        cls
        goto Banner
    )
    if errorlevel 1 (
        start "" "https://github.com/sh5sui/Reaper"
        cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░   
echo.
echo.
        echo Opening github repo to newer version...
        timeout /t 3 /nobreak >nul
        echo Closing...
        timeout /t 3 /nobreak >nul
        exit
    )
)

cls
goto Banner
echo.
echo Current Date: %date%
echo Current Time: %time%
quser
timeout /t 3 /nobreak >nul

:menu
cls
color 0C
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░   
echo.
echo.
echo Made by q3tg :3
echo.
echo.
echo  ╔══════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo  ║  1. Query Device Drivers                                      ║   17. Show File Structure                    ║
echo  ║  2. Check Disk Health   (Requires admin)                      ║   18. Speedtest                              ║
echo  ║  3. Miner Scan                                                ║   19. End Xbox Gamebar                       ║
echo  ║  4. Show All Running Tasks                                    ║   20. Who Am I?                              ║
echo  ║  5. Flush IP DNS Resolver Cache (Improve connectivity/speeds) ║   21. PowerShell Invoke Testing              ║
echo  ║  6. Check System Files   (Requires admin)                     ║   22. Get UUID                               ║
echo  ║  7. View Event Logs                                           ║   23. Open GitHub                            ║
echo  ║  8. View MSINFO32 / System Information                        ║   24. Loop Ping IP (Causes Network Bloating) ║
echo  ║  9. Ping IP                                                   ║   25. End A Running Task                     ║
echo  ║  10. Take Ownership Of A File                                 ║   26. RPD (Remote Desktop Protocol)          ║
echo  ║  11. WinRar Password Cracker                                  ║   27. Get system properties                  ║
echo  ║  12. Wifi Passwords On PC                                     ║   28. Get Your PC's Timezone                 ║
echo  ║  13. Discord Invite                                           ║   29. Discord RTC Logs (Must be in vc)       ║
echo  ║  14. WiFi Interactions                                        ║   30. Discord Util                           ║
echo  ║  15. Information About Me :D                                  ║   31. Find out :0                            ║
echo  ║  16. Install Spicetify                                        ║   00. Exit                                   ║
echo  ╚══════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo %USERNAME% - Reaper
set /p choice=@

if "%choice%"=="1" goto Drivers
if "%choice%"=="2" goto Disk
if "%choice%"=="3" goto Miner
if "%choice%"=="4" goto Scan
if "%choice%"=="5" goto FlushDNS
if "%choice%"=="6" goto SFC
if "%choice%"=="7" goto VEL
if "%choice%"=="8" goto SYSINFO
if "%choice%"=="9" goto PingIP
if "%choice%"=="10" goto TakeOwn
if "%choice%"=="11" goto WRPC
if "%choice%"=="12" goto WPOPC
if "%choice%"=="13" goto DCINV
if "%choice%"=="14" goto WiFiInter
if "%choice%"=="15" goto InfoAbout
if "%choice%"=="16" goto Spicetify
if "%choice%"=="17" goto structure
if "%choice%"=="18" goto speedtest
if "%choice%"=="19" goto XboxGamebar
if "%choice%"=="20" goto WAI
if "%choice%"=="21" goto Invoker
if "%choice%"=="22" goto UUID
if "%choice%"=="23" goto WEB
if "%choice%"=="24" goto LoopIP
if "%choice%"=="25" goto TKILL
if "%choice%"=="26" goto RPD
if "%choice%"=="27" goto sysinfo1
if "%choice%"=="28" goto GETTZ
if "%choice%"=="29" goto RTCLogs
if "%choice%"=="30" goto DiscUtil
if "%choice%"=="31" goto Findout
if "%choice%"=="00" exit
goto menu

:Drivers
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo ============================
echo      Installed Drivers
echo ============================
driverquery
echo.
pause
goto menu

:Disk
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo ====================================
echo    Disk Health Check (Takes Time)
echo ====================================
chkdsk
echo.
pause
goto menu

:Miner
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
cd MinerSearch
start MinerSearch.exe
pause
goto menu

:Scan
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
tasklist
pause
goto menu

:FlushDNS
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
ipconfig /FlushDNS
pause
goto menu

:SFC
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Starting Test...
sfc /ScanNow
pause
goto menu

:VEL
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
cd C:\Windows\Sys32
start eventvwr.exe
pause
goto menu

:SYSINFO
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
MSINFO32
echo Opening MSINFO32...
timeout /t 3 /nobreak >nul
goto menu

:structure
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
TREE
timeout /t 3 /nobreak >nul
goto menu

:speedtest
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo. 
cd C:\Program Files\WindowsApps\Ookla.SpeedtestbyOokla_1.18.194.0_x64__43tkc6nmykmb6
start Speedtest.exe
echo Executing Speedtest...
timeout /t 3 /nobreak >nul
goto menu

:XboxGamebar
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
TASKKILL.exe /F /IM GameBar.exe
timeout /t 1 /nobreak >nul
echo Proceeding to next task...
timeout /t 3 /nobreak >nul
goto XboxGamebar2

:XboxGamebar2
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
TASKKILL /F /IM GameBarFtServer.exe
timeout /t 1 /nobreak >nul
echo Complete!
timeout /t 3 /nobreak >nul
goto menu

:Banner
color 0C
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Current Date: %date%
echo Current Time: %time%
quser                                         
timeout /t 3 /nobreak >nul
goto menu

:WAI
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Your current Desktop Name and Username Is
echo.
WhoAmI
timeout /t 3 /nobreak >nul
goto menu

:Invoker
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
powershell -Command "Write-Output 'In Development!'"
timeout /t 3 /nobreak >nul
goto menu

:UUID
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Getting UUID...
for /f "delims=" %%i in ('powershell -NoLogo -NoProfile -Command "Get-CimInstance Win32_ComputerSystemProduct | Select-Object -ExpandProperty UUID"') do set "PC_UUID=%%i"
echo UUID: %PC_UUID%
timeout /t 5 /nobreak >nul
goto menu

:WEB
cls
start https://github.com/sh5sui
echo Opening...
timeout /t 1 /nobreak >nul
echo Completed!
timeout /t 3 /nobreak >nul
goto menu

:PingIP
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Pinging an IP or host network....
echo.
set /p ip=Enter Ip or Hostname to ping:
echo.
ping %ip%
echo.
pause
goto menu

:LoopIP
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Enter an IP to mass ping...
echo.
set /p MIP=Enter IP or Host to ping:
echo.
ping %MIP% -t
echo.
pause
goto menu

:TakeOwn
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Enter file location of a folder to take ownership of (Must not be owned by your usually by trusted advisor may need program to be ran as administrator.)
echo.
set /p Loc= Enter file location to take ownership of:
echo.
TAKEOWN /F "%Loc%" /R /D Y
echo.
pause
goto menu

:RTCLogs
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
setlocal
set "logdir=%AppData%\discord\logs"
for /f "delims=" %%f in ('dir /b /od "%logdir%\discord-webrtc_*"') do set "logfile=%%f"

echo Monitoring Discord RTC stats from: %logfile%
echo (Press Ctrl+C to stop)
echo.

:loop
cls
echo === RTC DEBUG (from %logfile%) ===
powershell -NoLogo -Command ^
  "Get-Content -Tail 20 -Path '%logdir%\%logfile%' | ForEach-Object { if ($_ -match 'jitter|packetLoss|bitrate|rtt|codec') { $_ } }"
timeout /t 3 >nul
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
    echo Would You Like To Continue? [Y/N]
    choice /c YN /n /m "@ "
if errorlevel 2 (
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
    echo Canceling continuous loop...
    timeout /t 2 /nobreak >nul
    echo Exiting to menu...
    timeout /t 1 /nobreak >nul
    goto menu
)
if errorlevel 1 (
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
    echo Continuing...
    timeout /t 2 /nobreak >nul
    goto loop
)

:TKILL
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Kills a running task.
echo.
set /p Tkill= Enter a task name to kill:
echo.
if "%Tkill%"=="" (
    echo No task name entered. Returning to menu...
    pause
    goto menu
)
TaskKill /F /IM "%Tkill%"
if errorlevel 1 (
    echo Failed to kill "%Tkill%". Make sure the process name is correct.
) else (
    echo "%Tkill%" has been terminated successfully.
)
echo.
pause
goto menu

:DiscUtil
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Enter discord webhook URL...
set /p WID= Enter your webhook WEBHOOK_ID:
set /p WEBTOKEN= Enter your webhooks token:
set "URL=https://discord.com/api/webhooks/%WID%/%WEBTOKEN%"

cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
set /p Msg= Enter the message you would like to send:
echo Attempting to send...
timeout /t 2 /nobreak >nul
echo Sending...
timeout /t 1 /nobreak >nul
curl -H "Content-Type: application/json" ^
     -X POST ^
     -d "{\"content\": \"%Msg%\"}" ^
     "%URL%"

echo Sent!
timeout /t 1 /nobreak >nul

pause
goto menu

:RTCSaver
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.

set "RTCFolder=%logsdir%"

set "logsdir=%AppData%\discord\logs"
for /f "delims=" %%f in ('dir /b /od "%logsdir%\discord-discord-webrtc_*"') do set "logfile=%%f"

set "sourceBackup=%RTCFolder%"
xcopy "%sourceBackup%\*" "%RTCFolder%\" /E /I /H /Y >nul

pause
goto menu

:WRPC
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
if not exist "C:\Program Files\WinRAR" (
    echo WinRAR is not installed on your system!
    pause
    goto menu
)

set /p archice="Enter Archive: "
if not exist "%archive%" (
    echo.
)

set /p WordList="Enter WordList: "
if not exist "%WordList%" (
    echo WordList not found!
    pause
    goto menu
)

for /f %%a in (%WordList%) do (
    set pass=%%a
    call :attempt
)
echo.
echo Password not found in password list.
pause
goto menu

:Findout
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo You like the app?

choice /c YN /n /m "@ "
if errorlevel 2 (
    echo Okay :C
    timeout /t 2 /nobreak >nul
    echo That was kinda mean...
    timeout /t 3 /nobreak >nul
    echo I got a call from your power company...
    timeout /t 3 /nobreak >nul
    echo The news is bad...
    timeout /t 3 /nobreak >nul
    echo They said it's time to say goodbye...
    timeout /t 3 /nobreak >nul
    echo Sorry not sorry
    timeout /t 2 /nobreak >nul
    powershell -Command "Stop-Computer"
    pause
    goto menu
)
if errorlevel 1 (
    echo Yay :3
    timeout /t 1 /nobreak >nul
    echo Thank you
    timeout /t 2 /nobreak >nul
    goto menu
)

:attempt
"C:\Program Files\WinRAR\WinRAR.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Attempting to crack...
echo.
if /I %errorlevel% EQU 0 (
    echo File Cracked!: %pass%
    pause
    goto menu
)

:RPD
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
set /p host="Host>> "
set /p user="Username>> "
set /p pass="Password>> "
cmdkey /add:%host% /user:%user% /pass:%pass% >nul
mstsc /v:%host%
cmdkey /delete:%host% >nul
pause
goto menu

:WPOPC
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Searching for saved WiFi passwords on your computer...
timeout /t 2 /nobreak >nul
echo Saved network names and passwords:
timeout /t 1 /nobreak >nul
echo.

setlocal enabledelayedexpansion
set found=0

for /f "tokens=2 delims=:" %%A in ('netsh wlan show profiles ^| findstr "All User Profile"') do (
    set "wifi=%%A"
    set "wifi=!wifi:~1!"   :: trim leading space
    set /a found+=1
    for /f "tokens=2 delims=:" %%B in ('netsh wlan show profile name^="!wifi!" key^=clear ^| findstr "Key Content"') do (
        set "pass=%%B"
        echo Wi-Fi: !wifi! - Password: !pass:~1!
    )
)

if !found! equ 0 (
    echo No saved Wi-Fi networks found.
)

timeout /t 5 /nobreak >nul
endlocal
goto menu

:Spicetify
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo Killing spotify...
Tskill Spotify
timeout /t 1 /nobreak >nul
echo Installing Spicetify...
timeout /t 1 /nobreak >nul
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
powershell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/cli/main/install.ps1 | iex"
if errorlevel 1 (
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo Spicetify successfully installed!
timeout /t 1 /nobreak >nul
pause
goto menu
)
if errorlevel 2 (
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo Spicetify has not been installed and has had a fatal error. Please try again.
timeout /t 1 /nobreak >nul
pause
goto menu
)

:sysinfo1
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
powershell -Command "Write-Output 'Executing...'"
powershell -Command "Get-ComputerInfo"
pause
goto menu

:InfoAbout
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
echo This batch was made by q3tg !
timeout /t 1 /nobreak >nul
echo This is a multi purpose batch file or a multi tool for short. It's made for quality of life and a small project for me just to have something to do when learning batch.
timeout /t 1 /nobreak >nul
echo Most features have a description but if you want a more detailed one I will udpate the readme on the github page
timeout /t 1 /nobreak >nul
echo Would you like to open the github page to the readme? [Y/N]
    choice /c YN /n /m "@ "
if errorlevel 2 (
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
    echo Proceeding to menu...
    timeout /t 2 /nobreak >nul
    goto menu
)
if errorlevel 1 (
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
    echo Redirecting to the github readme...
    timeout /t 2 /nobreak >nul
    start Https://github.com/sh5sui/Reaper
    echo Proceeding to menu...
    timeout /t 2 /nobreak >nul
    goto menu
)
pause
goto menu

:DCINV
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
powershell -Command "Set-Clipboard 'https://discord.gg/X2eZGxPcpj'"
echo Copying discord invite link...
timeout /t 1 /nobreak >nul
echo.
echo Discord link copied to clipboard!
timeout /t 3 /nobreak >nul
goto menu

:GETTZ
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░     
echo.
echo.
echo.
powershell -Command "Get-Timezone"
pause
goto menu

:WiFiInter
cls
color 0C
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░   
echo.
echo.
echo Made by q3tg :3
echo.
echo.
echo  ╔════════════════════════════════════════╗
echo  ║  1. Go To Main Menu                    ║
echo  ║  2. Remote Shutdown Dialog             ║
echo  ║  3. Find All Local IP's On Internet    ║
echo  ║  4. Send Message To PC's               ║
echo  ║  00. Exit                              ║
echo  ╚════════════════════════════════════════╝
echo %USERNAME% - Reaper
set /p choose=@
if "%choose%"=="1" goto menu
if "%choose%"=="2" goto shutdowndia
if "%choose%"=="3" goto IPs
if "%choose%"=="4" goto SMGPC
if "%choose%"=="00" exit
goto WiFiInter

:shutdowndia
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░   
echo.
echo.
echo.
echo Opening RSD...
timeout /t 2 /nobreak >nul
shutdown -i
timeout /t 5 /nobreak >nul
goto WiFiInter

:IPs
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░   
echo.
echo.
echo.
echo Collecting IP's...
timeout /t 2 /nobreak >nul
arp -a
pause
goto WiFiInter

:SMGPC
cls
echo  ██▀███  ▓█████ ▄▄▄       ██▓███  ▓█████  ██▀███  
echo ▓██ ▒ ██▒▓█   ▀▒████▄    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
echo ▓██ ░▄█ ▒▒███  ▒██  ▀█▄  ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
echo ▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██ ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
echo ░██▓ ▒██▒░▒████▒▓█   ▓██▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
echo ░ ▒▓ ░▒▓░░░ ▒░ ░▒▒   ▓▒█░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
echo   ░▒ ░ ▒░ ░ ░  ░ ▒   ▒▒ ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
echo   ░░   ░    ░    ░   ▒   ░░          ░     ░░   ░ 
echo    ░        ░  ░     ░  ░            ░  ░   ░   
echo.
echo.
echo.
echo Connecting...
timeout /t 3 /nobreak >nul
echo Type your message to send to all computers.
set /p MSGTS=@
msg * "%MSGTS%"
timeout /t 1 /nobreak >nul
pause
goto WiFiInter