function add{
    param(
        [int]$a,
        [int]$b
    )
    return $a + $b
}
Write-Host "enter first number"
$num1 = Read-Host
Write-Host "enter second number"
$num2 = Read-Host
$result = add -a $num1 -b $num2
Write-Host "the sum of $num1 and $num2 is $result"