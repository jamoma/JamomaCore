#!/bin/bash

config="$1"

if [ "$1" != "Development" ]; then
	config='Deployment'
	echo "if'd"
fi

./Compile_Object_Mac.command jcom.change "$config"
./Compile_Object_Mac.command jcom.colorspace "$config"
./Compile_Object_Mac.command jcom.cubic_interpolate "$config"
./Compile_Object_Mac.command jcom.delta "$config"
./Compile_Object_Mac.command jcom.delta2 "$config"
./Compile_Object_Mac.command jcom.equals "$config"
./Compile_Object_Mac.command jcom.gain~ "$config"
./Compile_Object_Mac.command jcom.gang "$config"
./Compile_Object_Mac.command jcom.hub "$config"
./Compile_Object_Mac.command jcom.in "$config"
./Compile_Object_Mac.command jcom.init "$config"
./Compile_Object_Mac.command jcom.limiter~ "$config"
./Compile_Object_Mac.command jcom.meter~ "$config"
./Compile_Object_Mac.command jcom.oscroute "$config"
./Compile_Object_Mac.command jcom.out "$config"
./Compile_Object_Mac.command jcom.parameter "$config"
./Compile_Object_Mac.command jcom.pass "$config"
./Compile_Object_Mac.command jcom.ramp "$config"
./Compile_Object_Mac.command jcom.receive "$config"
./Compile_Object_Mac.command jcom.remote "$config"
./Compile_Object_Mac.command jcom.return "$config"
./Compile_Object_Mac.command jcom.round "$config"
./Compile_Object_Mac.command jcom.route "$config"
./Compile_Object_Mac.command jcom.saturation~ "$config"
./Compile_Object_Mac.command jcom.send "$config"
./Compile_Object_Mac.command jcom.stats "$config"
./Compile_Object_Mac.command jcom.sum% "$config"
./Compile_Object_Mac.command jcom.teabox~ "$config"
./Compile_Object_Mac.command jcom.teabox.bits~ "$config"
./Compile_Object_Mac.command jcom.teabox.count~ "$config"
./Compile_Object_Mac.command jcom.velocity "$config"
./Compile_Object_Mac.command jcom.xfade~ "$config"
./Compile_Object_Mac.command jcom.zerox~ "$config"

./Compile_Object_Mac.command ../ramplib/RampUnits/LinearSched "$config"

