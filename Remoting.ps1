Invoke-Command -ComputerName Lon-SVR1 -ScriptBlock { Get-WindowsFeature } | Select-Object Name, InstallState

Invoke-Command -ComputerName Lon-SVR1 -ScriptBlock {Install-WindowsFeature -name 'web-server'}

$DC1Session = New-PSSession -ComputerName Lon-DC1
Import-Module -prefix DC1 -Name SmbShare -PSSession $DC1Session
Get-DC1SmbShare
Get-SmbShare

Enter-PSSession -ComputerName Lon-DC1