# build_minecraft_java_7_launcher

A script for creating a Java 7-friendly Mac Minecraft.app from the original
Java 6 launcher.

## Usage

The script takes the path to the original Minecraft.app launcher, and it will
create a new launcher that uses a shell script instead of the
JavaApplicationStub used by Apple's Java 6. The script should work with either
Oracle's Java 7+ or Apple's Java 6.

To create the new launcher:

    ./build_minecraft_java_7_launcher /path/to/Minecraft.app /path/to/Minecraft-newlauncher.app

This approach is taken in order to avoid storing the bootstrap.jar or app icon
in a repository.
