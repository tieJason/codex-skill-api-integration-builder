param(
  [string]$Destination = $(if ($env:CODEX_HOME) { Join-Path $env:CODEX_HOME 'skills\api-integration-builder' } else { Join-Path $HOME '.codex\skills\api-integration-builder' })
)

$ErrorActionPreference = 'Stop'
$source = $PSScriptRoot
New-Item -ItemType Directory -Force -Path $Destination | Out-Null
Copy-Item -LiteralPath (Join-Path $source 'SKILL.md') -Destination (Join-Path $Destination 'SKILL.md') -Force
New-Item -ItemType Directory -Force -Path (Join-Path $Destination 'agents') | Out-Null
Copy-Item -LiteralPath (Join-Path $source 'agents\openai.yaml') -Destination (Join-Path $Destination 'agents\openai.yaml') -Force
Write-Host '已安装 api-integration-builder ->' $Destination