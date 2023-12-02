:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
:::::::::::::::::::::::::::::::::
set SQL_RunTimeFileName=SQL_RunTimeFileName.sql
set NL=^& echo.
(echo ^
--SQL_RunTimeFileName --Comment %NL%^
.open database.db %NL%^
.headers ON %NL%^
select * from users; %NL%^
SELECT * FROM sqlite_master;)>%SQL_RunTimeFileName%
:::::::::::::::::::::::::::::::::
notepad %SQL_RunTimeFileName%
sqlite3.exe <%SQL_RunTimeFileName%
del %SQL_RunTimeFileName%
::::::::::::::::::::::::::::
Pause
exit /b