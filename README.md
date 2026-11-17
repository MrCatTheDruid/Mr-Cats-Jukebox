
The below is needed for Mr Cats Jukebox to work.

Download These 2 Files and place them inside the MrCatsJukebox addon folder.



Mr Cats Jukebox:

1. What the addon is

Mr Cats Jukebox is a music player inside World of Warcraft. You play your own music files in-game through a modern style window with album art, playlists, a queue, shuffle and a small mini player. It also supports Clone Hero song folders.

2. Features

Player

Play, pause, resume, stop, skip, previous and shuffle
A progress bar with elapsed and total time
Its own volume control, which puts your game's sound settings back when you stop
A mini player you can resize
Scrolling the mouse wheel moves the song list forward and back a page

Library

Songs from the addon's own Media folder
Songs from any folders listed in MusicFolders.txt (by default, your Windows Music folder).
Songs from linked folders are only read, never changed, converted or copied
Each song gets its own album art.
Clean song titles are built from file names, tags or song.ini

Clone Hero songs

A folder with a song.ini shows up as one song, using its title and artist
All its instrument files (guitar, bass, drums, vocals, song…) play together
If an instrument has both .ogg and .mp3 versions, only one is used, so there's no echo
Uses the folder's album.png or album.jpg as the cover

Organising

Favourites, your own playlists, a playlist for each folder and a "play next" queue
Your settings, playlists and favourites are kept between sessions

Social

Optionally post "Now playing…" in a chat channel

Chat commands

/rj or /rjukebox	Open or close the jukebox
/rj play / stop / skip / prev / shuffle	Control playback
/rj size 50-200	Change the mini player's size
/rj folder	List the folders you added in-game
/rj folder add <path> / remove <n> / clear	Manage those folders
/rj offset	Show the timing for each instrument in the current song
/rj offset <part> <ms> / reset	Fix or reset an instrument's timing

3. What every file does


MrCatsJukebox.toc	Yes	Tells WoW the addon's name, version, game version and which files to load
Core.lua	Yes	The whole in-game addon: window, player, playlists, commands and saved settings
AutoPlaylist.lua	Created by the helper	The song list: file locations, titles, lengths, folders and instrument groups
Art.lua	Created by the helper	The list of album covers
GeneratePlaylist.bat	Yes	Double-click it to run the scanner
GeneratePlaylist.ps1	Yes	The scanner itself (a PowerShell script). See section 4
MusicFolders.txt	Yes	Your extra music folders, one per line. Lines starting with # are ignored
Media\	Yes (empty)	Put songs here if you want the addon to manage them
ffmpeg\	Downloaded	Audio tool used to check and fix songs in Media and to pull out album art
WTF\...\MrCatsJukebox.lua	Created by WoW	Your saved settings, playlists and favourites

4. What the helper downloads and changes on your PC

Downloads (one time only, and only if ffmpeg isn't already installed):

ffmpeg + ffprobe, a free open-source audio tool, from:
https://www.gyan.dev/ffmpeg/builds/ (the Windows builds linked from ffmpeg.org), or
https://github.com/BtbN/FFmpeg-Builds/releases (a backup source)
Saved to MrCatsJukebox\ffmpeg\. It uses 7-Zip or WinRAR to unpack the files if you have them. Otherwise it uses Windows' built-in unzip.
Nothing else is downloaded. There's no tracking, and no data about you is sent anywhere.

Changes:

Writes AutoPlaylist.lua and Art.lua inside the addon folder.
Media folder only: it may rename files with odd characters, rename number-only MP3s using their title tag, and convert files WoW can't play into a format it can.
MusicFolders.txt folders are read only. Nothing is renamed, converted or deleted. Files WoW can't play are just left out of the list.

5. How to use the addon

Install the addon into World of Warcraft\_forever_\Interface\AddOns\MrCatsJukebox.
Optional: add folders to MusicFolders.txt, or put songs in Media\.
Double-click GeneratePlaylist.bat. The first run downloads ffmpeg and takes longer.
Fully restart WoW (/reload doesn't pick up new music files).
