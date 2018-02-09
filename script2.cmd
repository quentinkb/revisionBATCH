@echo off 

:: test avec les chaines de characteres, remplacemnt

set "ma_variable=Ma chaine avec espace, Ma deuxième occurence"
set "VAR=%ma_variable:*Ma=la%"
echo %VAR%

:: test avec les chaines de characteres, explode
set "to_explode=ma chaine"
set "exploded=%to_explode:~0,2%"
set "strangely_exploded=%to_explode:~-4%"

echo %exploded%
echo %strangely_exploded%

:: on joue avec les nombres
set /a "VAR1=1", "VAR2=2"
echo %VAR1%
echo %VAR2%
set /a "VAR1+=4"
echo %VAR1%
set /a "VAR3=VAR1+5"
echo %VAR3%

:: Opérateur logique
set /a "TRUE=1"
set /a "FALSE=0"

set /a "AND=TRUE&FALSE"
set /a "OR=TRUE|FALSE"

echo %OR%
echo %AND%

pause