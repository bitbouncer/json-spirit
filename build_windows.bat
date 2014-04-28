@ECHO OFF

rmdir /S /Q bin
rmdir /S /Q lib
rmdir /S /Q win_build32
rmdir /S /Q win_build64

set BOOST_ROOT=%CD%\..\boost_1_55_0

ECHO ===== CMake for 64-bit ======
call "C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\vcvarsall.bat" amd64
mkdir win_build64 
cd win_build64
del CMakeCache.txt


cmake -G "Visual Studio 12 Win64" ..
devenv ALL_BUILD.vcxproj /Build "Debug|x64"
devenv ALL_BUILD.vcxproj /Build "Release|x64"
cd ..


