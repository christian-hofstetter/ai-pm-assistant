# PowerShell script to install PM Skills into .kiro/skills/
# Usage: .\setup-skills.ps1 [-PmSkillsDir ..\pm-skills]

param(
    [string]$PmSkillsDir = "..\pm-skills"
)

if (-not (Test-Path $PmSkillsDir)) {
    Write-Host "pm-skills repo not found at: $PmSkillsDir" -ForegroundColor Red
    Write-Host ""
    Write-Host "First clone it next to this project:"
    Write-Host "  cd .. ; git clone https://github.com/phuryn/pm-skills.git ; cd ai-pm-assistant"
    Write-Host ""
    Write-Host "Then run: .\setup-skills.ps1"
    exit 1
}

New-Item -ItemType Directory -Path ".kiro\skills" -Force | Out-Null

$copied = 0
Get-ChildItem -Path $PmSkillsDir -Directory -Filter "pm-*" | ForEach-Object {
    $skillsDir = Join-Path $_.FullName "skills"
    if (Test-Path $skillsDir) {
        Copy-Item -Path "$skillsDir\*" -Destination ".kiro\skills\" -Recurse -Force
        Write-Host "Copied skills from $($_.Name)"
        $copied++
    }
}

Write-Host ""
if ($copied -gt 0) {
    Write-Host "Done! Skills installed to .kiro\skills\" -ForegroundColor Green
    Write-Host "Open this folder in Kiro IDE to get started."
} else {
    Write-Host "No skills found. Check that $PmSkillsDir contains pm-* folders." -ForegroundColor Yellow
}
