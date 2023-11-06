@echo off
rem ***************************
rem ===========================
rem CLEANER TEMP WINDOWS 
rem v1.0
rem ===========================
rem ***************************

if "%OS%"=="Windows_NT" goto WIN

@echo ===============================
@echo ===============================
@echo ===== OPERATING SYSTEM ========
@echo ===============================
@echo ===============================
@echo ===============================
@echo ====== Voir le README.md ======
@echo ===============================
@echo ===============================
pause
goto FIN


:WIN
if defined TEMP goto TEMPO
if defined TMP goto TEMPO

:PASTEMP
@echo ===============================
@echo ===============================
@echo ====== TEMP FOLDER ============
@echo ===============================
@echo ===============================
@echo ===============================
@echo ===============================
pause
goto FIN


:TEMPO
@@echo on
del %temp%\*.* /F/S/Q
if defined WINDIR goto WINDIRTEMP
goto :PASTEMP

:WINDIRTEMP
@@echo on
del %windir%\temp\*.* /F/S/Q
goto FIN


:FIN
@echo fin processus
pause
cls