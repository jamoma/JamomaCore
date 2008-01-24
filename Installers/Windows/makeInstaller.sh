#!/bin/bash
# root is the max folder

echo "copying"
rm -rf root
rm -f *.wixobj
rm -f Jamoma*.wxs
rm -f Jamoma.msi

mkdir root
mkdir root/Cycling\ \'74
mkdir root/Cycling\ \'74/max-startup
mkdir root/patches
mkdir root/patches/extras
mkdir root/support

cp -r ../../Jamoma root/Cycling\ \'74
mv root/Cycling\ \'74/Jamoma/library/externals/windows/jcom.meter~.mxe root/Cycling\ \'74/max-startup/jcom.meter~.mxe
cp root/Cycling\ \'74/Jamoma/documentation/jamoma-overview.mxt root/patches/extras/jamoma-overview.mxt
mv root/Cycling\ \'74/Jamoma/library/third-party/win-support/iconv.dll root/support
mv root/Cycling\ \'74/Jamoma/library/third-party/win-support/libxml2.dll root/support
mv root/Cycling\ \'74/Jamoma/library/third-party/win-support/zlib1.dll root/support
cp root/Cycling\ \'74/Jamoma/GNU-LGPL.rtf License.rtf

echo "making candle with paraffin"
../wix/Paraffin.exe -dir root/Cycling\ \'74\\ -custom JamomaC74     -g -direXclude .svn -ext .WXS JamomaC74.wxs
../wix/Paraffin.exe -dir root/patches\\       -custom JamomaPatches -g -direXclude .svn -ext .WXS JamomaPatches.wxs
../wix/Paraffin.exe -dir root/support\\       -custom JamomaSupport -g -direXclude .svn -ext .WXS JamomaSupport.wxs

echo "now making the installer"
../wix/candle.exe -dvar.ProductVersion="0.4.6" -dvar.ProductName="Jamoma 0.4.6" /nologo JamomaC74.wxs
../wix/candle.exe -dvar.ProductVersion="0.4.6" -dvar.ProductName="Jamoma 0.4.6" /nologo JamomaPatches.wxs
../wix/candle.exe -dvar.ProductVersion="0.4.6" -dvar.ProductName="Jamoma 0.4.6" /nologo JamomaSupport.wxs
../wix/candle.exe -dvar.ProductVersion="0.4.6" -dvar.ProductName="Jamoma 0.4.6" /nologo main.wxs 
../wix/candle.exe -dvar.ProductVersion="0.4.6" -dvar.ProductName="Jamoma 0.4.6" /nologo ui.wxs 
../wix/light.exe /nologo /out Jamoma.msi main.wixobj JamomaC74.wixobj JamomaPatches.wixobj JamomaSupport.wixobj ui.wixobj ..\\wix\\wixui.wixlib -loc ..\\wix\\WixUI_en-us.wxl

