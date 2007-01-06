#!/bin/bash

cd jcom.change
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.colorchange
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.cubic_interpolate
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.delta
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.delta2
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.equals
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.gain~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.gang
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.hub
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.in
xcodebuild -alltargets -configuration Deployment clean build
cd ..

cd jcom.init
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.limiter~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.meter~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.oscroute
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.out
xcodebuild -alltargets -configuration Deployment clean build
cd ..

cd jcom.parameter
xcodebuild -alltargets -configuration Deployment clean build
cd ..

cd jcom.pass
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.ramp
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.receive
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.remote
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.return
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.round
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.route
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.saturation~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.send
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.stats
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.sum%
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.teabox~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.teabox.bits~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.teabox.count~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.velocity
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.xfade~
xcodebuild -configuration Deployment clean build
cd ..

cd jcom.zerox~
xcodebuild -configuration Deployment clean build
cd ..
