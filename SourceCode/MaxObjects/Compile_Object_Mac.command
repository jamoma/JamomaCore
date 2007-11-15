#!/bin/bash

cd "$1"

# clean only if requested
if [ "$2" = "clean_all" ]; then
	xcodebuild -alltargets -configuration Deployment clean
	xcodebuild -alltargets -configuration Development clean
elif [ "$2" = "clean_debug" ]; then
	xcodebuild -alltargets -configuration Development clean
elif [ "$2" = "clean_release" ]; then
	xcodebuild -alltargets -configuration Deployment clean
elif [ "$2" = "rebuild_release" ]; then
	xcodebuild -alltargets -configuration Deployment clean
	xcodebuild -alltargets -configuration Deployment build
elif [ "$2" = "rebuild_debug" ]; then
	xcodebuild -alltargets -configuration Development clean
	xcodebuild -alltargets -configuration Development build
elif [ "$2" = "build_release" ]; then
	xcodebuild -alltargets -configuration Deployment build
elif [ "$2" = "build_debug" ]; then
	xcodebuild -alltargets -configuration Development build
else
	xcodebuild -alltargets -configuration Deployment clean
	xcodebuild -alltargets -configuration Development clean
	xcodebuild -alltargets -configuration "$2" build
fi

cd ..
