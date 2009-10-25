#!/usr/bin/env ruby -wKU

require 'TTRuby'

puts "start"

converter = TTRuby.new("TTGraphicsWindow")

puts "converter: #{converter}"

converter.sendMessage("front", 0)



