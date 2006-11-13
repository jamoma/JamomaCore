#!/bin/bash

# TAP.TOOLS ************************
rm -rf ./taptools_artist_root
rm -rf ./taptools_artist_resources
rm -rf ./taptools_pro_root
rm -rf ./taptools_pro_resources

mkdir "taptools_artist_root"
mkdir "taptools_artist_resources"
mkdir "taptools_artist_root/patches"
mkdir "taptools_artist_root/patches/extras"
mkdir "taptools_artist_root/Cycling '74"
mkdir "taptools_artist_root/Cycling '74/init"
mkdir "taptools_artist_root/Cycling '74/jsui-library"
mkdir "taptools_artist_root/Cycling '74/max-startup"
mkdir "taptools_artist_root/Cycling '74/Tap.Tools"
mkdir "taptools_artist_root/Cycling '74/Tap.Tools/Externals"
mkdir "taptools_artist_root/Cycling '74/Tap.Tools/Abstractions"
mkdir "taptools_artist_root/Cycling '74/Tap.Tools/Help"
mkdir "taptools_artist_root/Cycling '74/Tap.Tools/JavaClasses"
mkdir "taptools_artist_root/Cycling '74/Tap.Tools/SupportingFiles"
mkdir "taptools_artist_root/Cycling '74/Tap.Tools/Modules"

mkdir "taptools_pro_root"
mkdir "taptools_pro_resources"
mkdir "taptools_pro_root/patches"
mkdir "taptools_pro_root/patches/extras"
mkdir "taptools_pro_root/Cycling '74"
mkdir "taptools_pro_root/Cycling '74/init"
mkdir "taptools_pro_root/Cycling '74/jsui-library"
mkdir "taptools_pro_root/Cycling '74/max-startup"
mkdir "taptools_pro_root/Cycling '74/Tap.Tools"
mkdir "taptools_pro_root/Cycling '74/Tap.Tools/Externals"
mkdir "taptools_pro_root/Cycling '74/Tap.Tools/Abstractions"
mkdir "taptools_pro_root/Cycling '74/Tap.Tools/Help"
mkdir "taptools_pro_root/Cycling '74/Tap.Tools/JavaClasses"
mkdir "taptools_pro_root/Cycling '74/Tap.Tools/SupportingFiles"
mkdir "taptools_pro_root/Cycling '74/Tap.Tools/Modules"

cp -r ../Build_Mac/Deployment/* "./taptools_artist_root/Cycling '74/Tap.Tools/Externals"
cp -r ../Build_Mac/Deployment/* "./taptools_pro_root/Cycling '74/Tap.Tools/Externals"

cp ../TapTools_Abstractions/* "./taptools_artist_root/Cycling '74/Tap.Tools/Abstractions"
cp ../TapTools_Abstractions/* "./taptools_pro_root/Cycling '74/Tap.Tools/Abstractions"

cp ../TapTools_Support/* "./taptools_artist_root/Cycling '74/Tap.Tools/SupportingFiles"
cp ../TapTools_Support/* "./taptools_pro_root/Cycling '74/Tap.Tools/SupportingFiles"

cp ../Modules/* "./taptools_artist_root/Cycling '74/Tap.Tools/Modules"
cp ../Modules/* "./taptools_pro_root/Cycling '74/Tap.Tools/Modules"

cp ../TapTools_Java/* "./taptools_artist_root/Cycling '74/Tap.Tools/JavaClasses"
cp ../TapTools_Java/* "./taptools_pro_root/Cycling '74/Tap.Tools/JavaClasses"

cp ../TapTools_Help/* "./taptools_artist_root/Cycling '74/Tap.Tools/Help"
cp ../TapTools_Help/* "./taptools_pro_root/Cycling '74/Tap.Tools/Help"

cp ../TapTools_JSUI/* "./taptools_artist_root/Cycling '74/jsui-library"
cp ../TapTools_JSUI/* "./taptools_pro_root/Cycling '74/jsui-library"

cp -r ../Library_Mac/build/Deployment/TapToolsAPI.framework ./taptools_artist_resources
cp -r ../Library_Mac/build/Deployment/TapToolsAPI.framework ./taptools_pro_resources

cp ../TapTools_Miscellaneous/TapTools-ReadMe.rtf "./taptools_artist_root/Cycling '74/Tap.Tools"
cp ../TapTools_Miscellaneous/TapTools-ReadMe.rtf "./taptools_pro_root/Cycling '74/Tap.Tools"
cp ../TapTools_Miscellaneous/TapTools-ReadMe.rtf "./taptools_artist_resources/ReadMe.rtf"
cp ../TapTools_Miscellaneous/TapTools-ReadMe.rtf "./taptools_pro_resources/ReadMe.rtf"

cp ../TapTools_Miscellaneous/TapTools-License-Artist.rtf "./taptools_artist_root/Cycling '74/Tap.Tools"
cp ../TapTools_Miscellaneous/TapTools-License-Pro.rtf "./taptools_pro_root/Cycling '74/Tap.Tools"
cp ../TapTools_Miscellaneous/TapTools-License-Artist.rtf "./taptools_artist_resources/License.rtf"
cp ../TapTools_Miscellaneous/TapTools-License-Pro.rtf "./taptools_pro_resources/License.rtf"

cp ../TapTools_Miscellaneous/taptools-objectlist.txt "./taptools_artist_root/Cycling '74/init"
cp ../TapTools_Miscellaneous/taptools-objectlist.txt "./taptools_pro_root/Cycling '74/init"
cp ../TapTools_Miscellaneous/taptools-objectmappings.txt "./taptools_artist_root/Cycling '74/init"
cp ../TapTools_Miscellaneous/taptools-objectmappings.txt "./taptools_pro_root/Cycling '74/init"

cp ../TapTools_Miscellaneous/postflight.sh "./taptools_artist_resources/postflight"
cp ../TapTools_Miscellaneous/postflight.sh "./taptools_pro_resources/postflight"

cp ../TapTools_Miscellaneous/TapTools-Overview.mxb "./taptools_artist_root/patches/extras"
cp ../TapTools_Miscellaneous/TapTools-Overview.mxb "./taptools_pro_root/patches/extras"

mv "./taptools_artist_root/Cycling '74/Tap.Tools/externals/tap.windowdrag.mxo" "./taptools_artist_root/Cycling '74/max-startup"
mv "./taptools_pro_root/Cycling '74/Tap.Tools/externals/tap.windowdrag.mxo" "./taptools_pro_root/Cycling '74/max-startup"


# JAMOMA ************************
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

rm -rf "build_mac"
rm -rf "__MACOSX"
rm -rf "./jamoma_root/Cycling '74/Jamoma/library/externals/build_windows"
rm -rf "./jamoma_root/Cycling '74/Jamoma/library/externals/build_mac"
unzip "./jamoma_root/Cycling '74/Jamoma/library/externals/build_mac.zip"
rm -rf "./jamoma_root/Cycling '74/Jamoma/library/externals/build_mac.zip"
mv "build_mac" "./jamoma_root/Cycling '74/Jamoma/library/externals"
mv "./jamoma_root/Cycling '74/Jamoma/library/externals/build_mac/Deployment/jmod.meter~.mxo" "./jamoma_root/Cycling '74/max-startup"
rm -f ./jamoma_root/Cycling\ \'74/Jamoma/library/externals/*/*.sln
rm -f ./jamoma_root/Cycling\ \'74/Jamoma/library/externals/*/*.vcproj
mv "./jamoma_root/Cycling '74/Jamoma/documentation/jamoma-overview.mxt" "./jamoma_root/patches/extras"
mv ./jamoma_root/Cycling\ \'74/Jamoma/documentation/templates/* "./jamoma_root/patches/templates"
# Trond removed the init file completely.  If we add it back in, then we will need to un-comment this next line.
#mv "./jamoma_root/Cycling '74/Jamoma/jamoma-init.txt" "./jamoma_root/Cycling '74/init"
rm -rf ./jamoma_root/Cycling\ \'74/Jamoma/library/externals/*/build

# CLEAN-UP ************************
rm -rf ./taptools_root/.svn
rm -rf ./taptools_root/*/.svn
rm -rf ./taptools_root/*/*/.svn
rm -rf ./taptools_root/*/*/*/.svn
rm -rf ./taptools_root/*/*/*/*/.svn
rm -rf ./taptools_root/*/*/*/*/*/.svn
rm -rf ./taptools_root/*/*/*/*/*/*/.svn
rm -rf ./taptools_root/*/*/*/*/*/*/*/.svn
rm -rf ./taptools_root/*/*/*/*/*/*/*/*/.svn
rm -rf ./taptools_root/*/*/*/*/*/*/*/*/*/.svn
rm -rf ./taptools_root/*/*/*/*/*/*/*/*/*/*/.svn

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
