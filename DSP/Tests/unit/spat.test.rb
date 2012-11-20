#!/usr/bin/ruby

require 'Jamoma'

cpu_total = 0.0;

puts
puts "  TESTING SPAT THRU"
o = TTObject.new "spat.snap"
o.send "test"
err, cpu = o.send "getProcessingBenchmark", 1
cpu_total += cpu

puts
puts "time spent calculating audio process method: #{cpu} µs"
puts
