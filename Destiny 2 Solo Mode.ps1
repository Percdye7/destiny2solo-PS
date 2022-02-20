if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

New-NetFirewallRule -DisplayName "Destiny2-Solo-1" -Direction Outbound -RemotePort 27000-27100 -Protocol TCP -Action Block
New-NetFirewallRule -DisplayName "Destiny2-Solo-2" -Direction Outbound -RemotePort 27000-27100 -Protocol UDP -Action Block
New-NetFirewallRule -DisplayName "Destiny2-Solo-3" -Direction Inbound -LocalPort 27000-27100 -Protocol TCP -Action Block
New-NetFirewallRule -DisplayName "Destiny2-Solo-4" -Direction Inbound -LocalPort 27000-27100 -Protocol UDP -Action Block
[System.Console]::Clear();
$Host.UI.RawUI.WindowTitle = "Destiny 2 Solo Mode Script"
Write-Host " "
Write-Host "-> Firewall Rules Set <-" -ForegroundColor green
Write-Host " "
Write-Host "--------------------------------------------------------------------------------------------------------------------"
Write-Host "------------------------------------------ Destiny 2 Solo mode activated. ------------------------------------------"
Write-Host "--------------------------------------------------------------------------------------------------------------------"
Write-Host " "
Write-Host "Make sure you are in Orbit when starting this Script.`r`nAfter you started it, you'll see Empty Planets and Empty Activities :)"  -ForegroundColor Yellow
Write-Host " "
Write-Host "Press Enter to Deactivate this Solo Mode Script."
Write-Host " "
Read-Host "Waiting for keypress... "
Write-Host " "
Write-Host "Removing Firewall Rules. This window will close when done."  -ForegroundColor red
Remove-NetFirewallRule -DisplayName "Destiny2-Solo-1" 
Remove-NetFirewallRule -DisplayName "Destiny2-Solo-2" 
Remove-NetFirewallRule -DisplayName "Destiny2-Solo-3" 
Remove-NetFirewallRule -DisplayName "Destiny2-Solo-4"
Write-Host " "
Write-Host "Removed!"  -ForegroundColor red