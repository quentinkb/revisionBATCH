@echo off 
if exist "%cda%" (
	echo %cda% existe bien
) else (
	echo cda nexiste pas 
)

:: test du error level, r�sultat de la d�rni�re commande 

setlocal
set "TestError1=Un petit test"
if not errorlevel 1 echo Aucune erreur dans la premi�re commande
echo.
set /a "TestError2=09"
echo.
if errorlevel 1 echo Le code d'erreur des nombres invalides est %ErrorLevel%
endlocal

:: test de la boucle for 

for %%A in (texte) do echo %%A
for %%B in ("%cd%") do if exist %%B echo %%B
pause