#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'

#environment = TTObject.new "environment"
#environment.set "benchmarking", 1

o = TTObject.new "samplematrix"
oName = "TTSampleMatrix"
p = TTObject.new "samplematrix"
pName = "TTSampleMatrix"

attributeTest1 = "numChannels"
attributeTest2 = "lengthInSamples"
attributeValue1 = 2
attributeValue2 = 44100

puts
puts "Testing the interaction between #{attributeTest1} and #{attributeTest2} in the class #{oName}. . ."

#####
puts
puts "**********"
puts "I want to set the dimensions of my #{oName}, but..."

o.set attributeTest1, attributeValue1
temp = o.get attributeTest1

puts
puts "When I try to set #{oName} #{attributeTest1} to #{attributeValue1}..."
puts "#{oName} #{attributeTest1} were set to #{temp}"

o.set attributeTest2, attributeValue2
temp = o.get attributeTest2

puts
puts "When I try to set #{oName} #{attributeTest2} to #{attributeValue2}..."
puts "#{oName} #{attributeTest2} were set to #{temp}"

#####
puts
puts "**********"
puts "OK, let me try it the other way with a new #{pName}..."

p.set attributeTest2, attributeValue2
temp = p.get attributeTest2

puts
puts "When I try to set #{pName} #{attributeTest2} to #{attributeValue2}..."
puts "#{pName} #{attributeTest2} were set to #{temp}"

p.set attributeTest1, attributeValue1
temp = p.get attributeTest1

puts
puts "When I try to set #{pName} #{attributeTest1} to #{attributeValue1}..."
puts "#{pName} #{attributeTest1} were set to #{temp}"


#####
puts
puts "**********"

