setlocal enabledelayedexpansion

REM @echo off
REM script_dir == [env_root]\Scripts\
REM set "script_dir=%~dp0"
REM set "mathjax=%script_dir:~0,-9%\Library\lib\mathjax\es5\"
set "mathjax=%LIBRARY_LIB%\mathjax\es5\"
if exist "%mathjax%" (
    echo %mathjax%
) else (
    echo Error: "%mathjax%" dir was not found. 1>&2
)
