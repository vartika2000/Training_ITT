echo "Enter the number:"
$number = Read-Host
$original = [int]$number
$reverse = 0

if ($original -lt 0) {
    echo "Not a palindrome"
} else {
    $temp = $original
    while ($temp -gt 0) {
        $remainder = $temp % 10
        $reverse = $reverse * 10 + $remainder
        $temp = [math]::Floor($temp / 10)
    }

    echo "Reverse: $reverse"

    if ($original -eq $reverse) {
        echo "Palindrome"
    } else {
        echo "Not a palindrome"
    }
}
