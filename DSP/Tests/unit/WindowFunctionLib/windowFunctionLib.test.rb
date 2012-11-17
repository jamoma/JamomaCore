#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'

environment = TTObject.new "environment"
environment.set "benchmarking", 1

cpu_total = 0.0;

puts
puts "  TESTING HAMMING WINDOW"
o = TTObject.new "hamming"
o.send "test"
err, cpu = o.send "getProcessingBenchmark", 1
cpu_total += cpu

puts "  TESTING KAISER WINDOW"
o = TTObject.new "kaiser"
o.send "test"
err, cpu = o.send "getProcessingBenchmark", 1
cpu_total += cpu

puts "  TESTING TUKEY WINDOW"
o = TTObject.new "tukey"
o.send "test"
err, cpu = o.send "getProcessingBenchmark", 1
cpu_total += cpu

puts "  TESTING GAUSS WINDOW"
o = TTObject.new "gauss"
o.send "test"
err, cpu = o.send "getProcessingBenchmark", 1
cpu_total += cpu

puts "  TESTING RECTANGULAR WINDOW"
o = TTObject.new "rectangular"
o.send "test"
err, cpu = o.send "getProcessingBenchmark", 1
cpu_total += cpu


puts
puts "time spent calculating audio process method: #{cpu_total} µs"
puts
