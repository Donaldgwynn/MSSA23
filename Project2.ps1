function Swap-Case {
    param (
         [string]$inputString
    )

    $outputString = ""

    foreach ($char in $inputString) {
       if ($char -cmatch "[a-z]") {
           $outputString += $char.ToUpper()
       }
       elseif ($char -cmatch "[A-Z]") {
           $outputString += $char.ToLower()
       }
       else {
           $outputString += $char   
       
       }
    }

  return $outputString
 }
