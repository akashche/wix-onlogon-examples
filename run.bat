@echo on

rem shortcuts from script directory
set BAD_SLASH_SCRIPT_DIR=%~dp0
set SCRIPT_DIR=%BAD_SLASH_SCRIPT_DIR:\=/%

rem prepare work dir
rd /s /q "%SCRIPT_DIR%work"
if exist "%SCRIPT_DIR%work" exit /b 1
mkdir "%SCRIPT_DIR%work" || exit /b 1

rem test01
pushd "%SCRIPT_DIR%work" || exit /b 1
..\wix\bin\candle.exe ..\test01.wxs || exit /b 1
..\wix\bin\light.exe -ext WixUIExtension -ext WixUtilExtension -sw1076 test01.wixobj || exit /b 1
msiexec /q /i test01.msi /l*v test01_log.txt || exit /b 1
msiexec /q /x test01.msi || exit /b 1
popd || exit /b 1

rem test02
pushd "%SCRIPT_DIR%work" || exit /b 1
..\wix\bin\candle.exe ..\test02.wxs || exit /b 1
..\wix\bin\light.exe -ext WixUIExtension -ext WixUtilExtension -sw1076 test02.wixobj || exit /b 1
msiexec /q /i test02.msi /l*v test02_log.txt || exit /b 1
msiexec /q /x test02.msi || exit /b 1
popd || exit /b 1

echo EXIT_SUCCESS
