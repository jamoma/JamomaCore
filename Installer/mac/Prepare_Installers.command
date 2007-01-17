#!/bin/bash

rm -rf ./jamoma_root
#rm -rf ./jamoma_resources

mkdir "jamoma_root"
#mkdir "jamoma_resources"
mkdir "jamoma_root/patches"
mkdir "jamoma_root/patches/extras"
mkdir "jamoma_root/patches/templates"
mkdir "jamoma_root/Cycling '74"
mkdir "jamoma_root/Cycling '74/init"
mkdir "jamoma_root/Cycling '74/max-startup"
mkdir "jamoma_root/Cycling '74/Jamoma"

cp -r ../../Jamoma/* "./jamoma_root/Cycling '74/Jamoma"

rm -rf "mac"
rm -rf "__MACOSX"
rm -rf "./jamoma_root/Cycling '74/Jamoma/library/externals/windows"
rm -rf "./jamoma_root/Cycling '74/Jamoma/library/externals/mac"
unzip "./jamoma_root/Cycling '74/Jamoma/library/externals/mac.zip"
rm -rf "./jamoma_root/Cycling '74/Jamoma/library/externals/mac.zip"
rm -rf "__MACOSX"
mv "mac" "./jamoma_root/Cycling '74/Jamoma/library/externals/mac"
mv "./jamoma_root/Cycling '74/Jamoma/library/externals/mac/jcom.meter~.mxo" "./jamoma_root/Cycling '74/max-startup"
mv "./jamoma_root/Cycling '74/Jamoma/documentation/jamoma-overview.mxt" "./jamoma_root/patches/extras"
mv ./jamoma_root/Cycling\ \'74/Jamoma/documentation/templates/* "./jamoma_root/patches/templates"


# CLEAN-UP ************************
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/*/*/*/*/*/.svn
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/*/*/*/*/*/*/.svn
