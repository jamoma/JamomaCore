#!/usr/bin/env ruby -wKU

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd

Dir.chdir "#{glibdir}/supports"
load "build.rb"
 

#if  win32?
#else
#	`cp -r "../../../Builds/MaxMSP/jcom.fxlib≈.mxo" "/Applications/Max5/Cycling '74/extensions/jcom.fxlib≈.mxo"`
#end
