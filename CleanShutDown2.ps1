$list = @('brave', 'Discord', 'Spotify', 'Origin')

Write-Host "
Shutdown Script v0.1
===============================================
Hi $env:UserName
Closing all the apps and shutdown $env:ComputerName

░██████╗██╗░░██╗██╗░░░██╗████████╗██████╗░░█████╗░░██╗░░░░░░░██╗███╗░░██╗
██╔════╝██║░░██║██║░░░██║╚══██╔══╝██╔══██╗██╔══██╗░██║░░██╗░░██║████╗░██║
╚█████╗░███████║██║░░░██║░░░██║░░░██║░░██║██║░░██║░╚██╗████╗██╔╝██╔██╗██║
░╚═══██╗██╔══██║██║░░░██║░░░██║░░░██║░░██║██║░░██║░░████╔═████║░██║╚████║
██████╔╝██║░░██║╚██████╔╝░░░██║░░░██████╔╝╚█████╔╝░░╚██╔╝░╚██╔╝░██║░╚███║
╚═════╝░╚═╝░░╚═╝░╚═════╝░░░░╚═╝░░░╚═════╝░░╚════╝░░░░╚═╝░░░╚═╝░░╚═╝░░╚══╝
v.0.2
"
#Just giving the end-user a chance to read the print 
Start-Sleep 5

#Add the name of the applications you usually don't close after -Name


#This will go through each process and stop them 
foreach ($Application in $list) {
 Get-Process $Application
}

if($Application -isnot [System.ServiceProcess.ServiceController])
   {
     foreach ($Application in $list) {
     Stop-Process -Name $Application
   }
   }
   else
   {
      Write-Host "Nothing to close"
   }

Start-Sleep 5 

Write-Host "Close your most used Applications"

# PC will shutdown after a min
shutdown /t  100 /s