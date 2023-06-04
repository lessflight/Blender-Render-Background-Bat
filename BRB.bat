@echo off

set blender.exe_Location="D:\Program Files\Blender Foundation\Blender 3.2\blender.exe"
:: REPLACE WITH YOUR LOCATION OF BLENDER.EXE

set border=--------------------------------------------------------------
:: Text Asset

echo -----WELCOME TO +THE BLENDER RENDER BACKGROUND BAT+ V.0.1-----
echo               --Refer to README.MS for Setup--
echo %border%
echo .
echo  .
echo   .
echo  .
echo .

:prompt
echo ENTER LOCATION OF .BLEND FILE TO RENDER
echo .
echo Drag File onto Screen 
echo or
echo Manually Type with Quotation Marks
echo (ex: "D:\user\Blender Projects\Example.blend")
echo .

set /p "LOC1=When Finished Hit ENTER: "

set test1=%LOC1:~0,1%
set test2=%LOC1:~-1%
set combq=%test1%%test2%
if not """"=="%combq%" (goto :quoteError)

set last6=%LOC1:~-7,-1%
if /i not ".blend"=="%last6%" (goto :blendError)
::IF INPUT IS LESS THAN 8 CHARACTERS PROGRAM WILL CRASH - should not be an issue w/ legitimate use

if EXIST %LOC1% (goto :body) else (goto :existError)
:: Sorts usable and unusable addresses based on quotation marks, .blend and existence

:body
echo %border%
echo %LOC1% Exists
set startime=%time%
:: This puts time when bat run into var

%blender.exe_Location% -b "%LOC1%" -a
echo %border%
Echo RENDER IS COMPLETE
goto :finish
::renders from prompted address

:quoteError
echo %border%
echo ERROR ALPHA: %LOC1% IS NOT SURROUNDED BY "" MARKS
echo .
echo  .
echo   .
echo  .
echo .
echo PLEASE TRY AGAIN
echo %border%
goto :prompt
::presents error info and redirect to prompt

:blendError
echo %border%
echo ERROR BRAVO: %LOC1% IS NOT A ".blend" FILE
echo .
echo  .
echo   .
echo  .
echo .
echo PLEASE TRY AGAIN
echo %border%
goto :prompt
::presents error info and redirect to prompt

:existError
echo %border%
echo ERROR CHARLIE: %LOC1% DOES NOT EXIST OR IS A FOLDER
echo .
echo  .
echo   .
echo  .
echo .
echo PLEASE TRY AGAIN
echo %border%
goto :prompt
::presents error info and redirect to prompt

:finish
set endtime=%time%
:: This puts time when bat ends into var

echo .
echo  .
echo   .
echo  .
echo .

echo RENDER START TIME: %startime%
echo RENDER END TIME: %endtime%
:: States start and end time of bat

echo .
echo  .
echo   .
echo  .
echo .
echo %border%

set /p "restart=Would You Like to Perform Another Render? (y/n)
if /i "y"=="%restart%" (goto :post)
exit

:post
echo .
echo  .
echo   .
echo  .
echo .
echo %border%
goto :prompt

:: Possible Additions: Queing, More Render Customization, Frame Render, In-House File Navigation
