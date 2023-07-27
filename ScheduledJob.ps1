$sjopt = New-ScheduledJobOption -RunElevated -HideInTaskScheduler 
$sjtrg = New-JobTrigger -Once -At (Get-Date).AddMinutes(1)
Register-ScheduledJob -Name DonSJ -ScriptBlock {'Hello'} -Trigger $sjtrg -ScheduledJobOption $sjopt
Get-Job