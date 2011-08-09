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

puts "TESTING GAIN DATASPACE"
o = TTObject.new "dataspace.gain"
o.send "test"

puts

puts "TESTING DISTANCE DATASPACE"
o = TTObject.new "dataspace.distance"
o.send "test"

puts

puts "TESTING DISTANCE DATASPACE"
o = TTObject.new "dataspace.speed"
o.send "test"

puts