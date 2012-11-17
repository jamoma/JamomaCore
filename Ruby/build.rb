#!/usr/bin/env ruby -wKU
# encoding: utf-8

puts "Building Ruby Language Extensions..."
 
if (RUBY_PLATFORM == "universal-darwin9.0")
  `cd library; ARCHFLAGS="-arch i386" ruby extconf.rb; make clean; make; cd ..`
else
  `cd library; ruby extconf.rb; make clean; make; cd ..`
end

load "install.rb"

puts
puts "=================DONE===================="
  