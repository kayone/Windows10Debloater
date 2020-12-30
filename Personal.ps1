Write-Host "Enabling TaskScheduler History"
wevtutil set-log Microsoft-Windows-TaskScheduler/Operational /enabled:true

Write-Host "Turn off hibranation"
powercfg.exe -h off

Write-Host "Show File Extensions"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -value "0"

Write-Host "Start Explorer in My Computer"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -value "0"

Write-Host "Show Hidden Files"
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -value "1"
