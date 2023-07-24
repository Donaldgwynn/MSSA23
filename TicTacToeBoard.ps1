function Displayboard {
    param ($Board)
    Clear-Host
    
    Write-Host " $($Board[0]) | $($Board[1]) | $($Board[2]) "
    Write-Host "---+---+---"
    Write-Host " $($Board[3]) | $($Board[4]) | $($Board[5]) "
    Write-Host "---+---+---"
    Write-Host " $($Board[6]) | $($Board[7]) | $($Board[8]) "
    Write-Host
}



do {   
   $CurrentPlayer = 'X','O' | Get-Random
   [System.Collections.ArrayList]$TicTacToeBoard = @(1,2,3,4,5,6,7,8,9)
   $GameOver = $false
   $Draw = $false




   do {
      DisplayBoard -Board $TicTacToeBoard
      do {
         
         $Choice = Read-Host -Prompt "Player $CurrentPlayer, Please choose your spot"
         $GoodSpots = @(1,2,3,4,5,6,7,8,9)
         if ($TicTacToeBoard -contains $Choice -and $GoodSpots -contains $Choice) {$TryAgain = $false}
         else {$TryAgain = $True}
      } While ($TryAgain -eq $True)
      $TicTacToeBoard[$Choice -1] = $CurrentPlayer
      $WinningLines = @(
          @(0,1,2),
          @(3,4,5),
          @(6,7,8),
          @(0,3,6),
          @(1,4,7),
          @(2,5,8),
          @(0,4,8),
          @(2,4,6)
      )
      foreach ($WinningLine in $WinningLines) {
      $PositionValues = ($TicTacToeBoard[$WinningLine] | Select-Object -Unique)
      if ($PositionValues.count -eq 1) {
           $GameOver = $true
           break
      }
      }
      if ($GameOver -eq $false -and ($TicTacToeBoard | Select-Object -Unique).count -eq 2) {
        $Draw = $true
        $GameOver = $true
    
        }
      if ($GameOver -eq $false) {
          if ($CurrentPlayer -eq 'X') {$CurrentPlayer = 'O'}
          else {$CurrentPlayer = 'X'}
      } 
    } Until ($GameOver -eq $True)
   DisplayBoard -Board $TicTacToeBoard
   if ($Draw -eq $False) {Write-Host "Player $CurrentPlayer, you are the winner"}
   else {Write-Host "Nobody won ths game"}
   $Again = Read-Host 'Do you want to play again (Yes/No)' 
   If ($Again -like 'y*') {$KeepPlaying = $True}
   else {$KeepPlaying = $false}
} While ($KeepPlaying -eq $True)