@echo off
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"

cd ..
if EXIST build_win32_debug rmdir build_win32_debug /s /q
mkdir build_win32_debug
cd build_win32_debug
cmake .. -G Ninja -D CMAKE_BUILD_TYPE=Debug
cd ../\.vscode

call _build_needsVars__debug.bat

cmd /k
