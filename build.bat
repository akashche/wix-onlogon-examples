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
popd || exit /b 1

rem test02
pushd "%SCRIPT_DIR%work" || exit /b 1
..\wix\bin\candle.exe ..\test02.wxs || exit /b 1
..\wix\bin\light.exe -ext WixUIExtension -ext WixUtilExtension -sw1076 test02.wixobj || exit /b 1
popd || exit /b 1

rem test03
pushd "%SCRIPT_DIR%work" || exit /b 1
..\wix\bin\candle.exe ..\test03.wxs || exit /b 1
..\wix\bin\light.exe -ext WixUIExtension -ext WixUtilExtension -sw1076 test03.wixobj || exit /b 1
popd || exit /b 1

rem test04
pushd "%SCRIPT_DIR%work" || exit /b 1
..\wix\bin\candle.exe ..\test04.wxs || exit /b 1
..\wix\bin\light.exe -ext WixUIExtension -ext WixUtilExtension -sw1076 test04.wixobj || exit /b 1
popd || exit /b 1

rem test05
pushd "%SCRIPT_DIR%work" || exit /b 1
..\wix\bin\candle.exe ..\test05.wxs || exit /b 1
..\wix\bin\light.exe -ext WixUIExtension -ext WixUtilExtension -sw1076 test05.wixobj || exit /b 1
popd || exit /b 1

rem test06
pushd "%SCRIPT_DIR%work" || exit /b 1
..\wix\bin\candle.exe ..\test06.wxs || exit /b 1
..\wix\bin\light.exe -ext WixUIExtension -ext WixUtilExtension -sw1076 test06.wixobj || exit /b 1
popd || exit /b 1

echo EXIT_BUILD_SUCCESS
