@echo off
REM Written to be used from vscode via tasks.json, called from the directory where CMakeLists.txt lives
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"
if EXIST build_win32_debug rmdir build_win32_debug /s /q
mkdir build_win32_debug
cd build_win32_debug
cmake .. -G Ninja -D CMAKE_BUILD_TYPE=Debug
