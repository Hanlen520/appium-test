@echo off 
color a
title ReleaseAdbPort
echo ======================
echo *** sky 2018-07-20***
echo ***     v2.0.0    ***
echo ======================
echo ---------------------------
echo Checking adb port...
for /F "usebackq tokens=5" %%a in (`"netstat -ano | findstr "5037""`) do (   
if not "%%a" =="0" call :ReleasePort %%a
)
echo ---------------------------
echo adb port has been released!
echo ---------------------------


exit

:ReleasePort
TASKKILL /f /PID %1

exit