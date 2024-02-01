echo "Enter a string:"
$string = Read-Host

$reversedString = ""

for ($i = $string.Length - 1; $i -ge 0; $i--) {
    $reversedString += $string[$i]
}

echo "Reversed string: $reversedString"
