@echo off

robocopy . "%LIBRARY_LIB%\mathjax" /E /XD .github /XF .gitignore build_env_setup.bat build_env_setup.sh conda_build.bat conda_build.sh metadata_conda_debug.yaml
if %ERRORLEVEL% GEQ 8 exit /B 1

if not exist "%SCRIPTS%" mkdir "%SCRIPTS%"
copy /Y "%RECIPE_DIR%\mathjax-path.bat" "%SCRIPTS%\"
if errorlevel 1 exit /B 1
copy /Y "%RECIPE_DIR%\mathjax-path" "%SCRIPTS%\"
if errorlevel 1 exit /B 1
