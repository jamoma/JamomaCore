#!/usr/bin/ruby

require 'Jamoma'

cpu_total = 0.0;

puts
puts "TESTING LINEAR FUNCTION"
o = TTObject.new "dataspace.temperature"
o.send "test"
err, cpu = o.send "getProcessingBenchmark", 1
cpu_total += cpu

puts
puts "time spent calculating audio process method: #{cpu_total} µs"
puts
