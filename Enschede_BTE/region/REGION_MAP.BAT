@echo off
setlocal EnableDelayedExpansion

echo -                                                                                                       1         1         1
echo -             1         2         3         4         5         6         7         8         9         0         1         2
echo -   0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890

set /A number_y = -10430

:X_IS_0

if !number_y! LSS 10 echo|set /p="0"
if !number_y! LSS 100 echo|set /p="0"

echo|set /p="!number_y! "

set /A number_x = 6440

:NEXT_X

set filename=r.!number_x!.!number_y!.mca

if exist !filename! (
	echo|set /p="1"
rem	echt filename
) else (
	echo|set /p="0"
)

set /a number_x = !number_x! + 1

if !number_x! GTR 6480 (
	set /a number_y = !number_y! + 1
	if !number_y! equ -10380 goto END
	echo .
	goto X_IS_0
)

goto NEXT_X
:END
echo .

pause