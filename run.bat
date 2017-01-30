@echo on

rem shortcuts from script directory
set BAD_SLASH_SCRIPT_DIR=%~dp0
set SCRIPT_DIR=%BAD_SLASH_SCRIPT_DIR:\=/%

rem test01
rem pushd "%SCRIPT_DIR%work" || exit /b 1
rem msiexec /q /i test01.msi /l*v test01_log.txt || exit /b 1
rem msiexec /q /x test01.msi || exit /b 1
rem popd || exit /b 1

rem test02
rem pushd "%SCRIPT_DIR%work" || exit /b 1
rem msiexec /q /i test02.msi /l*v test02_log.txt || exit /b 1
rem msiexec /q /x test02.msi || exit /b 1
rem popd || exit /b 1

rem test03
rem pushd "%SCRIPT_DIR%work" || exit /b 1
rem msiexec /q /i test03.msi /l*v test03_log.txt || exit /b 1
rem msiexec /q /x test03.msi || exit /b 1
rem popd || exit /b 1

rem test04
rem pushd "%SCRIPT_DIR%work" || exit /b 1
rem msiexec /q /i test04.msi /l*v test04_log.txt || exit /b 1
rem msiexec /q /x test04.msi || exit /b 1
rem popd || exit /b 1

rem test05
rem pushd "%SCRIPT_DIR%work" || exit /b 1
rem msiexec /q /i test05.msi /l*v test05_log.txt || exit /b 1
rem msiexec /q /x test05.msi || exit /b 1
rem popd || exit /b 1

rem test06
pushd "%SCRIPT_DIR%work" || exit /b 1
msiexec /q /i test06.msi /l*v test06_log.txt || exit /b 1
msiexec /q /x test06.msi || exit /b 1
popd || exit /b 1

echo EXIT_RUN_SUCCESS
