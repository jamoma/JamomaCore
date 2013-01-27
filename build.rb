#!/usr/bin/env ruby -wKU
# encoding: utf-8

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd
$modular = true

projectNameParts = glibdir.split('/')
projectName = projectNameParts.last;
projectName.gsub!(/Jamoma/, "")
ENV['JAMOMAPROJECT'] = projectName
Dir.chdir "#{glibdir}/../../Core/Shared"

def cleanAndBuildExternal(glibdir, external)
  puts "Clean and build: #{external}"
  Dir.chdir "#{glibdir}/implementations/MaxMSP/#{external}"
  `xcodebuild clean`
  `xcodebuild build`
end

version = nil
version_maj = 0
version_min = 0
version_sub = 0
version_mod = ''
revision = nil



load "build.rb"

if win32?
else
  
  puts "Making sure that twin projects build on Mac"

  cleanAndBuildExternal glibdir, "jcom.in"
  cleanAndBuildExternal glibdir, "jcom.in~"
  
  cleanAndBuildExternal glibdir, "jcom.message"
  cleanAndBuildExternal glibdir, "jcom.parameter"
  cleanAndBuildExternal glibdir, "jcom.return"
  
  cleanAndBuildExternal glibdir, "jcom.out"
  cleanAndBuildExternal glibdir, "jcom.out~"
  
  cleanAndBuildExternal glibdir, "jcom.receive"
  cleanAndBuildExternal glibdir, "jcom.receive~"

  cleanAndBuildExternal glibdir, "jcom.send"
  cleanAndBuildExternal glibdir, "jcom.send~"

end

puts "post-build..."
Dir.chdir "#{glibdir}"

if  win32?
else
  
  # Copy into Max 5 - comment this out if you don't want it
  
  puts "Copying various files to Max5 folder"
  
  `rm -rf "/Applications/Max5/Cycling '74/extensions/jcom.loader.mxo"`
  `cp -r "../../Builds/MaxMSP/jcom.loader.mxo" "/Applications/Max5/Cycling '74/extensions/jcom.loader.mxo"`
  `cp -r "./Max/support/JamomaConfiguration.xml" "/Applications/Max5/Cycling '74/init/JamomaConfiguration.xml"`

  # Copy default files into Max 5 - comment this out if you don't want it
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
	
	puts "Copying various files to Max6 folder"
	
  `rm -rf "/Applications/Max6/Cycling '74/extensions/jcom.loader.mxo"`
  `cp -r "../../Builds/MaxMSP/jcom.loader.mxo" "/Applications/Max6/Cycling '74/extensions/jcom.loader.mxo"`
  `cp -r "./Max/support/JamomaConfiguration.xml" "/Applications/Max6/Cycling '74/init/JamomaConfiguration.xml"`
	
	# Copy default files into Max 6  - comment this out if you don't want it
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
  
end

puts "done"
puts
