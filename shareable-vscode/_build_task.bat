@echo off
REM Written to be used from vscode via tasks.json, called from the directory where CMakeLists.txt lives
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"


cd build_win32_debug
cmake --build .
