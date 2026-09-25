$launcher = Join-Path $PSScriptRoot "start-claude-omniroute.cmd"
$startupFolder = [Environment]::GetFolderPath("Startup")
$startupLauncher = Join-Path $startupFolder "start-claude-omniroute.cmd"

Copy-Item -Path $launcher -Destination $startupLauncher -Force

Write-Host "Claude Code startup launcher installed:"
Write-Host $startupLauncher
