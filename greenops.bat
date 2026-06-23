@echo off
REM ============================================================
REM  GREEN OPS - Lanceur Windows
REM  Ouvre green_ops.html dans le navigateur par defaut
REM ============================================================

REM Le HTML doit etre dans le meme dossier que ce .bat
set HTML_FILE=%~dp0green_ops.html

if not exist "%HTML_FILE%" (
    echo [!] green_ops.html introuvable dans ce dossier.
    echo     Mets greenops.bat et green_ops.html dans le meme dossier.
    pause
    exit /b 1
)

start "" "%HTML_FILE%"
