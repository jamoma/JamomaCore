#!/bin/bash

# Arguments:
# clean - cleans all, both release and debug builds
# clean_debug - cleans all debug builds
# clean_release - cleans all release builds
# rebuild_release - cleans only the release builds and then builds release
# rebuild_debug - cleans only debug builds and then builds debug
# build_debug - just does a debug build (no cleaning, only modified files get recompiled)
# build_release - just does a release build (no cleaning, only modified files get recompiled)
#
# 
# You can also use this script in the fashion it was previously used by specifying
# Deployment or Development as the config for building.  It should behave the same 
# as the previous version did.  That is it cleans _everything_ and then rebuilds
# using the configuration you specified (Development or Deployment)
#


config="$1"

if [ "$1" = "clean" ]; then
	config='clean_all'
	echo "cleaning all..."
elif [ "$1" = "clean_debug" ]; then
	config='clean_debug'
	echo "cleaning development builds..."
elif [ "$1" = "clean_release" ]; then
	config='clean_release'
	echo "cleaning deployment builds..."
elif [ "$1" = "rebuild_release" ]; then
	echo "Cleaning and rebuilding as Deployment..."
	config='rebuild_release'
elif [ "$1" = "rebuild_debug" ]; then
	echo "Cleaning and rebuilding as Development..."
	config='rebuild_debug'
elif [ "$1" = "build_release" ]; then
	echo "Building Deployment..."
	config='build_release'
elif [ "$1" = "build_debug" ]; then
	echo "Building Development..."
	config='build_debug'
elif [ "$1" != "Development" ]; then
	echo "Building deployment builds..."
	config='Deployment'
	echo "Building Deployment"
fi


./Compile_Object_Mac.command jcom.change "$config" &&
./Compile_Object_Mac.command jcom.colorspace "$config" && 
./Compile_Object_Mac.command jcom.cubic_interpolate "$config" &&
./Compile_Object_Mac.command jcom.delta "$config" &&
./Compile_Object_Mac.command jcom.delta2 "$config" &&
./Compile_Object_Mac.command jcom.equals "$config" &&
./Compile_Object_Mac.command jcom.gain~ "$config" &&
./Compile_Object_Mac.command jcom.gang "$config" &&
./Compile_Object_Mac.command jcom.hub "$config" &&
./Compile_Object_Mac.command jcom.in "$config" &&
./Compile_Object_Mac.command jcom.init "$config" &&
./Compile_Object_Mac.command jcom.limiter~ "$config" &&
./Compile_Object_Mac.command jcom.meter~ "$config" &&
./Compile_Object_Mac.command jcom.oscroute "$config" &&
./Compile_Object_Mac.command jcom.out "$config" &&
./Compile_Object_Mac.command jcom.parameter "$config" &&
./Compile_Object_Mac.command jcom.pass "$config" &&
./Compile_Object_Mac.command jcom.ramp "$config" &&
./Compile_Object_Mac.command jcom.receive "$config" &&
./Compile_Object_Mac.command jcom.remote "$config" &&
./Compile_Object_Mac.command jcom.return "$config" &&
./Compile_Object_Mac.command jcom.round "$config" &&
./Compile_Object_Mac.command jcom.route "$config" &&
./Compile_Object_Mac.command jcom.saturation~ "$config" &&
./Compile_Object_Mac.command jcom.send "$config" &&
./Compile_Object_Mac.command jcom.stats "$config" &&
./Compile_Object_Mac.command jcom.sum% "$config" &&
./Compile_Object_Mac.command jcom.teabox~ "$config" &&
./Compile_Object_Mac.command jcom.teabox.bits~ "$config" &&
./Compile_Object_Mac.command jcom.teabox.count~ "$config" &&
./Compile_Object_Mac.command jcom.velocity "$config" &&
./Compile_Object_Mac.command jcom.xfade~ "$config" &&
./Compile_Object_Mac.command jcom.zerox~ "$config" &&
./Compile_Object_Mac.command ../ramplib/RampUnits/linear.queue "$config"
./Compile_Object_Mac.command ../ramplib/RampUnits/linear.sched "$config"
./Compile_Object_Mac.command ../ramplib/RampUnits/none "$config"

