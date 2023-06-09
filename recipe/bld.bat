set "mathjax=%LIBRARY_LIB%\mathjax"
mkdir "%mathjax%" || exit 1

REM move config "%mathjax%\" || exit 1
robocopy "%cd%\config" "%mathjax%\config" /E || exit 1
REM move docs "%mathjax%\" || exit 1
robocopy "%cd%\docs" "%mathjax%\docs" /E || exit 1
REM move extensions "%mathjax%\" || exit 1
robocopy "%cd%\extensions" "%mathjax%\extensions" /E || exit 1
REM move fonts "%mathjax%\" || exit 1
robocopy "%cd%\fonts" "%mathjax%\fonts" /E || exit 1
REM move jax "%mathjax%\" || exit 1
robocopy "%cd%\jax" "%mathjax%\jax" /E || exit 1
REM move localization "%mathjax%\" || exit 1
robocopy "%cd%\localization" "%mathjax%\lacalization" /E || exit 1
REM move test "%mathjax%\" || exit 1
robocopy "%cd%\test" "%mathjax%\test" /E || exit 1
REM move unpacked "%mathjax%\" || exit 1
robocopy "%cd%\unpacked" "%mathjax%\unpacked" /E || exit 1

del /q "*.md" ".gitignore" ".travis.yml" "bower.json" "composer.json" "latest.js" "package.json" || exit 1
xcopy /s "%cd%" "%mathjax%" || exit 1
del /q "%mathjax%\*.bat" "%mathjax%\LICENSE" || exit 1

if not exist "%SCRIPTS%" mkdir "%SCRIPTS%" || exit 1
copy "%RECIPE_DIR%\mathjax-path.bat" "%SCRIPTS%\" || exit 1
copy "%RECIPE_DIR%\mathjax-path" "%SCRIPTS%\" || exit 1
