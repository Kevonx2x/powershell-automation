function Write-Log {
    param (
        [string]$Message
    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logLine = "[$timestamp] $Message"

    $logPath = "$PSScriptRoot\Logs"
    if (-not (Test-Path $logPath)) {
        New-Item -Path $logPath -ItemType Directory | Out-Null
    }

    $logFile = "$logPath\TJ_Log_{0}.txt" -f (Get-Date -Format "yyyy-MM-dd")
    Add-Content -Path $logFile -Value $logLine
}
