echo off
cls
echo WIfi Password Viewer
echo.
set /P hg="Please Enter Your Wifi_Name: "
cls
netsh wlan show profiles "%hg%" key=clear
if %ERRORLEVEL%==1 (
cls
echo Sorry, The Wifi %hg% Is Not Found On Your System
pause
) else (
cls
netsh wlan show profiles "%hg%" key=clear
pause
)

