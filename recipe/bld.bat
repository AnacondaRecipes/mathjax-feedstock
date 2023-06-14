set "mathjax=%LIBRARY_LIB%\mathjax"
mkdir "%mathjax%"
if errorlevel 1 exit 1

del /q "*.md" ".gitignore" ".travis.yml" "bower.json" "composer.json" "latest.js" "package.json" "metadata_conda_debug.yaml"
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

