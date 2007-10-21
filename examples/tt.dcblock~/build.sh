#!/bin/sh

cp -v ../../source/units/TTDCBlock.m .

make clean
make
cp obj/TTDCBlockTilde-0.dll tt.dcblock~.mxe
