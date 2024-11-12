::Name: BleachBit List
::Creator: Christine Bettencourt
::Script Language: Command Prompt
::Created: 11/8/2024
::Action One Test Results: Pulls List but gets Runtime Error

@echo off

::Change Console Encoding
chcp 65001

::Set Pythonioencoding Environment Variable
set Pythonioencoding=UTF-8

::Change to the Bleachbit installation directory
cd "C:\Program Files (x86)\BleachBit"

::Execute Bleachbit with the specificed operations

bleachbit_console.exe -l