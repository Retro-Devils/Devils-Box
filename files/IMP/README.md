# [IMP] for RetroPie

## Based on every article you ever read about mpg123 scripts in RetroPie.  ##
Integrated Music Player [IMP] allows you to Select and Play [MP3/PLS/M3U] Files like a ROM.  
Automates Playlists, Recalls Last Track/Position, Next/Previous Track, Fade, INFINITE and LITE Mode.  
(No OGG Support) [Recall Last Track/Position] NOT Retained at STARTUP in LITE Mode.  

## [IMP] RETROPIE MENU

Music Player [IMP]  

Current Playlist  
Previous Track  
Play  
Pause  
Stop  
Next Track  
Shuffle Off/On  
Start All Music [*BGM Settings are Respected*] {Icon Changes to Reflect BGM Settings}  
Start BGM Music  
Volume % [mpg123 Player Volume]  

Music [Place MP3/PLS/M3U Files here to have Select and Play Abilities in ES]  
~/RetroPie/roms/music [symbolic link to ~/RetroPie/retropiemenu/imp/music]  

## Settings  ##
Current Settings  
Lite Mode [Off/On]  
Infinite Mode [Off/On]  

BGM Settings [*Will Override Playlist at Startup*]  
BGM A-Side [Off/On] ~/RetroPie/roms/music/bgm/A-SIDE/  
BGM B-Side [Off/On] ~/RetroPie/roms/music/bgm/B-SIDE/  

Game Settings  
Music Over Games [Off/On]  
Volume Fade at Games [Off/On]  
Delay at Game End [seconds]  

HTTP Server [Port:8080 You must STOP HTTP Server before you can START it on Another Directory]  
HTTP Server [Log]  
HTTP Server [On] Music Directory  
HTTP Server [On] ROMS Directory  
HTTP Server [Off]  

Startup Settings  
Music at Startup [Off/On]  
Delay at Startup [seconds]  

## IMPORTANT

LITE MODE:  
[IMP] Writes to File for it's Features, such as forming Playlists when Starting Music, Recall Last Track/Position, Previous Track  
[IMP] Constantly Writes the mpg123 output to a Log File to obtain Info needed for these Features  
Constantly writing to a File while Playing Music may NOT be Ideal Depending on the OS Storage type (SD Card)  
[IMP] 0ffers a LITE Mode for this reason, which Writes the mpg123 output to RAM Disk [tmpfs] instead for less features  
It is RECOMMENDED to use LITE MODE if you are using an SD Card, or Enable [Overlay File System] after setting your BGM Playlist  

INFINITE MODE:  
[IMP] 0ffers an INFINITE Repeat Mode which is implemented by a scripted Infinite L00P of mpg123  
For this reason, it is RECOMMENDED [IMP] always have MUSIC AVAILABLE to Play when using INFINITE Mode  
If you see the [HIGH TEMP ICON] at any point while attempting to Start Music - STOP [IMP]!  
[IMP] will perform various Error checks Automatically to prevent an Infinite [Error] L00P  
However, Should you need to STOP [IMP], Use [STOP] from [retropiemenu] OR manually bash the Stop Script:  
```bash
bash /opt/retropie/configs/imp/stop.sh
```
