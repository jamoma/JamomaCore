#!/usr/bin/env ruby -wKU

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




puts "start processing the graph"
puts
dac.send "start"




puts "play a tune"
puts

osc.set "frequency", 220.0
sleep 1.0

osc.set "frequency", 440.0
sleep 1.0

osc.set "frequency", 330.0
sleep 0.5

osc.set "frequency", 220.0
sleep 2.0




puts "stop processing the graph"
puts
dac.send "stop"


puts
