echo off
setlocal

rmdir /s /q _build_win64_debug
mkdir _build_win64_debug
cd _build_win64_debug

cmake .. -G "Visual Studio 14 2015 Win64"
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --target all_build --config Debug
cd ...