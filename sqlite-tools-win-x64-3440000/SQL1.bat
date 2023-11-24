:::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" start notepad++ %0 
cd %~dp0
:::::::::::::::::::::::::::::::::
set SQL_RunTimeFileName=SQL1.sql
(
::echo --SQL_RunTimeFileName --Comment
echo create table users^(name text, age integer^);
echo insert into users values ^('Tom', 37^);
echo select * from users;
echo .save database.db)>%SQL_RunTimeFileName%
:::::::::::::::::::::::::::::::::
::notepad %SQL_RunTimeFileName%
sqlite3.exe <%SQL_RunTimeFileName%
del %SQL_RunTimeFileName%
::::::::::::::::::::::::::::
Pause
exit /b