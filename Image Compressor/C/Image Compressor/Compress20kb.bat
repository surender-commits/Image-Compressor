@echo off

"C:\Image Compressor\ffmpeg\ffmpeg.exe" -i "%~dp1%~n1%~x1" -loglevel quiet -y "%~dp1%~n1-Comp-20kb.jpg" 

"C:\Image Compressor\20kb-Core.bat" "%~dp1%~n1-Comp-20kb.jpg"

exit