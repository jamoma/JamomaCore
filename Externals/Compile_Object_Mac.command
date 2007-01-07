#!/bin/bash

cd "$1"
xcodebuild -alltargets -configuration Deployment clean
xcodebuild -alltargets -configuration Development clean
xcodebuild -alltargets -configuration "$2" build
cd ..
