#!/usr/bin/ruby

require 'Jamoma'


puts
puts "TESTING TEMPERATURE DATASPACE"
o = TTObject.new "dataspace.temperature"
o.send "test"

puts

puts "TESTING DEGREE DATASPACE"
o = TTObject.new "dataspace.angle"
o.send "test"

puts