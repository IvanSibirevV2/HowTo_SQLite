:::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" start notepad++ %0 
if "%cd%\" EQU "%~dp0" start notepad++ SQL2.sql
cd %~dp0
:::::::::::::::::::::::::::::::::
sqlite3.exe <SQL2.sql 
::::::::::::::::::::::::::::
Pause