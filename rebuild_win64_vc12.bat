@ECHO OFF

rmdir /S /Q bin\x64
rmdir /S /Q lib\x64
rmdir /S /Q win_build64

REM set BOOST_ROOT=%CD%\..\boost_1_57_0

ECHO ===== CMake for 64-bit ======
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64
mkdir win_build64 
cd win_build64

cmake -G "Visual Studio 12 Win64" ..
msbuild ALL_BUILD.vcxproj /p:Configuration=Debug /p:Platform=x64
msbuild ALL_BUILD.vcxproj /p:Configuration=Release /p:Platform=x64
cd ..


