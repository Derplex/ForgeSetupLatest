@echo off

cd C:\temp

::Downloading ForgeSetup
echo Downloading ForgeSetup...
powershell -Command "Invoke-WebRequest https://github.com/Derplex/ForgeSetup/releases/download/1.0/ForgeSetup.bat -OutFile ForgeSetup.bat"

::Downloading Version
powershell -Command "Invoke-WebRequest https://maven.minecraftforge.net/net/minecraftforge/forge/latest -OutFile version.txt"
set /p Build=<version.txt

echo Running Latest Download (%Build%) ...
ForgeSetup.bat %Build%