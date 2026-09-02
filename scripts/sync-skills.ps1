<#
.SYNOPSIS
    Synchronizes skills from the master 'skills/' directory into Antigravity (.agents/),
    Claude Code (.claude/), and Cursor (.cursor/) client directories.

.DESCRIPTION
    Run this script whenever you add a new skill to 'skills/' or pull updates from GitHub.
    It automatically mirrors the skills into the respective agent configurations,
    ensuring seamless cross-client compatibility.

.EXAMPLE
    .\scripts\sync-skills.ps1
    .\scripts\sync-skills.ps1 -InstallGlobal
#>

param(
    [switch]$InstallGlobal = $false
)

$RootDir = Split-Path -Parent $PSScriptRoot
$MasterSkillsDir = Join-Path $RootDir "skills"

if (-not (Test-Path $MasterSkillsDir)) {
    Write-Error "Master skills directory not found at $MasterSkillsDir"
    exit 1
}

$AgentsDir = Join-Path $RootDir ".agents\skills"
$ClaudeDir = Join-Path $RootDir ".claude\skills"
$CursorSkillsDir = Join-Path $RootDir ".cursor\skills"
$CursorRulesDir = Join-Path $RootDir ".cursor\rules"
$GlobalGeminiDir = Join-Path $env:USERPROFILE ".gemini\config\skills"

# Ensure target directories exist
$TargetDirs = @($AgentsDir, $ClaudeDir, $CursorSkillsDir, $CursorRulesDir)
foreach ($dir in $TargetDirs) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
    }
}

$SkillFolders = Get-ChildItem -Path $MasterSkillsDir -Directory

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "   Multi-Client Skills Synchronizer (Antigravity/Claude/Cursor) " -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan

foreach ($skill in $SkillFolders) {
    $skillName = $skill.Name
    $sourceSkillMd = Join-Path $skill.FullName "SKILL.md"

    if (-not (Test-Path $sourceSkillMd)) {
        Write-Warning "Skipping $skillName: No SKILL.md found."
        continue
    }

    Write-Host "`n[+] Synchronizing skill: $skillName" -ForegroundColor Green

    # 1. Antigravity (.agents/skills/<skill>)
    $agentTarget = Join-Path $AgentsDir $skillName
    if (-not (Test-Path $agentTarget)) { New-Item -ItemType Directory -Force -Path $agentTarget | Out-Null }
    Copy-Item -Path $sourceSkillMd -Destination (Join-Path $agentTarget "SKILL.md") -Force
    Write-Host "  -> Synced to Antigravity (.agents/skills/$skillName)" -ForegroundColor Gray

    # 2. Claude Code (.claude/skills/<skill>)
    $claudeTarget = Join-Path $ClaudeDir $skillName
    if (-not (Test-Path $claudeTarget)) { New-Item -ItemType Directory -Force -Path $claudeTarget | Out-Null }
    Copy-Item -Path $sourceSkillMd -Destination (Join-Path $claudeTarget "SKILL.md") -Force
    Write-Host "  -> Synced to Claude Code (.claude/skills/$skillName)" -ForegroundColor Gray

    # 3. Cursor (.cursor/skills/<skill>)
    $cursorTarget = Join-Path $CursorSkillsDir $skillName
    if (-not (Test-Path $cursorTarget)) { New-Item -ItemType Directory -Force -Path $cursorTarget | Out-Null }
    Copy-Item -Path $sourceSkillMd -Destination (Join-Path $cursorTarget "SKILL.md") -Force
    Write-Host "  -> Synced to Cursor (.cursor/skills/$skillName)" -ForegroundColor Gray

    # 4. Cursor Rules (.cursor/rules/<skill>.mdc)
    $cursorRuleFile = Join-Path $CursorRulesDir "$skillName.mdc"
    if (-not (Test-Path $cursorRuleFile)) {
        $ruleHeader = @"
---
description: Autonomous skill integration for $skillName.
globs: ["*"]
---

"@
        $content = Get-Content $sourceSkillMd -Raw
        Set-Content -Path $cursorRuleFile -Value ($ruleHeader + $content)
        Write-Host "  -> Generated Cursor Rule (.cursor/rules/$skillName.mdc)" -ForegroundColor Gray
    }

    # 5. Global Antigravity Config (~/.gemini/config/skills/)
    if ($InstallGlobal -or (Test-Path (Join-Path $GlobalGeminiDir $skillName))) {
        $globalTarget = Join-Path $GlobalGeminiDir $skillName
        if (-not (Test-Path $globalTarget)) { New-Item -ItemType Directory -Force -Path $globalTarget | Out-Null }
        Copy-Item -Path $sourceSkillMd -Destination (Join-Path $globalTarget "SKILL.md") -Force
        Write-Host "  -> Synced to Global Antigravity Config (~/.gemini/config/skills/$skillName)" -ForegroundColor Yellow
    }
}

Write-Host "`nAll skills successfully synchronized across Antigravity, Claude Code, and Cursor!`n" -ForegroundColor Green
