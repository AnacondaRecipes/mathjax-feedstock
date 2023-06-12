dir /B

set "mathjax=%LIBRARY_LIB%\mathjax"
mkdir "%mathjax%"
echo "ERRORLEVEL: %ERRORLEVEL%"
if errorlevel 1 exit 1

move config "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

move docs "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

move extensions "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

move fonts "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

move jax "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

move localization "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

move test "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

move unpacked "%mathjax%\"
echo "ERRORLEVEL: %ERRORLEVEL%"
if %ERRORLEVEL% GEQ 8 exit 1
REM if errorlevel 1 exit 1

del /q "*.md" ".gitignore" ".travis.yml" "bower.json" "composer.json" "latest.js" "package.json"
echo "ERRORLEVEL: %ERRORLEVEL%"
if errorlevel 1 exit 1

xcopy /s "%cd%" "%mathjax%"
echo "ERRORLEVEL: %ERRORLEVEL%"
if errorlevel 1 exit 1

del /q "%mathjax%\*.bat" "%mathjax%\LICENSE"
echo "ERRORLEVEL: %ERRORLEVEL%"
if errorlevel 1 exit 1

if not exist "%SCRIPTS%" mkdir "%SCRIPTS%"
if errorlevel 1 exit 1

copy "%RECIPE_DIR%\mathjax-path.bat" "%SCRIPTS%\"
if errorlevel 1 exit 1
copy "%RECIPE_DIR%\mathjax-path" "%SCRIPTS%\"
if errorlevel 1 exit 1
