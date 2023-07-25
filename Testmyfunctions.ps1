function AreaOfRectangle {
    Param (
      $Length,
      $Width
    )

    $Area = $Length * $Width
    Return $Area
}

$AreaOfObject = AreaOfRectangle -Length 5 -Width 10
$AreaOfObject
