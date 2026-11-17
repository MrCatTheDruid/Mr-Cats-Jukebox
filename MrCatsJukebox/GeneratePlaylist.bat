@echo off
echo ============================================================
echo  Mr Cats Jukebox - Playlist Generator
echo ============================================================
echo.

powershell -ExecutionPolicy Bypass -File "%~dp0GeneratePlaylist.ps1" %*

echo.
pause
