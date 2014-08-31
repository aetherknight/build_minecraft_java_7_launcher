#!/bin/sh
# Usage: sh build_minecraft_java_7_launcher.sh /Applications/Minecraft.app /Applications/Minecraft-better-launcher.app

#if [ $# -ne 2 ] ; then
#    echo "Usage: $0 /Applications/Minecraft.app /Applications/Minecraft-better-launcher.app"
#    exit 1
#fi

ORIG_LAUNCHER=$1
DEST_LAUNCHER=$2

RESOURCES=`dirname "$0"`

mkdir -p "${DEST_LAUNCHER}"
mkdir -p "${DEST_LAUNCHER}/Contents"
echo "${RESOURCES}/Info.plist" 
cp "${RESOURCES}/Info.plist" "${DEST_LAUNCHER}/Contents/"

mkdir -p "${DEST_LAUNCHER}/Contents/MacOS"
cp -p "${RESOURCES}/MinecraftLauncher" "${DEST_LAUNCHER}/Contents/MacOS/"

mkdir -p "${DEST_LAUNCHER}/Contents/Resources"
cp -R "${ORIG_LAUNCHER}/Contents/Resources/en.lproj"     "${DEST_LAUNCHER}/Contents/Resources/"
cp -R "${ORIG_LAUNCHER}/Contents/Resources/favicon.icns" "${DEST_LAUNCHER}/Contents/Resources/"
cp -R "${ORIG_LAUNCHER}/Contents/Resources/Java"         "${DEST_LAUNCHER}/Contents/Resources/"

echo Done.
