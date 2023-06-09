set "mathjax=%LIBRARY_LIB%\mathjax"
mkdir "%mathjax%" || exit 1

REM move config "%mathjax%\" || exit 1
robocopy "%cd%\config" "%mathjax%\config" /E || exit 1
move docs "%mathjax%\" || exit 1
move extensions "%mathjax%\" || exit 1
move fonts "%mathjax%\" || exit 1
move jax "%mathjax%\" || exit 1
move localization "%mathjax%\" || exit 1
move test "%mathjax%\" || exit 1
REM move unpacked "%mathjax%\" || exit 1
robocopy "%cd%\unpacked" "%mathjax%\unpacked" /E || exit 1

del /q "*.md" ".gitignore" ".travis.yml" "bower.json" "composer.json" "latest.js" "package.json" || exit 1
xcopy /s "%cd%" "%mathjax%" || exit 1
del /q "%mathjax%\*.bat" "%mathjax%\LICENSE" || exit 1

if not exist "%SCRIPTS%" mkdir "%SCRIPTS%" || exit 1
copy "%RECIPE_DIR%\mathjax-path.bat" "%SCRIPTS%\" || exit 1
copy "%RECIPE_DIR%\mathjax-path" "%SCRIPTS%\" || exit 1
