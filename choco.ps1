Write-Output "chocolatey install"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Output "github cli install"
choco install gh -y

Write-Output "Environment update"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

Write-Output "p4merge install"
choco install p4merge -y

Write-Output "notepad++ install"
choco install notepadplusplus -y