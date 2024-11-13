::Name: BleachBit Overwrite
::Creator: Christine Bettencourt
::Script Language: Command Prompt
::Created: 11/13/2024
::Last Edited: 11/13/2024

@echo off

::Change Console Encoding
chcp 65001

::Set Pythonioencoding Environment Variable
set Pythonioencoding=UTF-8

::Change to the Bleachbit installation directory
cd "C:\Program Files (x86)\BleachBit"

::Execute Bleachbit console overwrite with the specified  operations
bleachbit_console.exe -overwrite adobe_reader.* -s
bleachbit_console.exe -overwrite deepscan.* -s
bleachbit_console.exe -overwrite google_chrome.* -s 
bleachbit_console.exe -overwrite microsoft_edge.* -s
bleachbit_console.exe -overwrite microsoft_office.* -s
bleachbit_console.exe -overwrite paint.* -s
bleachbit_console.exe -overwrite system.* -s
bleachbit_console.exe -overwrite windows_defender.* -s 
bleachbit_console.exe -overwrite windows_media_player.* -s
bleachbit_console.exe -overwrite windows_explorer.* -s
bleachbit_console.exe -overwrite wordpad.* -s

pause