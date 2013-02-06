#!/usr/bin/ruby

require 'Jamoma'

environment = TTObject.new "environment"
environment.set "benchmarking", 1

puts
puts "  TESTING SPAT THRU"
o = TTObject.new "spat.snap"
o.send "test"

err, cpu = o.send "getProcessingBenchmark", 1

puts
puts "time spent calculating audio process method: #{cpu} µs"
puts

puts
puts "  TESTING SPAT DBAP"
o = TTObject.new "spat.dbap"
o.send "test"

err, cpu = o.send "getProcessingBenchmark", 1

puts
puts "time spent calculating audio process method: #{cpu} µs"
puts