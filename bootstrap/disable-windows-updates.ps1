
$RunningAsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if (!$RunningAsAdmin) {
  Write-Error "Must be executed in Administrator level shell."
  exit 1
}

$Updates = (New-Object -ComObject "Microsoft.Update.AutoUpdate").Settings

if ($Updates.ReadOnly -eq $True) {
  Write-Error "Cannot update Windows Update settings due to Group Policty restrictions."
  exit 1
}

$Updates.NotificationLevel = 1 # Disabled
$Updates.Save()
$Updates.Refresh()

Write-Output "Automatic Windows Updates disabled."

