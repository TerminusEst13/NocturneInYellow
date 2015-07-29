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
 ..\7z.exe a -r -ssw -mx -tzip ..\%ProjName%.pk3 *.*
 echo Done packing.
 popd
 rd /s /q pk32\