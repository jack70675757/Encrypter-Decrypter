@echo off
color a
title Encrypter and Decrypter - Jack
goto start
:e
cls
type art\image2.txt
echo.
echo.
echo.
set /p passe="Set password for encryped file :"
set /p fname="enter the file name :"
7z a -p%passe% -mhe "output\encryptedfile.7z" "files\%fname%"
timeout /t 6 /nobreak
goto start
:d
cls
type art\image3.txt
echo.
echo.
echo.
set /p fnamed="enter encrypted file name :"
set /p passd="whats the password lil bro :"
7z x -p%passd% "files\%fnamed%.7z" -o"output\decryptedfile"
timeout /t 6 /nobreak
:start
cls
type art\image1.txt
echo.
echo.
echo.
echo NOTE: PUT FILE YOU WANT TO ENCRYPT OR DECRYPT INDIDE THE "files" FOLDER
echo NOTE#2: THE ENCRYPTED/DECRYPTED FILES WILL APPEAR IN THE "output" FOLDER
set /p ans="Encrypt (e) Decrypt (d) Check if 7z is installed. WIP (7) :"
if "%ans%"=="e" goto e
if "%ans%"=="d" goto d 
if "%ans%"=="7" goto 7
echo 