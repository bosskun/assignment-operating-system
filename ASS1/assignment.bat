@echo off
title Assignment_1
:menu
cls
color 0F
echo ##################################################
echo Choos one choice...
echo ##################################################
echo (1) Current date
echo (2) File move from level2'folder to level1'folder
echo (3) Guess number
echo (4) Exit
echo ##################################################
set /p choice=Choice :
if %choice%==1 goto currentDate
if %choice%==2 goto fileMove
if %choice%==3 goto guessNumber 
if %choice%==4 goto exit 
pause
echo.

:currentDate
cls
color 02
echo Loding[____________________] (0%)
ping localhost -n 2 > nul
cls
echo Loding[#######_____________] (37%)
ping localhost -n 3 > nul
cls
echo Loding[##############______] (62%)
ping localhost -n 1 > nul
cls
echo Loding[####################] (100%)
ping localhost -n 3 > nul
cls
color 0A
echo Done..
echo.
set wdate=%date:~0,4%
set day=%date:~7,2%
set month=%date:~4,2%
set year=%date:~10,4%
set /a yesrs= (%date:~10,4%+543)
echo A.D. : %wdate% %day%/%month%/%year%
echo B.C. : %wdate% %day%/%month%/%yesrs%
pause
cls
goto menu

:fileMove
cls
color 0E
echo Loding[____________________] (0%)
ping localhost -n 2 > nul
cls
echo Loding[#######_____________] (37%)
ping localhost -n 3 > nul
cls
echo Loding[##############______] (62%)
ping localhost -n 1 > nul
cls
echo Loding[####################] (100%)
ping localhost -n 3 > nul
cls
echo ##############################################################
move %cd%\level1\level2\*.* %cd%\level1
echo ##############################################################
color 0E
echo ##############################################################
echo.
echo Move file to level1'folder Complete..
echo.
echo ##############################################################
pause
goto menu

:guessNumber
color 09
cls
echo Guess Number
:init
set /a count_play=0
SET /a ran=%RANDOM% * 100 / 32768 + 1

:play
set /p input=Enter your number :
if %input% LSS 1 goto out_rang
if %input% GTR 100 goto out_rang
if %input% LSS %ran% goto than
if %input% GTR %ran% goto less
if %input% EQU %ran% goto win

:out_rang
echo.
echo Please Enter Number 1 - 100
echo.
set /a count_play=%count_play%+1
echo Your guessed %count_play% time.
echo ###############################
goto play

:less
echo.
echo Number less than %input%
echo.
set /a count_play=%count_play%+1
echo Your guessed %count_play% time.
echo ###############################
goto play

:than
echo.
echo Number more than %input%
echo.
set /a count_play=%count_play%+1
echo Your guessed %count_play% time.
echo ###############################
goto play

:win
echo.
echo ###############################
echo         ...Winner...
echo ###############################
echo The Winner, Yes number is %ran%.
echo Your guessed %count_play% time.
echo ###############################
pause
goto menu

:exit
exit

