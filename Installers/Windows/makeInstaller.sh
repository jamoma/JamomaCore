#!/bin/bash
# root is the max folder

###################################################################
# make an installer for Jamoma
# note: you must have already done a build
# note: all zips should be unzipped (3rd-party externs) too
###################################################################

echo " Removing old temporary folder"
rm -rf root
rm -f *.wixobj
rm -f Jamoma*.wxs
rm -f Jamoma.msi

echo  " Creating installer directory structure..."
mkdir root
mkdir root/Cycling\ \'74
mkdir root/Cycling\ \'74/max-startup
mkdir root/patches
mkdir root/patches/extras
mkdir root/patches/templates
mkdir root/support
mkdir root/Cycling\ \'74/default-definitions
mkdir root/Cycling\ \'74/default-settings
mkdir root/Cycling\ \'74/extensions
mkdir root/Common\ Files
mkdir root/Common\ Files/TTBlue
mkdir root/Common\ Files/TTBlue/Extensions

echo " Copying .dll in /Jamoma/library/externals/windows folder"
cp ../../../TTBlue/extensions/TTClipper/Release/TTClipper.ttdll ../../Jamoma/library/externals/windows/TTClipper.ttdll
cp ../../../TTBlue/extensions/TTFunctionLib/Release/TTFunctionLib.ttdll ../../Jamoma/library/externals/windows/TTFunctionLib.ttdll
cp ../../../TTBlue/library/Release/TTBlue.dll ../../Jamoma/library/externals/windows/TTBlue.dll
cp ../../Jamoma/SourceCode/Framework/Release/JamomaFramework.dll ../../Jamoma/library/externals/windows/JamomaFramework.dll

echo " Copying the Jamoma folder --  this could take a while..."
cp -r ../../Jamoma root/Cycling\ \'74

echo " Moving TTBlue Extensions"
mv root/Cycling\ \'74/Jamoma/library/externals/windows/TTClipper.ttdll root/Common\ Files/TTBlue/Extensions
mv root/Cycling\ \'74/Jamoma/library/externals/windows/TTFunctionLib.ttdll root/Common\ Files/TTBlue/Extensions

echo " Moving things around (frameworks, loader, templates, etc)..."
mv root/Cycling\ \'74/Jamoma/library/externals/windows/JamomaFramework.dll root/support
mv root/Cycling\ \'74/Jamoma/library/externals/windows/TTBlue.dll root/support
mv root/Cycling\ \'74/Jamoma/library/third-party/WinXP/support/iconv.dll root/support
mv root/Cycling\ \'74/Jamoma/library/third-party/WinXP/support/libxml2.dll root/support
mv root/Cycling\ \'74/Jamoma/library/third-party/WinXP/support/zlib1.dll root/support

mv root/Cycling\ \'74/Jamoma/library/externals/windows/jcom.meter~.mxe root/Cycling\ \'74/max-startup/jcom.meter~.mxe
mv root/Cycling\ \'74/Jamoma/library/externals/windows/jcom.loader.mxe root/Cycling\ \'74/extensions/jcom.loader.mxe

cp root/Cycling\ \'74/Jamoma/support/JamomaArarat.maxdefaults root/Cycling\ \'74/default-settings/JamomaArarat.maxdefaults
cp root/Cycling\ \'74/Jamoma/support/JamomaDark.maxdefaults root/Cycling\ \'74/default-settings/JamomaDark.maxdefaults
cp root/Cycling\ \'74/Jamoma/support/JamomaGraphite.maxdefaults root/Cycling\ \'74/default-settings/JamomaGraphite.maxdefaults
cp root/Cycling\ \'74/Jamoma/support/JamomaKulerQuietCry.maxdefaults root/Cycling\ \'74/default-settings/JamomaKulerQuietCry.maxdefaults
cp root/Cycling\ \'74/Jamoma/support/JamomaLight.maxdefaults root/Cycling\ \'74/default-settings/JamomaLight.maxdefaults
cp root/Cycling\ \'74/Jamoma/support/JamomaMax.maxdefaults root/Cycling\ \'74/default-settings/JamomaMax.maxdefaults
cp root/Cycling\ \'74/Jamoma/support/JamomaNoir.maxdefaults root/Cycling\ \'74/default-settings/JamomaNoir.maxdefaults

cp root/Cycling\ \'74/Jamoma/support/jcom.ui.maxdefines root/Cycling\ \'74/default-definitions/jcom.ui.maxdefines

cp root/Cycling\ \'74/Jamoma/documentation/jamoma-overview.maxpat root/patches/extras/jamoma-overview.maxpat

cp root/Cycling\ \'74/Jamoma/documentation/jamoma-templates/_Jamoma_Patcher_.maxpat root/patches/templates/_Jamoma_Patcher_.maxpat
cp root/Cycling\ \'74/Jamoma/documentation/jamoma-templates/jalg.template.audio~.maxpat root/patches/templates/jalg.template.audio~.maxpat
cp root/Cycling\ \'74/Jamoma/documentation/jamoma-templates/jalg.template.video%.maxpat root/patches/templates/jalg.template.video%.maxpat
cp root/Cycling\ \'74/Jamoma/documentation/jamoma-templates/jmod.template.audio~.maxpat root/patches/templates/jmod.template.audio~.maxpat
cp root/Cycling\ \'74/Jamoma/documentation/jamoma-templates/jmod.template.control.maxpat root/patches/templates/jmod.template.control.maxpat
cp root/Cycling\ \'74/Jamoma/documentation/jamoma-templates/jmod.template.video%.maxpat root/patches/templates/jmod.template.video%.maxpat
cp root/Cycling\ \'74/Jamoma/documentation/jamoma-templates/layout.xml root/patches/templates/layout.xml

echo " Stripping .svn folders..."
rm -rf root/Cycling\ \'74/Jamoma/.svn                              # and remove all .svn folders by brute force (someone can make this better)
rm -rf root/Cycling\ \'74/Jamoma/*/.svn   
rm -rf root/Cycling\ \'74/Jamoma/*/*/.svn
rm -rf root/Cycling\ \'74/Jamoma/*/*/*/.svn
rm -rf root/Cycling\ \'74/Jamoma/*/*/*/*/.svn
rm -rf root/Cycling\ \'74/Jamoma/*/*/*/*/*/.svn
rm -rf root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/.svn
rm -rf root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/.svn
rm -rf root/Cycling\ \'74/Jamoma/*/*/*/*/*/*/*/*/.svn

echo " Removing files that are not needed (.zips, mac, externs, etc)..."
rm -f  root/Cycling\ \'74/Jamoma/library/externals/windows/*.exp
rm -f  root/Cycling\ \'74/Jamoma/library/externals/windows/*.ilk
rm -f  root/Cycling\ \'74/Jamoma/library/externals/windows/*.lib
rm -f  root/Cycling\ \'74/Jamoma/library/externals/windows/*.pdb
rm -f  root/Cycling\ \'74/Jamoma/library/externals/*.log
rm -rf  root/Cycling\ \'74/Jamoma/library/externals/*.zip
rm -rf  root/Cycling\ \'74/Jamoma/library/third-party/Mac
rm -rf  root/Cycling\ \'74/Jamoma/library/third-party/WinXP/*.zip
rm -rf  root/Cycling\ \'74/Jamoma/library/third-party/WinXP/support

echo " Copying readme, license, etc...."
cp root/Cycling\ \'74/Jamoma/GNU-LGPL.rtf root/License.rtf
cp root/Cycling\ \'74/Jamoma/ReadMe.rtf root/ReadMe.rtf

echo " Building Package -- this could take a while..."
echo " MAKE A WIX MODULE FOR THEM??? -- OTHERWISE WE MISS THE FUNCTIONLIB!"

echo " Making candle with paraffin"
../wix/Paraffin.exe -dir root/Cycling\ \'74\\ -custom JamomaC74     -g -direXclude .svn -ext .WXS JamomaC74.wxs
../wix/Paraffin.exe -dir root/patches\\       -custom JamomaPatches -g -direXclude .svn -ext .WXS JamomaPatches.wxs
../wix/Paraffin.exe -dir root/support\\       -custom JamomaSupport -g -direXclude .svn -ext .WXS JamomaSupport.wxs

echo " Now making the installer"
../wix/candle.exe -dvar.ProductVersion="0.5" -dvar.ProductName="Jamoma 0.5" /nologo JamomaC74.wxs
../wix/candle.exe -dvar.ProductVersion="0.5" -dvar.ProductName="Jamoma 0.5" /nologo JamomaPatches.wxs
../wix/candle.exe -dvar.ProductVersion="0.5" -dvar.ProductName="Jamoma 0.5" /nologo JamomaSupport.wxs
../wix/candle.exe -dvar.ProductVersion="0.5" -dvar.ProductName="Jamoma 0.5" /nologo main.wxs 
../wix/candle.exe -dvar.ProductVersion="0.5" -dvar.ProductName="Jamoma 0.5" /nologo ui.wxs 
../wix/light.exe /nologo /out Jamoma.msi main.wixobj JamomaC74.wixobj JamomaPatches.wixobj JamomaSupport.wixobj ui.wixobj ..\\wix\\wixui.wixlib -loc ..\\wix\\WixUI_en-us.wxl

