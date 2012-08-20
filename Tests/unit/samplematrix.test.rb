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
puts "Testing the differences between #{oName} and its superclass #{pName} . . ."

#####
puts
puts "**********"

puts
puts "#{oName} has the following attributes: "
puts o.attributes?

puts
puts "#{pName} has the following attributes: "
puts p.attributes?

#####
puts
puts "**********"

puts
puts "#{oName} understands the following messages: "
puts o.messages?

puts
puts "#{pName} understands the following messages: "
puts p.messages?

#####
puts
puts "**********"

attributeTest = "dimensions"
attributeValue = 2

o.set attributeTest, attributeValue
temp = o.get attributeTest

puts
puts "#{oName} #{attributeTest} were set to #{temp}"

p.set attributeTest, attributeValue
temp = p.get attributeTest

puts
puts "#{pName} #{attributeTest} were set to #{temp}"

#####
puts
puts "**********"

attributeTest = "elementCount"
attributeValue = 65

o.set attributeTest, attributeValue
temp = o.get attributeTest

puts
puts "#{oName} #{attributeTest} was set to #{temp}"

p.set attributeTest, attributeValue
temp = p.get attributeTest

puts
puts "#{pName} #{attributeTest} was set to #{temp}"

#####
puts
puts "**********"

attributeTest = "type"

temp = o.get attributeTest

puts
puts "#{oName} #{attributeTest} is #{temp}"

temp = p.get attributeTest

puts
puts "#{pName} #{attributeTest} is #{temp}"

#####
puts
puts "**********"

#err, cpu = o.send "getProcessingBenchmark", 1

#puts
#puts "time spent calculating audio process method: #{cpu} µs"
puts
