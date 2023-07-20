Invoke-Expression (&starship init powershell)
Invoke-Expression (& {
	    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
	    (zoxide init --cmd cd --hook $hook powershell | Out-String)
})

if (-not (Get-Module PSReadline)) {
  Write-Warning 'Failed to locate PSReadLine module'
} else {
    Set-PSReadLineOption -PredictionSource History
    Set-PSReadLineOption -HistorySearchCursorMovesToEnd
    Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete
    Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit
    Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

  if ($env:STARSHIP_SHELL -eq 'powershell' -or 'pwsh') {
    # Set the prompt character to change color based on syntax errors
    # https://github.com/PowerShell/PSReadLine/issues/1541#issuecomment-631870062
    $esc = [char]0x1b # Escape Character
    $symbol = [char]0x276F  # ❯
    $fg = '0' # white foreground
    $bg = '8;2;78;213;93'  # 24-bit color code
    $err_bg = '1' # Error Background

    Set-PSReadLineOption -PromptText (
      " $esc[4$esc[4${fg};3${bg}m$symbol ",
      " $esc[4$esc[4${fg};3${err_bg}m$symbol "
    )
   $env:STARSHIP_LOG = 'error'
  }
}
function Invoke-Starship-PreCommand {
  $host.ui.Write("`e]0; $env:USERNAME`@ $pwd `a")
}

$Env:KOMOREBI_CONFIG_HOME = '$HOME\.config\komorebi'

Set-Alias -name ls -value lsd
function ll {lsd -l}
function la {lsd -l -a}
function open {
  param( $Path = '.')
	Invoke-Item $Path
}
function sed($file, $find, $replace) {
  (Get-Content $file).replace("$find", $replace) | Set-Content $file
}
function which($name) {
  Get-Command $name | Select-Object -ExpandProperty Definition
}
function export($name, $value) {
  set-item -force -path "env:$name" -value $value;
}
function ln($target, $link) {
	New-Item -ItemType SymbolicLink -Path $link -Value $target
}
function showlinks($dir){
	get-childitem $dir | where-object {$_.LinkType} | select-object FullName,LinkType,Target
}
function grep($regex, $dir) {
  if ( $dir ) {
      Get-ChildItem $dir | select-string $regex
      return
  }
  $input | select-string $regex
}
function touch($file) {
  "" | Out-File $file -Encoding ASCII
}
function find($name) {
	get-childitem -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | foreach-object {
		write-output($PSItem.FullName)
	}
}
function getnic {
  Get-NetAdapter | Sort-Object -Property MacAddress
}
function getip {
  Get-NetRoute -AddressFamily IPv4 | Where-Object -FilterScript {$_.NextHop -ne '0.0.0.0'}
}
function getipv6 {
  Get-NetRoute -AddressFamily IPv6 | Where-Object -FilterScript {$_.NextHop -ne '::'}
}
function proxyon {
  Set-Item Env:http_proxy "http://127.0.0.1:7890"  
	Set-Item Env:https_proxy "http://127.0.0.1:7890" 
}
function proxyoff {
  Remove-Item Env:http_proxy
  Remove-Item Env:https_proxy
}
function df {
  get-volume
}
function pkill($name) {
  Get-Process $name -ErrorAction SilentlyContinue | Stop-Process
}
function pgrep($name) {
  Get-Process $name
}
function uptime {
  $bootUpTime = Get-WmiObject win32_operatingsystem | Select-Object lastbootuptime
  $plusMinus = $bootUpTime.lastbootuptime.SubString(21,1)
  $plusMinusMinutes = $bootUpTime.lastbootuptime.SubString(22, 3)
  $hourOffset = [int]$plusMinusMinutes/60
  $minuteOffset = 00
  if ($hourOffset -contains '.') { $minuteOffset = [int](60*[decimal]('.' + $hourOffset.ToString().Split('.')[1]))}       
    if ([int]$hourOffset -lt 10 ) { $hourOffset = "0" + $hourOffset + $minuteOffset.ToString().PadLeft(2,'0') } else { $hourOffset = $hourOffset + $minuteOffset.ToString().PadLeft(2,'0') }
  $leftSplit = $bootUpTime.lastbootuptime.Split($plusMinus)[0]
  $upSince = [datetime]::ParseExact(($leftSplit + $plusMinus + $hourOffset), 'yyyyMMddHHmmss.ffffffzzz', $null)
  Get-WmiObject win32_operatingsystem | Select-Object @{LABEL='Machine Name'; EXPRESSION={$_.csname}}, @{LABEL='Last Boot Up Time'; EXPRESSION={$upsince}}
}
function htop{
  btm -b
}
function launchyasb{
  Start-Process -FilePath "D:\ProgramFiles\Miniconda\envs\yasb\python.exe" -ArgumentList ( 'D:\Joey\repos\yasb\src\main.py')  -WindowStyle Hidden
}
function launchkomorebi{
    komorebic start --await-configuration
}

proxyon
#Set-Location D://Joey//repos
Write-Output "Hello, Joey."
