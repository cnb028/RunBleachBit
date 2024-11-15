::Name: BleachBit List
::Creator: Christine Bettencourt
::Script Language: Command Prompt
::Created: 11/8/2024
::Last Edited: 11/14/2024

@echo off
export LANG=C. UFT-8

::Check Console Encoding
chcp

::Change Console Encoding
chcp 65001

::Set Pythonioencoding Environment Variable
::set Pythonioencoding=UTF-8

::Change to the Bleachbit installation directory
cd "C:\Program Files (x86)\BleachBit"

::Execute Bleachbit with the specificed operations

bleachbit_console.exe -l

pause