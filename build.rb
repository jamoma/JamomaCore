#!/usr/bin/env ruby -wKU
# encoding: utf-8

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd
$modular = true
Dir.chdir "#{glibdir}/supports"



version = nil
version_maj = 0
version_min = 0
version_sub = 0
version_mod = ''
revision = nil



load "build.rb"


puts "post-build..."
Dir.chdir "#{glibdir}"

if  win32?
else
  # Copy into Max 5 - comment this out if you don't want it
  `rm -r "/Applications/Max5/Cycling '74/extensions/jcom.loader.mxo"`
	`cp -r "../../Builds/MaxMSP/jcom.loader.mxo" "/Applications/Max5/Cycling '74/extensions/jcom.loader.mxo"`
	`cp -r "./Max/support/JamomaConfiguration.xml" "/Applications/Max5/Cycling '74/init/JamomaConfiguration.xml"`
	`cp -r "./library/DeviceManagerLib/plugins/OSC.dylib" "/Applications/Max5/support/OSC.dylib"`
	`cp -r "./library/DeviceManagerLib/plugins/Minuit.dylib" "/Applications/Max5/support/Minuit.dylib"`
	`cp -r "./library/DeviceManagerLib/plugins/CopperLANPlugin.dylib" "/Applications/Max5/support/CopperLANPlugin.dylib"`

  # Copy default files into Max 5 - comment this out if you don't want it
	`cp -r "Max/support/jcom.label.maxdefines" "/Applications/Max5/Cycling '74/default-definitions/jcom.label.maxdefines"`
	`cp -r "Max/support/jcom.textslider.maxdefines" "/Applications/Max5/Cycling '74/default-definitions/jcom.textslider.maxdefines"`
	`cp -r "Max/support/jcom.ui.maxdefines" "/Applications/Max5/Cycling '74/default-definitions/jcom.ui.maxdefines"`

  `cp -r "Max/support/JamomaArarat.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaArarat.maxdefaults"`
  `cp -r "Max/support/JamomaDark.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaDark.maxdefaults"`
  `cp -r "Max/support/JamomaGraphite.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaGraphite.maxdefaults"`
  `cp -r "Max/support/JamomaKulerBologna.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaKulerBologna.maxdefaults"`
  `cp -r "Max/support/JamomaKulerQuietCry.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaKulerQuietCry.maxdefaults"`
  `cp -r "Max/support/JamomaLight.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaLight.maxdefaults"`
  `cp -r "Max/support/JamomaMax.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaMax.maxdefaults"`
  `cp -r "Max/support/JamomaNoir.maxdefaults" "/Applications/Max5/Cycling '74/default-settings/JamomaNoir.maxdefaults"`	
	
	# Copy into Max 6 - comment this out if you don't want it
  `rm -r "/Applications/Max6/Cycling '74/extensions/jcom.loader.mxo"`
	`cp -r "../../Builds/MaxMSP/jcom.loader.mxo" "/Applications/Max6/Cycling '74/extensions/jcom.loader.mxo"`
	`cp -r "./library/DeviceManagerLib/plugins/OSC.dylib" "/Applications/Max6/support/OSC.dylib"`
	`cp -r "./library/DeviceManagerLib/plugins/Minuit.dylib" "/Applications/Max6/support/Minuit.dylib"`
	`cp -r "./library/DeviceManagerLib/plugins/CopperLANPlugin.dylib" "/Applications/Max6/support/CopperLANPlugin.dylib"`	
	
	# Copy default files into Max 6  - comment this out if you don't want it
	`cp -r "Max/support/jcom.label.maxdefines" "/Applications/Max6/Cycling '74/default-definitions/jcom.label.maxdefines"`
	`cp -r "Max/support/jcom.textslider.maxdefines" "/Applications/Max6/Cycling '74/default-definitions/jcom.textslider.maxdefines"`
	`cp -r "Max/support/jcom.ui.maxdefines" "/Applications/Max6/Cycling '74/default-definitions/jcom.ui.maxdefines"`
	
	`cp -r "Max/support/JamomaArarat.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaArarat.maxdefaults"`
  `cp -r "Max/support/JamomaDark.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaDark.maxdefaults"`
  `cp -r "Max/support/JamomaGraphite.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaGraphite.maxdefaults"`
  `cp -r "Max/support/JamomaKulerBologna.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaKulerBologna.maxdefaults"`
  `cp -r "Max/support/JamomaKulerQuietCry.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaKulerQuietCry.maxdefaults"`
  `cp -r "Max/support/JamomaLight.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaLight.maxdefaults"`
  `cp -r "Max/support/JamomaMax.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaMax.maxdefaults"`
  `cp -r "Max/support/JamomaNoir.maxdefaults" "/Applications/Max6/Cycling '74/default-settings/JamomaNoir.maxdefaults"`
  `cp -r "./Max/support/JamomaConfiguration.xml" "/Applications/Max6/Cycling '74/init/JamomaConfiguration.xml"`
end

puts "done"
puts
