#! /bin/sh

NDK_DIRECTORY="/Users/bennyfranco/downloads/ndk/r6b/"
PROJECT_DIRECTORY="/Users/ngramlich/Workspace/gdk/graphic_engines/AndEngine/AndEnginePhysicsBox2DExtension/"

# Run build:
cd ${PROJECT_DIRECTORY}
${NDK_DIRECTORY}ndk-build

# Clean temporary files:
rm -rf ${PROJECT_DIRECTORY}obj
find . -name gdbserver -print0 | xargs -0 rm -rf
find . -name gdb.setup -print0 | xargs -0 rm -rf