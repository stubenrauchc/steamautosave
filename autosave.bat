start "" %1
:loop
set sourceFile=C:\Users\UserName\AppData\Roaming\RekaGame\Saves\YOUR STEAM ID\SAVEFILENAME.xml
set destinationFolder=C:\Users\UserName\AppData\Roaming\RekaGame\Saves\YOUR STEAM ID\
set newFileName=%destinationFolder%\AutoSave_%date:~10,4%%date:~7,2%%date:~4,2%_%time::=-5%.xml
copy %sourceFile% %newFileName%
timeout /t 300
tasklist | find /i "noita.exe" > nul && goto loop || exit