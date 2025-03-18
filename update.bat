@echo off
cd /d "%~dp0"  REM Navega até a pasta onde o .bat está

:: Verifica se o Git está instalado
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo Git não foi encontrado! Instale o Git e tente novamente.
    pause
    exit /b
)

git add .
git commit -m "Atualização automática"

:: Verifica a branch atual e usa a correta
for /f "tokens=*" %%b in ('git branch --show-current') do set BRANCH=%%b
git push origin %BRANCH%

pause  REM Mantém a janela aberta para ver mensagens de erro
