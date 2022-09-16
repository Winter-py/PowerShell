Write-Host "
Shutdown Script v0.1
===============================================
Hi $env:UserName
Closing all the apps and shutdown $env:ComputerName

"
#Just giving the end-user a chance to read the print 
Start-Sleep 5

#Add the name of the applications you usually don't close after -Name

$Apps = Get-Process -Name Brave, Discord , Spotify, Origin, Docker

#This will go through each process and stop them 
foreach ($Application in $Apps) {
    Stop-Process $Apps -Verbose
}

Start-Sleep 5 

Write-Host "Close your most used Applications"

# PC will shutdown after a min
shutdown /s 