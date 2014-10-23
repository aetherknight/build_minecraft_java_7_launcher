set originalLauncher to POSIX path of (choose file with prompt "Please select your original Minecraft.app launcher")

set newLauncher to POSIX path of (choose file name with prompt "Name of new launcher app:" default name "Minecraft-newlauncher.app")

set myPath to POSIX path of (path to me as text)
set resourcePath to myPath & "Contents/Resources/"

set buildScriptPath to resourcePath & "builder.sh"

do shell script "sh " & quoted form of buildScriptPath & " " & quoted form of originalLauncher & " " & quoted form of newLauncher

display dialog "Done! The new launcher can be found at " & newLauncher