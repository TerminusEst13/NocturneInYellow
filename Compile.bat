 @echo off
REM HOW TO USE: Dump the correct file/folder structure into /src/, watch magic happen. 
REM Which is to say, basically have the entire .pk3 floating around in the folder "src".
 set ProjName=NIY
 echo Ready to Start.

 :20
 echo Step 1: Packing
 echo Packing...
 mkdir pk32
 robocopy pk3\ pk32\ /E /NP
 pushd pk32
 rd /s /q zanactors\
 ..\7z a -r -ssw -mx -tzip ..\%ProjName%n.pk3 *.txt *.o *.png *.wad *.md2 *.md3 *.tga *.acs *.mp3 *.ogg *.pal *.bmp *.map *.t* *.flac *.mus
 echo Done packing.
 popd
 rd /s /q pk32\
 echo Step 2: Replace old version
 echo Replacing old version.
 del %ProjName%.pk3
 ren %ProjName%n.pk3 %ProjName%.pk3
 echo Done replacing.
 echo Done.
