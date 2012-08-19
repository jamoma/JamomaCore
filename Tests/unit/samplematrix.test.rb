#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'

environment = TTObject.new "environment"
environment.set "benchmarking", 1

o = TTObject.new "samplematrix"
o.send "test"
# trying to access elements of this object
# it's not working, but it's likely due to my lack of undrstanding
# -- NW

# puts "Samplematrix dimensions: #{o.dim}"
# o.send "test"

err, cpu = o.send "getProcessingBenchmark", 1

puts
puts "time spent calculating audio process method: #{cpu} µs"
puts
