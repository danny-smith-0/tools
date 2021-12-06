@echo off
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"
cd ..
if EXIST build_win32_release rmdir build_win32_release /s /q
mkdir build_win32_release
cd build_win32_release
cmake .. -G Ninja -D CMAKE_BUILD_TYPE=Release
cd ../\.vscode
cmd /k
