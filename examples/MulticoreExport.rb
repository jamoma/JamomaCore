#!/usr/bin/env ruby -wKU

# The TTRuby extension provides access to the Jamoma Platform from within the Ruby environment
require 'TTRuby'
puts

puts "create objects"
puts

dac = TTAudio.new "multicore.output"
osc = TTAudio.new "wavetable"




puts "connect objects into a graph"
puts

dac.connect osc


puts "exporting Max patcher with this graph to /ruby-export-to-max.maxpat"
puts
dac.export_max "/ruby-export-to-max.maxpat"

puts "exporting C++ source for this graph to /ruby-export-to-c++.cpp"
puts
dac.export_cpp "/ruby-export-to-c++.cpp"

puts
