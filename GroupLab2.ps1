get-command *'move'*
New-ADOrganizationalUnit -Name 'London' -path 'dc=adatum,dc=com' 
New-ADGroup -Name 'London Admins' -GroupScope Global
New-ADUser -Name 'Ty Carlson'
Add-ADGroupMember -Identity 'London Admins' -Members 'Ty Carlson'
New-ADComputer -Name 'LON-CL2'

Move-ADObject -TargetPath "OU=London,DC=Adatum,DC=com" -Identity 'CN=Ty Carlson,CN=Users,DC=Adatum,DC=com'
Get-ADComputer -Filter *

$ObjToMove = Get-ADComputer -Identity 'LON-CL2$'
$TgtPath = Get-ADOrganizationalUnit -filter {Name -eq 'London'} 
Move-ADObject -Identity $ObjToMove.DistinguishedName -TargetPath $TgtPath.DistinguishedName