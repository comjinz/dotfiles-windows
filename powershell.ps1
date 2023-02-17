$profile_value = @"
#posh-git
Import-Module posh-git

# https://ohmyposh.dev/docs/themes
oh-my-posh init pwsh --config ‘https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/pure.omp.json’ | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
"@

$PSVersionTable.PSVersion

Write-Output "posh-git install"
Install-Module posh-git -AllowPrerelease -Force

Write-Output "PSReadLine install"
Install-Module PSReadLine -Force

Write-Output "PSFzf install"
Install-Module PSFzf -Force

Write-Output "profile write"
New-item -type file -force $profile -Value $profile_value
