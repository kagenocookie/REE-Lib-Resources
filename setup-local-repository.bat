set "dir=%cd:\=/%/"
@echo off
set "sourceFile=resource-info.json"
set "outputFile=local-resource-info.json"
(for /f "delims=" %%i in (%sourceFile%) do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    set "line=!line:https://raw.githubusercontent.com/kagenocookie/REE-Lib-Resources/refs/heads/master/=%dir%!"
    echo(!line!
    endlocal
))>"%outputFile%"

