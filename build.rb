#!/usr/bin/env ruby -wKU

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
	`cp -r "../../Builds/MaxMSP/jcom.loader.mxo" "/Applications/Max5/Cycling '74/extensions/jcom.loader.mxo"`
	`cp -r "./library/DeviceManagerLib/plugins/OSC.dylib" "/Library/Application Support/Jamoma/OSC.dylib"`
	`cp -r "./library/DeviceManagerLib/plugins/Minuit.dylib" "/Library/Application Support/Jamoma/Minuit.dylib"`
	`cp -r "./library/DeviceManagerLib/plugins/CopperLANPlugin.dylib" "/Library/Application Support/Jamoma/CopperLANPlugin.dylib"`
end

puts "done"
puts
