$preferences = Get-MpPreference #gets preferences for the Windows Defender scans and updates
Set-MpPreference -DisableRealtimeMonitoring (!$preferences.DisableRealtimeMonitoring) #toggle Real-time Protection ON/OFF
$status = $preferences.DisableRealtimeMonitoring #store current status of Real-time Protection in $status
Write-host " "
if ($status) {
   Write-host "Real-time Protection is  ON"
} Else {
   Write-host "Real-time Protection is  OFF"
}
Write-host " "
Start-Sleep 3
exit
#$host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")|out-null #pause and wait for key press