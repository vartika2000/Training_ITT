function show{
    param( $str )
    Set-ExecutionPolicy -ExecutionPolicy $str 
}
$str = "Unrestricted"
show( $str )
Write-Host $str