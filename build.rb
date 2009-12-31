#!/usr/bin/env ruby -wKU

puts "Building Ruby Language Extensions..."

`cd library; ruby extconf.rb; make clean; make`
# TODO: need to do "sudo make install" to actually use it -- not sure how to do that in the script

puts
puts "=================DONE===================="
  