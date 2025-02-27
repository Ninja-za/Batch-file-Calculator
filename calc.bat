@echo off
cls
title Calculator -by ninja
MODE 98,25
chcp 65001
color D


:start
goto menu




:menu
cls
echo                                       _____________________
echo                                      ║  _________________  ║
echo                                      ║ ║- BY NINJA    0. ║ ║
echo                                      ║ ║_________________║ ║
echo                                      ║  ___ ___ ___   ___  ║
echo                                      ║ ║ 7 ║ 8 ║ 9 ║ ║ + ║ ║
echo                                      ║ ║___║___║___║ ║___║ ║
echo                                      ║ ║ 4 ║ 5 ║ 6 ║ ║ - ║ ║
echo                                      ║ ║___║___║___║ ║___║ ║
echo                                      ║ ║ 1 ║ 2 ║ 3 ║ ║ x ║ ║
echo                                      ║ ║___║___║___║ ║___║ ║
echo                                      ║ ║ . ║ 0 ║ = ║ ║ / ║ ║
echo                                      ║ ║___║___║___║ ║___║ ║
echo                                      ║_____________________║
echo:
echo                                   ╔═══════════════════════════╗
echo                                   ║ Operators: +  -  /  x     ║
echo                                   ╚═══════════════════════════╝
echo                                     ENTER 1 TO GO TO LINKTREE
echo:
for /f "tokens=*" %%u in ('') do set "username=%%u"

<nul set /p "=┌─── (user@%username%) "
echo:
echo │
<nul set /p "=└──► "
set /p choice="Enter your operator: "



if "%choice%"=="+" goto add
if "%choice%"=="-" goto subtract
if "%choice%"=="/" goto division
if "%choice%"=="x" goto times
if "%choice%"=="1" goto Links


:add
cls
echo:
echo                       █████╗ ██████╗ ██████╗ ██╗████████╗██╗ ██████╗ ███╗   ██╗
echo                      ██╔══██╗██╔══██╗██╔══██╗██║╚══██╔══╝██║██╔═══██╗████╗  ██║
echo                      ███████║██║  ██║██║  ██║██║   ██║   ██║██║   ██║██╔██╗ ██║
echo                      ██╔══██║██║  ██║██║  ██║██║   ██║   ██║██║   ██║██║╚██╗██║
echo                      ██║  ██║██████╔╝██████╔╝██║   ██║   ██║╚██████╔╝██║ ╚████║
echo                      ╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
echo:
echo                                    ─Press Enter to go to menu─
echo:
echo:
set /p num1="Enter your first number: "
if "%num1%"=="" goto menu
set /p num2="Enter your second number: "
if "%num2%"=="" goto menu
set /a added=num1 + num2
echo:
echo:
echo                                   ═══════════════════════════
echo                                   ──► The answer is: %added% 
echo                                   ═══════════════════════════
echo                                    Press Enter  to go to menu
echo                                   ═══════════════════════════
set /p in=""
if "%in%"=="" goto menu
echo:
pause



:subtract
cls
echo:
echo      ███████╗██╗   ██╗██████╗ ████████╗██████╗  █████╗  ██████╗████████╗██╗ ██████╗ ███╗   ██╗
echo      ██╔════╝██║   ██║██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
echo      ███████╗██║   ██║██████╔╝   ██║   ██████╔╝███████║██║        ██║   ██║██║   ██║██╔██╗ ██║
echo      ╚════██║██║   ██║██╔══██╗   ██║   ██╔══██╗██╔══██║██║        ██║   ██║██║   ██║██║╚██╗██║
echo      ███████║╚██████╔╝██████╔╝   ██║   ██║  ██║██║  ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║
echo      ╚══════╝ ╚═════╝ ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
echo:
echo                                    ─Press Enter to go to menu─
echo:
echo:
set /p num1="Enter your first number: "
if "%num1%"=="" goto menu
set /p num2="Enter your second number: "
if "%num2%"=="" goto menu
set /a sub=num1 - num2
echo:
echo:
echo                                   ═══════════════════════════
echo                                   ──► The answer is: %sub% 
echo                                   ═══════════════════════════
echo                                   Press Enter  to go to menu
echo                                   ═══════════════════════════
set /p pl=""
if "%pl%"=="" goto menu
echo:
pause



:division
cls
echo:
echo                        ██████╗ ██╗██╗   ██╗██╗███████╗██╗ ██████╗ ███╗   ██╗
echo                        ██╔══██╗██║██║   ██║██║██╔════╝██║██╔═══██╗████╗  ██║
echo                        ██║  ██║██║██║   ██║██║███████╗██║██║   ██║██╔██╗ ██║
echo                        ██║  ██║██║╚██╗ ██╔╝██║╚════██║██║██║   ██║██║╚██╗██║
echo                        ██████╔╝██║ ╚████╔╝ ██║███████║██║╚██████╔╝██║ ╚████║
echo                        ╚═════╝ ╚═╝  ╚═══╝  ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝
echo:
echo                                    ─Press Enter to go to menu─
echo:
echo:
set /p num1="Enter your first number: "
if "%num1%"=="" goto menu
set /p num2="Enter your second number: "
if "%num2%"=="" goto menu
set /a div=num1 / num2
echo:
echo:
echo                                   ═══════════════════════════
echo                                   ──►The answer is: %div% 
echo                                   ═══════════════════════════
echo                                   Press Enter  to go to menu
echo                                   ═══════════════════════════
set /p ni=""
if "%ni%"=="" goto menu
echo:
pause



:times
cls
echo:
echo                              ████████╗██╗███╗   ███╗███████╗███████╗
echo                              ╚══██╔══╝██║████╗ ████║██╔════╝██╔════╝
echo                                 ██║   ██║██╔████╔██║█████╗  ███████╗
echo                                 ██║   ██║██║╚██╔╝██║██╔══╝  ╚════██║
echo                                 ██║   ██║██║ ╚═╝ ██║███████╗███████║
echo                                 ╚═╝   ╚═╝╚═╝     ╚═╝╚══════╝╚══════╝
echo:
echo                                    ─Press Enter to go to menu─
echo:
echo:
set /p num1="Enter your first number: "
if "%num1%"=="" goto menu
set /p num2="Enter your second number: "
if "%num2%"=="" goto menu
set /a mul=num1 * num2
echo:
echo:
echo                                   ═══════════════════════════
echo                                   ──►The answer is: %mul% 
echo                                   ═══════════════════════════
echo                                   Press Enter  to go to menu
echo                                   ═══════════════════════════
set /p yt=""
if "%yt%"=="" goto menu
echo:
pause


:Links
start https://ninja-za.github.io/Linktree/
goto menu


pause