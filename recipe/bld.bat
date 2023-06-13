set "mathjax=%LIBRARY_LIB%\mathjax"
mkdir "%mathjax%"
if errorlevel 1 exit 1

move config "%mathjax%\"
if errorlevel 1 exit 1

move docs "%mathjax%\"
if errorlevel 1 exit 1

move extensions "%mathjax%\"
if errorlevel 1 exit 1

robocopy "%cd%\fonts" "%mathjax%\fonts" /E
REM move fonts "%mathjax%\"
if %ERRORLEVEL% GEQ 2 exit 1
REM if errorlevel 1 exit 1
rmdir /S /Q "%cd%\fonts"

move jax "%mathjax%\"
if errorlevel 1 exit 1

move localization "%mathjax%\"
if errorlevel 1 exit 1

move test "%mathjax%\"
if errorlevel 1 exit 1

move unpacked "%mathjax%\"
if errorlevel 1 exit 1

del /q "*.md" ".gitignore" ".travis.yml" "bower.json" "composer.json" "latest.js" "package.json"
if errorlevel 1 exit 1

xcopy /s "%cd%" "%mathjax%"
if errorlevel 1 exit 1

del /q "%mathjax%\*.bat" "%mathjax%\LICENSE"
if errorlevel 1 exit 1

if not exist "%SCRIPTS%" mkdir "%SCRIPTS%"
if errorlevel 1 exit 1

copy "%RECIPE_DIR%\mathjax-path.bat" "%SCRIPTS%\"
if errorlevel 1 exit 1
copy "%RECIPE_DIR%\mathjax-path" "%SCRIPTS%\"
if errorlevel 1 exit 1
