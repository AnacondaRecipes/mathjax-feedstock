@echo off
REM script_dir == [env_root]\Scripts\
set "script_dir=%~dp0"
tree %script_dir
echo %script_dir:~0,-9%\Library\lib\mathjax\es5%
set "test= %script_dir:~0,-9%\Library\lib\mathjax\es5%"
tree %test
set "mathjax=%script_dir:~0,-9%\Library\lib\mathjax\es5\"
if exist "%mathjax%" (
    echo %mathjax%
) else (
    echo Error: "%mathjax%" dir was not found. 1>&2
)
