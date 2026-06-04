@echo off

"C:\Image Compressor\ImageMagick\magick.exe" "%~dp1%~n1%~x1" -resize 600 -quality 75 -density 72 -posterize 75 -strip "%~dp1%~n1%~x1"

set /a resize=600
set /a quality=75
set /a density=72
set /a posterize=75


set /a index=0

setlocal enabledelayedexpansion


:forLoop

if !index! EQU 10 (    

  goto :failed

)

set /a resize=!resize! - 100
if !resize! LSS 200 set "resize=200"

set /a quality=!quality! - 10
if !quality! LSS 25 set "quality=25"

set /a density=!density! - 15
if !density! LSS 10 set "density=10"

set /a posterize=!posterize! - 10
if !posterize! LSS 25 set "posterize=25"

if %~z1 LSS 50000 (    

  goto :endOfLoop

)

echo Index: !index!
echo %~z1
echo !resize! !quality! !density! !posterize!
echo "File size is above 50KB. Waiting..."

"C:\Image Compressor\ImageMagick\magick.exe" "%~dp1%~n1%~x1" -resize !resize! -quality !quality! -density !density! -posterize !posterize! "%~dp1%~n1%~x1"

"C:\Image Compressor\ffmpeg\ffmpeg.exe" -i "%~dp1%~n1%~x1" -loglevel quiet -y "%~dp1%~n1%~x1" 
 
set /a index=!index! + 1

goto :forLoop


:failed
echo Index: !index!
echo !resize! !quality! !density! !posterize!
echo %~z1
echo "File size is above 50KB. Failed."
echo "Failed."
echo "Failed."
echo "Failed."
endlocal
msg * "Failed."
exit


:endOfLoop
echo Index: !index!
echo !resize! !quality! !density! !posterize!
echo %~z1
echo "File size is below 50KB. Exiting loop."
echo "Done."
echo "Done."
echo "Done."
endlocal
msg * "Successful."
exit