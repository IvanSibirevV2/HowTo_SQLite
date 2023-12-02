:::::::::::::::::::::::::::::::::::::::::::::
@echo off
if "%cd%\" EQU "%~dp0" ((start notepad++ %0)&&(exit /b))
cd %~dp0
:::::::::::::::::::::::::::::::::::::::::::::
set SQL_RunTimeFileName=SQL_RunTimeFileName.sql
set NL=^& echo.
(echo ^
--SQL_RunTimeFileName --Comment %NL%^
create table users^(name text, age integer^);%NL%^
insert into users values ^('Tom', 37^);%NL%^
select * from users;%NL%^
.save database.db)>%SQL_RunTimeFileName%
:::::::::::::::::::::::::::::::::
::notepad %SQL_RunTimeFileName%
sqlite3.exe <%SQL_RunTimeFileName%
del %SQL_RunTimeFileName%
:::::::::::::::::::::::::::::::::::::::::::::
(TIMEOUT /T 1)&&(pause)&&(exit /b)
:::::::::::::::::::::::::::::::::::::::::::::
