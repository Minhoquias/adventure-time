@echo off
cd /d "%~dp0"  REM Navega até a pasta onde o .bat está
git add .
git commit -m "Atualização automática"
git push origin main  REM Substitua 'main' pelo nome da sua branch, se for diferente
