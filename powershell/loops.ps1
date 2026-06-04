#For Loop
for ($i=0; $i -lt 5; $i++) {
    Write-Host "Iteration: $i"
}

#While Loop
$i = 0  
while ($i -lt 5) {
    Write-Host "Iteration: $i"
    $i++
}

#Foreach Loop
$servers = @("web01","web02","db01")
foreach ($server in $servers) {
    Write-Host "Processing: $server"
}