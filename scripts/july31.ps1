# Turn on debugging
Set-PSDebug -Trace 1

Try {
    # 1. Create "Backup" folder if it doesn't exist
    $backupPath = "Backup"
    if (-not (Test-Path $backupPath)) {
        New-Item -Path $backupPath -ItemType Directory
    }

    # 2. Save list of current processes to a text file
    $procFile = "running_procs.txt"
    Get-Process | Out-File $procFile

    # 3. Move the file to the backup folder 
    Move-Item -Path "wrong_file_name.txt" -Destination $backupPath

    # 4. Show current date and time
    $now = Get-Date
    Write-Host "Current Time: $now"
    
    # 5. Confirm script success
    Write-Host "Done running the script!"
}
Catch {
    Write-Host "Something went wrong please try again: $($_.Exception.Message)"
}
Finally {
    Write-Host "Execution completed."
}
