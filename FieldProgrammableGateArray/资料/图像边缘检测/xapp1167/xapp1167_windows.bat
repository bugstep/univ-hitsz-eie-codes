@echo off
set VIVADO_HLS_HOME=C:\Xilinx\Vivado_HLS\2014.4
set VIVADO_HOME=C:\Xilinx\Vivado\2014.4

call %VIVADO_HOME%\settings64.bat
PATH=%VIVADO_HLS_HOME%\bin;%VIVADO_HLS_HOME%\msys\bin;%PATH%

set AUTOESL_HOME=%VIVADO_HLS_HOME%

echo =================================================
echo == Vivado HLS Video Library Command Prompt 
echo == Available commands:
echo == vivado_hls,apcc,gcc,g++,make,etc.
echo =================================================
echo == Note:  Vivado HLS 2014.4 default location:
echo ==     C:\Xilinx\Vivado_HLS\2014.4
echo ==        Vivado 2014.4 default location:
echo ==     C:\Xilinx\Vivado\2014.4
echo == If your install location is different from
echo == above, please modify line 2 and/or 3 of this 
echo == batch file with your install location.
echo =================================================
echo == Run 'make all' to rebuild the design and
echo == generate sd_image.
echo == Run 'make help' for more information.
echo =================================================

cd %~dp0\apps\sobel

if not "x%PROCESSOR_ARCHITECTURE%" == "xAMD64" goto _NotX64
set COMSPEC=%WINDIR%\SysWOW64\cmd.exe
%COMSPEC% 
goto EOF

:_NotX64
set COMSPEC=%WINDIR%\System32\cmd.exe
rem %COMSPEC% /c %0 %1 %2 %3 %4 %5 %6 %7 %8 %9 
%COMSPEC% 
 

