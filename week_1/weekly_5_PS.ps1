Write-Output "Enter a string:"
$string = Read-Host
Write-Output "Enter a character:"
$char = Read-Host

$count = 0
for ($i = 0; $i -lt $string.Length; $i++) {
    if ($string[$i] -eq $char) {
        $count++
    }
}

Write-Output "The occurrence of character '$char' in the string '$string' is $count."
