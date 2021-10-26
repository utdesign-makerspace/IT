mkdir C:\Users\$env:USERNAME\AppData\roaming\cura\
mkdir C:\Users\$env:USERNAME\AppData\roaming\PrusaSlicer\
Invoke-WebRequest -Uri http://storage.utd.ms/index.php/s/JffA8bi8AyaHf9J/download/cura.zip -OutFile C:\Users\$env:USERNAME\AppData\roaming\cura\curaprofiles.zip
Invoke-WebRequest -Uri http://storage.utd.ms/index.php/s/S9tP9EnzLXP5LAQ/download/PrusaSlicer.zip -OutFile C:\Users\$env:USERNAME\AppData\roaming\PrusaSlicer\psprofiles.zip
Expand-Archive -LiteralPath C:\Users\$env:USERNAME\AppData\roaming\Cura\curaprofiles.zip -DestinationPath  C:\Users\$env:USERNAME\AppData\roaming
Expand-Archive -LiteralPath C:\Users\$env:USERNAME\AppData\roaming\PrusaSlicer\psprofiles.zip -DestinationPath  C:\Users\$env:USERNAME\AppData\roaming
msg $env:USERNAME '3D Print Profiles Installed'
Pause