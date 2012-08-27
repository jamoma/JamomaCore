#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'
require 'Matrix'

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
puts "I want to set the dimensions, but it seems I can only set 1..."

attributeTest = "dimensions"
attributeValue1 = Matrix[44100, 2]

o.set attributeTest, attributeValue1
temp = o.get attributeTest

puts
puts "#{oName} #{attributeTest} were set to #{temp}"

