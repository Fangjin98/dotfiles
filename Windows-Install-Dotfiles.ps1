$BASE_DIR = Get-Location

$COMMON_PREFIX = Join-Path -Path $BASE_DIR -ChildPath "src\commmon"
$WINDOWS_PREFIX = Join-Path -Path $BASE_DIR -ChildPath "src\windows"

Write-Host $COMMON_PREFIX
Write-Host $WINDOWS_PREFIX

New-Item -ItemType SymbolicLink -Path "$HOME/.vimrc" -Value "$COMMON_PREFIX/.vimrc"
New-Item -ItemType SymbolicLink -Path "$HOME/.config/starship.toml" -Value "$COMMON_PREFIX/starship.toml/"
New-Item -ItemType SymbolicLink -Path "$HOME/Documents/PowerShell/Microsoft.PowerShell_profile.ps1" -Value "$WINDOWS_PREFIX/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"
New-Item -ItemType SymbolicLink -Path "$HOME/.config/komorebi/" -Value "$WINDOWS_PREFIX/.config/komorebi/"
New-Item -ItemType SymbolicLink -Path "$HOME/.config/whkdrc" -Value "$WINDOWS_PREFIX/.config/whkdrc"
New-Item -ItemType SymbolicLink -Path "$HOME/.config/yasb/" -Value "$WINDOWS_PREFIX/.config/yasb/"

