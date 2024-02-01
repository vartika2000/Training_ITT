# Prompt the user to enter a year
Write-Host "Enter a year:"
$year = Read-Host

# Check if the year is a leap year
$isLeapYear = $false

# Check if the year is divisible by 4
if ($year % 4 -eq 0) {
    # If the year is divisible by 100, it should also be divisible by 400 to be a leap year
    if ($year % 100 -eq 0) {
        if ($year % 400 -eq 0) {
            $isLeapYear = $true
        }
    } else {
        # If the year is not divisible by 100, it is a leap year
        $isLeapYear = $true
    }
}

# Output the result
if ($isLeapYear) {
    Write-Host "$year is a leap year."
} else {
    Write-Host "$year is not a leap year."
}
