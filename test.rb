#!/usr/bin/ruby -wKU
# jln-, 2011/08/15

# Lets build an array with all contained *.test.rb files so we can load them successively

tests = `find ./Tests/*.rb`.split("\n")

tests.each do |t|
  puts "========================================="
  puts "LOADING #{t}"
  puts "========================================="
  load "#{t}"
  puts "=================DONE===================="
end