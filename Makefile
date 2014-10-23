#!/bin/sh -e

NAME=Build\ Java\ 7-compatible\ Minecraft\ Launcher

all: $(NAME).app

$(NAME).app : $(NAME).applescript
	osacompile -o "$@" "$<"
	mkdir -p "$@/Contents/Resources/"
	cp builder.sh "$@/Contents/Resources/"
	cp Info.plist "$@/Contents/Resources/"
	cp MinecraftLauncher "$@/Contents/Resources/"
	mv "$@/Contents/Info.plist" "$@/Contents/Info.plist.old"
	awk '/<\/dict>/{print "\t<key>NSHighResolutionCapable</key>\n\t<true/>"}1' "$@/Contents/Info.plist.old" > "$@/Contents/Info.plist"
	rm "$@/Contents/Info.plist.old"

clean:
	rm -r $(NAME).app
