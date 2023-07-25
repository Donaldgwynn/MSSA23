Function Get-Addition {
<#
.Synopsis
   This command adds two numbers together
.DESCRIPTION
   This command takes two imputs as parameters and then adds them together,
   it produces a powershell object showing two numbers and the result
.EXAMPLE
   Get-Addition -Num1 30 -Num2 10
   This will add 30 and 10 and return the result 
   as a PS result of two numbers and a result of 40
.NOTES
   Created by: Donald Gwynn
   ChangeLog:
   Date           Version    What was changed
   ----           -------    ----------------
   24/Jul/2023    1.0.0      Script was created
   24/Jul/2023    1.0.5      Division was added
   24/Jul/2023    1.1.0      Help Created
.PARAMETER Num1
   This is the first number
.PARAMETER Num2
   This is the second number
#>
[CmdletBinding()]

  Param (
    $Num1,
    $Num2
  )
  $AddHash = [ordered]@{
    Num1 = $Num1
    Num2 = $Num2
    Result = $Num1 + $Num2
  }
  $ResultObj = New-Object -TypeName psobject -Property $AddHash
  return $ResultObj
}




Function Get-Multiplication {
<#
.Synopsis
   This command Multiplies two numbers together
.DESCRIPTION
   This command takes two imputs as parameters and then multiplies them together,
   it produces a powershell object showing two numbers and the result
.EXAMPLE
   Get-Multiplication -Num1 30 -Num2 10
   This will multiply 30 and 10 and return the result 
   as a PS result of two numbers and a result of 300
.NOTES
   Created by: Donald Gwynn
   ChangeLog:
   Date           Version    What was changed
   ----           -------    ----------------
   24/Jul/2023    1.0.0      Script was created
   24/Jul/2023    1.0.5      Division was added
   24/Jul/2023    1.1.0      Help Created
.PARAMETER Num1
   This is the first number
.PARAMETER Num2
   This is the second number
#>
  [CmdletBinding()]
  Param (
    $Num1,
    $Num2
  )
  $MultHash = [ordered]@{
    Num1 = $Num1
    Num2 = $Num2
    Result = $Num1 * $Num2
  }
  $ResultObj = New-Object -TypeName psobject -Property $MultHash
  return $ResultObj
}

Function Get-Division {
<#
.Synopsis
   This command Divides two numbers together
.DESCRIPTION
   This command takes two imputs as parameters and then Divides them together,
   it produces a powershell object showing two numbers and the result
.EXAMPLE
   Get-Division -Num1 30 -Num2 10
   This will Divide 30 and 10 and return the result 
   as a PS result of two numbers and a result of 3
.NOTES
   Created by: Donald Gwynn
   ChangeLog:
   Date           Version    What was changed
   ----           -------    ----------------
   24/Jul/2023    1.0.0      Script was created
   24/Jul/2023    1.0.5      Division was added
   24/Jul/2023    1.1.0      Help Created
.PARAMETER Num1
   This is the first number
.PARAMETER Num2
   This is the second number
#>
  [CmdletBinding()]
  Param (
    $Num1,
    $Num2
  )
  $DivHash = [ordered]@{
    Num1 = $Num1
    Num2 = $Num2
    Result = $Num1 / $Num2
  }
  $ResultObj = New-Object -TypeName psobject -Property $DivHash
  return $ResultObj
}
