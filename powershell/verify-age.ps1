$name = Read-Host "Enter your name"
Write-Host "Welcome $name"
$age = Read-Host "enter the age"
if ($age -le 18) {
    Write-Host "Sorry you cant vote"
}
else {
    Write-Host "congratulation you can vote"
}