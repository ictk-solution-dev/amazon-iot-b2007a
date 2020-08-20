@echo off
rem flashtool : MTK, coda, v2.9.0 
rem .\coda.exe .\flash_download.cfg --UART COM4 -f -d --reset
setlocal

set comport=COM3
if exist %1 set comport=%1

rem tasklist | find "coda.exe" > NUL
rem if NOT ERRORLEVEL 1 @( taskkill /im /f coda.exe )


set pathexe=C:\Desktop\IoT_Flash_Tool_Windows\coda.exe 
set param1=C:\Desktop\IoT_Flash_Tool_Windows\flash_download.cfg --UART %comport% -f -d --reset

echo on
echo press...**************
%pathexe% %param1%

endlocal
exit /b 0
