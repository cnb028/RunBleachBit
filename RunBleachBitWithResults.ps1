# Function to check if the script is running with admin privileges
function Is-Admin {
    $IsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
    return $IsAdmin
}

# Check for Admin Privileges
if (-not (Is-Admin)) {
    Write-Host "This script requires administrator privileges. Please run it as an administrator." -ForegroundColor Red
    exit
}

# Change to the BleachBit installation directory
Set-Location "C:\Program Files (x86)\BleachBit"

# Execute BleachBit with the specified options and capture the output
$output = Start-Process -FilePath "bleachbit_console.exe" `
                         -ArgumentList "-c adobe_reader.* deepscan.* discord.* filezilla.* firefox.* google_chrome.* google_toolbar.* microsoft_office.* paint.* screenlets.* system.* winamp.* windows_defender.* windows_explorer.* windows_media_player.* winrar.* winzip.* wordpad.* zoom.*" `
                         -NoNewWindow -RedirectStandardOutput "output.txt" -Wait

# Read the output from the file
$outputResults = Get-Content $output

# Display the results
Write-Host "BleachBit Results:`n"
Write-Host $outputResults
