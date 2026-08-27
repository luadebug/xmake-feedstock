@echo off
setlocal
set "BASEDIR=%~dp0"
if exist "%BASEDIR%..\share\xmake\xmake.exe" (
    set "XMAKE_EXE=%BASEDIR%..\share\xmake\xmake.exe"
) else if exist "%BASEDIR%..\..\share\xmake\xmake.exe" (
    set "XMAKE_EXE=%BASEDIR%..\..\share\xmake\xmake.exe"
) else if exist "%BASEDIR%xmake.exe" (
    set "XMAKE_EXE=%BASEDIR%xmake.exe"
) else (
    echo Error: xmake.exe not found in "%BASEDIR%" 1>&2
    exit /b 1
)
"%XMAKE_EXE%" %*
endlocal
