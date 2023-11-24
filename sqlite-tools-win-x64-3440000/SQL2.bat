@echo off
echo %cd%
cd %~dp0
echo %cd%
::::::::::::::::::::::::::::
sqlite3.exe <SQL1.sql 
::::::::::::::::::::::::::::
Pause