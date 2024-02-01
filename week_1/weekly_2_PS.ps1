echo "Enter a number:"
$no = Read-Host
$original = $no
$sum = 0
$reminder = 0
$digit = 0

do {
    $reminder = $original % 10
    $digit = [math]::Pow($reminder, 3)
    $sum += $digit
    $original = [math]::Floor($original / 10)
} while ($original -gt 0)

if ($sum -eq $no) {
    echo "It is an Armstrong Number."
} else {
    echo "It is not an Armstrong Number."
}
