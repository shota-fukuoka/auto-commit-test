@echo off
setlocal disabledelayedexpansion
set TEST=%1
if not defined TEST goto :eof
set LINE=
for /f "delims=" %%0 in ('find /n /v "" ^< %1 ') do (
if not defined LINE call > %1
set LINE=%%0
setlocal enabledelayedexpansion
set LINE=%date% %time%
>> %1 echo,!LINE:*]=!
endlocal
)