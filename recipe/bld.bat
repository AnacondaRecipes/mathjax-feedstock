set "mathjax=%LIBRARY_LIB%\mathjax"
mkdir "%mathjax%" || exit 1

move config "%mathjax%\"
REM robocopy "%cd%\config" "%mathjax%\config" /E
if %ERRORLEVEL% GEQ 8 exit 1
move docs "%mathjax%\"
REM robocopy "%cd%\docs" "%mathjax%\docs" /E
if %ERRORLEVEL% GEQ 8 exit 1
move extensions "%mathjax%\"
REM robocopy "%cd%\extensions" "%mathjax%\extensions" /E
if %ERRORLEVEL% GEQ 8 exit 1
move fonts "%mathjax%\"
REM robocopy "%cd%\fonts" "%mathjax%\fonts" /E
if %ERRORLEVEL% GEQ 8 exit 1
move jax "%mathjax%\"
REM robocopy "%cd%\jax" "%mathjax%\jax" /E
if %ERRORLEVEL% GEQ 8 exit 1
move localization "%mathjax%\"
REM robocopy "%cd%\localization" "%mathjax%\lacalization" /E
if %ERRORLEVEL% GEQ 8 exit 1
move test "%mathjax%\"
REM robocopy "%cd%\test" "%mathjax%\test" /E
if %ERRORLEVEL% GEQ 8 exit 1
move unpacked "%mathjax%\"
REM robocopy "%cd%\unpacked" "%mathjax%\unpacked" /E
if %ERRORLEVEL% GEQ 8 exit 1

del /q "*.md" ".gitignore" ".travis.yml" "bower.json" "composer.json" "latest.js" "package.json" || exit 1
xcopy /s "%cd%" "%mathjax%" || exit 1
del /q "%mathjax%\*.bat" "%mathjax%\LICENSE" || exit 1

if not exist "%SCRIPTS%" mkdir "%SCRIPTS%" || exit 1
copy "%RECIPE_DIR%\mathjax-path.bat" "%SCRIPTS%\" || exit 1
copy "%RECIPE_DIR%\mathjax-path" "%SCRIPTS%\" || exit 1
