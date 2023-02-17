Write-Output "git install"
choco install git.install --yes

Copy-Item ".gitconfig" -Force -Destination "~/.gitconfig"