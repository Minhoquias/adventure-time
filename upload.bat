@echo off
cd /d "%~dp0"  REM Navega até a pasta onde o .bat está
git pull origin main  REM Substitua 'main' pelo nome da branch correta, se necessário
