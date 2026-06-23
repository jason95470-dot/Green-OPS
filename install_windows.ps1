# ============================================================
#  GREEN OPS - Installateur Windows (rend "greenops" utilisable
#  depuis N'IMPORTE QUEL dossier, CMD, ou Win+R)
#
#  Usage : clic droit sur ce fichier > "Executer avec PowerShell"
#  (ou: powershell -ExecutionPolicy Bypass -File install_windows.ps1)
# ============================================================

$installDir = "$env:LOCALAPPDATA\GreenOps"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

Write-Host "[*] Installation de Green Ops..." -ForegroundColor Green

# 1. Cree le dossier d'installation
New-Item -ItemType Directory -Force -Path $installDir | Out-Null

# 2. Copie le HTML et le .bat
$htmlSource = Join-Path $scriptDir "green_ops.html"
if (-not (Test-Path $htmlSource)) {
    Write-Host "[!] green_ops.html introuvable dans ce dossier." -ForegroundColor Red
    Write-Host "    Mets green_ops.html, greenops.bat et install_windows.ps1 dans le meme dossier." -ForegroundColor Yellow
    Read-Host "Appuie sur Entree pour fermer"
    exit 1
}
Copy-Item $htmlSource -Destination "$installDir\green_ops.html" -Force

# 3. Cree un greenops.bat propre dans le dossier d'installation
@"
@echo off
start "" "$installDir\green_ops.html"
"@ | Out-File -Encoding ASCII "$installDir\greenops.bat"

# 4. Ajoute le dossier au PATH utilisateur (si pas deja present)
$currentPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($currentPath -notlike "*$installDir*") {
    [Environment]::SetEnvironmentVariable("Path", "$currentPath;$installDir", "User")
    Write-Host "[*] Dossier ajoute au PATH utilisateur." -ForegroundColor Green
} else {
    Write-Host "[*] Deja present dans le PATH." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "[OK] Installation terminee !" -ForegroundColor Green
Write-Host ""
Write-Host "    Ferme et rouvre CMD (ou redemarre), puis tape :  greenops"
Write-Host "    Ca marchera aussi depuis Win+R directement."
Write-Host ""
Read-Host "Appuie sur Entree pour fermer"
