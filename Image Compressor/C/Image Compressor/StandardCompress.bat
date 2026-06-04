@echo off

"C:\Image Compressor\ImageMagick\magick.exe" "%~dp1%~n1%~x1"  -resize 600 -density 72 -quality 75 -strip -posterize 25 "%~dp1%~n1-Comp-Standard.jpg"

"C:\Image Compressor\ffmpeg\ffmpeg.exe" -i "%~dp1%~n1-Comp-Standard.jpg" -loglevel quiet -y "%~dp1%~n1-Comp-Standard.jpg" 

exit