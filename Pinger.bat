@echo off
color c
title Sysk3y's IP PINGER
mode con lines=15 cols=72
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:menu
:greeting
cls

echo  oooooooo8                          oooo          ooooooo               
echo 888         oooo   oooo  oooooooo8   888  ooooo o88    888o oooo   oooo 
echo  888oooooo   888   888  888ooooooo   888o888        88888o   888   888  
echo         888   888 888           888  8888 88o   88o    o888   888 888   
echo o88oooo888      8888    88oooooo88  o888o o888o   88ooo88       8888    
echo              o8o888                                          o8o888     

set /p IP=Enter IP:
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Downed.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top 