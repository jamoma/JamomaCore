#!/usr/bin/env ruby -wKU

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd

Dir.chdir "#{glibdir}/supports"
load "build.rb"


puts "post-build..."

if  win32?
else
	`cp -r "../../Builds/jcom.loader.mxo", "/Applications/Max5/Cycling '74/extensions/jcom.loader.mxo"`
end
puts "done"
puts
