Write-Host "
Shutdown Script v0.1
===============================================
Hi $env:UserName
Gonna close all the apps and shutdown $env:ComputerName

"
Start-Sleep 5

$Apps = Get-Process -Name Brave, Discord , Spotify, Origin, Docker

foreach ($Application in $Apps) {
    Stop-Process $Apps -Verbose
}

Write-Host "Close your most used Applications"


shutdown /s 