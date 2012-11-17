#!/usr/bin/env ruby -wKU
# encoding: utf-8

# The Jamoma extension provides access to the Jamoma Platform from within the Ruby environment
require 'Jamoma'
puts

puts "create objects"
puts

dac = TTAudio.new "dac"
osc = TTAudio.new "wavetable"




puts "connect objects into a graph"
puts

dac.connect_audio osc


puts "exporting Max patcher with this graph to /ruby-export-to-max.maxpat"
puts
dac.export_max "/ruby-export-to-max.maxpat"

puts "exporting C++ source for this graph to /ruby-export-to-c++.cpp"
puts
dac.export_cpp "/ruby-export-to-c++.cpp"

puts
