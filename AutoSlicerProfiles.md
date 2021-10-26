# Creating Profiles
The first step is to configure a clean install of PrusaSlicer and/or Cura with the profiles required. After that, you will
zip the correct configuration folders for each (both softwares will reveal its configuration folder using the Help menu)
and upload them to a file server. Currently, the script is pointed at the Nextcloud test server on blade01, with public access links.

# Scripting
A copy of the script written by me is available in this repository. I have also included a Windows shortcut file that launches the script, the shortcut should
be placed in `C:\Users\Public\Desktop` to make it available to all users automatically. The script downloads the zip files of our configured slicers and unzips
them into the correct folders.

# Windows Configuration
Using the administrator account, you will need to configure the Group Policy to allow for script execution. To do this, open the Group Policy editor, expand 
Administrative Templates under Computer Configuration, then within Windows Components find the Windows PowerShell menu. Double click on "Turn on Script Execution"
and click Enable. Under Execution Policy, choose "Allow local scripts and remote signed scripts"
