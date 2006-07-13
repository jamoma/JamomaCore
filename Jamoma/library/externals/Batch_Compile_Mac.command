#!/bin/bash

cd jmod_change
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_dispatcher
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_equals
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_gain_tilde
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_limiter_tilde
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_meter_tilde
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_oscroute
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_param
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_pass
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_round
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_route
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_saturation_tilde
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_sum%
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..

cd jmod_xfade_tilde
xcodebuild -configuration Deployment clean build
/Developer/Tools/CpMac -r build/Release/* ../build_mac
cd ..