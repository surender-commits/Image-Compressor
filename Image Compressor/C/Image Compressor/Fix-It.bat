@echo off

copy "%~dp1%~n1%~x1" "C:\Image Compressor\Backup-Copies\%~n1-Fix-It-%random%-%date%%~x1"

"C:\Image Compressor\ffmpeg\ffmpeg.exe" -i "%~dp1%~n1%~x1"  -loglevel quiet -y "%~dp1%~n1%~x1"

exit