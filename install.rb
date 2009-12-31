#!/usr/bin/env ruby -wKU

puts "Installing Ruby Language Extensions..."

`cd library; sudo make install`

puts
puts "=================DONE===================="
