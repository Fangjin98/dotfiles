Write-Host "Setting powershell to allow execution of scripts..."
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser

Write-Host "Installing PSReadLine..."
Install-Module -Name PSReadLine  -Scope CurrentUser

Write-Host "Installing Scoop..."
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 
irm get.scoop.sh | iex

Write-Host "Installing CLI apps..."
scoop install vim git starship lsd zoxide gh
scoop bucket add extras
scoop install komorebi whkd

Write-Host "Installing GUI apps..."
scoop install bandizip notion sumatrapdf vlc

Write-Host "Syncing configs..."
./Windows-Install-Dotfiles.ps1
