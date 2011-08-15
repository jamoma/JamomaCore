#!/usr/bin/ruby

require 'Jamoma'

puts "TESTING ANGLE DATASPACE"
o = TTObject.new "dataspace.angle"
o.send "test"
puts

puts "TESTING COLOR DATASPACE"
o = TTObject.new "dataspace.color"
o.send "test"
puts

puts "TESTING DISTANCE DATASPACE"
o = TTObject.new "dataspace.distance"
o.send "test"
puts

puts "TESTING GAIN DATASPACE"
o = TTObject.new "dataspace.gain"
o.send "test"
puts

puts "TESTING ORIENTATION DATASPACE"
o = TTObject.new "dataspace.orientation"
o.send "test"
puts

puts "TESTING POSITION DATASPACE"
o = TTObject.new "dataspace.position"
o.send "test"
puts

puts "TESTING SPEED DATASPACE"
o = TTObject.new "dataspace.speed"
o.send "test"
puts

puts "TESTING TEMPERATURE DATASPACE"
o = TTObject.new "dataspace.temperature"
o.send "test"
puts

puts "TESTING TIME DATASPACE"
o = TTObject.new "dataspace.time"
o.send "test"
puts