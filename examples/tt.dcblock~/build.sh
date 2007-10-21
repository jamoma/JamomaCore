#!/bin/sh

cp -v ../../source/units/TTDCBlock.m .

make clean
make
cp obj/DoctorOpTilde-0.dll dr.op~.mxe
