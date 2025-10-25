@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

REM Mensagem de boas-vindas
echo.
echo Bem-vindo ao Programa de Geração de Números Sequenciais
echo.

:loop
REM Defina o número inicial (sem o dígito verificador)
set /p "numero_inicial=Digite o número inicial (sem o dígito verificador): "
set /p "quantidade=Digite a quantidade de números a serem gerados: "

REM Valide se a entrada da quantidade é um número positivo
set "valida_quantidade=!quantidade!"
set /a "valida_quantidade+=0" 2>nul
if !errorlevel! neq 0 (
    echo Por favor, insira um número positivo para a quantidade.
    goto loop
)

echo.
echo Números sequenciais gerados:
echo.
for /l %%i in (1, 1, !quantidade!) do (
    set /a "novo_numero=numero_inicial + %%i"
    
    REM Gere um dígito verificador aleatório (de 0 a 9)
    set /a "digito_verificador=!random! %% 10"
    
    set "novo_numero_com_dv=!novo_numero!!digito_verificador!"
    echo !novo_numero_com_dv!
)

echo.
REM Pergunte ao usuário se deseja gerar outro conjunto de números
set /p "continuar=Você deseja gerar outro conjunto de números? (S/N): "

if /i "!continuar!" equ "S" goto loop

REM Mensagem de encerramento
echo.
echo Programa encerrado. Obrigado por utilizar^^!
echo Copyright (c) 2024 Wárreno Hendrick Costa Lima Guimarães
pause
endlocal
