@echo off

"C:\Image Compressor\ffmpeg\ffmpeg.exe" -i "%~dp1%~n1%~x1" -loglevel quiet -y "%~dp1%~n1-Comp-50kb.jpg" 

"C:\Image Compressor\50kb-Core.bat" "%~dp1%~n1-Comp-50kb.jpg"

exit