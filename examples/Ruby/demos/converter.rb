#!/usr/bin/env ruby -wKU

require 'TTRuby'

puts "start"

#converter = TTRuby.new("dataspace.gain") # dataspace lib
converter = TTRuby.new("exponential") # function lib

puts "converter: #{converter}"

#converter.setAttributeValue("base" 2.8)

#converter.sendMessage("front", 0)
puts converter.calculateValue(0.5)


