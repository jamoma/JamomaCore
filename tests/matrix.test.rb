#!/usr/bin/ruby

require 'Jamoma'

puts
puts "Running Base TTMatrix Tests"
o = TTObject.new "matrix"
o.send "test"

puts
puts "Running TTMatrixGain Tests"
o = TTObject.new "matrix.gain"
o.send "test"

puts
puts "Running TTMatrixStencil Tests"
o = TTObject.new "matrix.stencil"
o.send "test"
