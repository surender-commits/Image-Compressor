@echo off
  
"C:\Image Compressor\ffmpeg\ffmpeg.exe" -i "%~dp1%~n1%~x1"  -loglevel quiet -y "%~dp1%~n1-In-JPG.jpg"

exit