#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'

#environment = TTObject.new "environment"
#environment.set "benchmarking", 1

o = TTObject.new "matrix"
oName = "TTMatrix"
p = TTObject.new "samplematrix"
pName = "TTSampleMatrix"

puts
puts "Testing the differences between #{pName} and its superclass #{oName} . . ."

#####
puts
puts "**********"
puts "I want to set the dimensions, but..."

attributeTest = "numChannels"
attributeValue1 = 2

p.set attributeTest, attributeValue1
temp = p.get attributeTest

puts
puts "When I try to set #{pName} #{attributeTest} to #{attributeValue1}..."
puts "#{pName} #{attributeTest} were set to #{temp}"

attributeTest = "lengthInSamples"
attributeValue1 = 44100

p.set attributeTest, attributeValue1
temp = p.get attributeTest

puts
puts "When I try to set #{pName} #{attributeTest} to #{attributeValue1}..."
puts "#{pName} #{attributeTest} were set to #{temp}"

#####
puts
puts "**********"

