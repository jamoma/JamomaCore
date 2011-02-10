#!/usr/bin/ruby

require 'TTRuby'

o = TTObject.new "gain"
o.send "test"

err, cpu = o.send "getProcessingBenchmark", 1

puts
puts "time spent calculating audio process method: #{cpu} ms"
puts
