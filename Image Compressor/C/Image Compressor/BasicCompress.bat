@echo off

"C:\Image Compressor\ImageMagick\magick.exe" "%~dp1%~n1%~x1" -strip -density 72 -quality 75 "%~dp1%~n1-Comp-Basic.jpg"

"C:\Image Compressor\ffmpeg\ffmpeg.exe" -i "%~dp1%~n1-Comp-Basic.jpg" -loglevel quiet -y "%~dp1%~n1-Comp-Basic.jpg" 

exit