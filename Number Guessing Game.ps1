
$NumberToGuess =1..100 |Get-Random
do {
  [int]$userguess =Read-Host -Prompt "Please enter a number between 1 and 100"
  if ($userguess -lt $numbertoguess) {write-host "pick a higher number"  }
  elseif ($userguess -gt $numbertoguess) {write-host "pick a lower number"  }
  else {write-host "you legend"}
} until ($numbertoguess -eq $userguess)