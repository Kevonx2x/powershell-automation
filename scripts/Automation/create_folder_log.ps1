$folderName = "MyFirstAutomation"
$path = "C:\Users\turon\OneDrive\Desktop\$folderName"

if (!(Test-Path $path)) {
    New-Item -Path $path -ItemType Directory
}

$logFile = "$path\log.txt"
$date = Get-Date
Add-Content -Path $logFile -Value "Script ran at: $date"
