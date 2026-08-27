@echo off
setlocal
set "BASEDIR=%~dp0"
if exist "%BASEDIR%xmake.cmd" (
    set "XMAKE_CMD=%BASEDIR%xmake.cmd"
) else if exist "%BASEDIR%..\..\bin\xmake.cmd" (
    set "XMAKE_CMD=%BASEDIR%..\..\bin\xmake.cmd"
) else (
    set "XMAKE_CMD=xmake"
)
call "%XMAKE_CMD%" lua private.xrepo %*
endlocal
