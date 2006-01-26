#!/bin/bash

cd jmod_change
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_gain_tilde
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_limiter_tilde
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_meter_tilde
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_pass
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_round
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_route
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_saturation_tilde
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_sym_compare
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_xfade_tilde
xcodebuild -configuration Release clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..