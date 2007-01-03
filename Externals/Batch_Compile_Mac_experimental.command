#!/bin/bash

cd jcom.hub
xcodebuild -configuration Deployment clean
xcodebuild -configuration Development clean build
cd ..

cd jcom.in
xcodebuild -alltargets -configuration Deployment clean
xcodebuild -alltargets -configuration Development clean build
cd ..

cd jcom.init
xcodebuild -configuration Deployment clean
xcodebuild -configuration Development clean build
cd ..

cd jcom.out
xcodebuild -alltargets -configuration Deployment clean
xcodebuild -alltargets -configuration Development clean build
cd ..

cd jcom.parameter
xcodebuild -alltargets -configuration Deployment clean
xcodebuild -alltargets -configuration Development clean build
cd ..

cd jcom.ramp
xcodebuild -configuration Deployment clean
xcodebuild -configuration Development clean build
cd ..

cd jcom.receive
xcodebuild -configuration Deployment clean
xcodebuild -configuration Development clean build
cd ..

cd jcom.remote
xcodebuild -configuration Deployment clean
xcodebuild -configuration Development clean build
cd ..

cd jcom.return
xcodebuild -configuration Deployment clean
xcodebuild -configuration Development clean build
cd ..

cd jcom.send
xcodebuild -configuration Deployment clean
xcodebuild -configuration Development clean build
cd ..
