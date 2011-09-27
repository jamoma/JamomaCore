#!/usr/bin/env ruby -wKU

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd

Dir.chdir "#{glibdir}/supports"
load "build.rb"

puts "post-build..."
Dir.chdir "#{glibdir}"

if  win32?
else
	`cp -r "../../Builds/MaxMSP/jcom.plug.loader.mxo" "/Applications/Max5/Cycling '74/max-startup/jcom.plug.loader.mxo"`
end

puts "done"
puts