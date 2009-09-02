#!/usr/bin/env ruby

require 'TTRuby'

puts "start"

converter = new TTRuby("TTGraphicsWindow")

puts "converter: #{converter}"

converter.sendMessage("front", 0)



