#!/usr/bin/env ruby -wKU

puts "Building Ruby Language Extensions..."

`cd library; ruby extconf.rb; make clean; make`

# TODO: what if the person is using Ruby 1.9? Will this still work?

puts `rm -rf /Library/Ruby/Site/1.8/universal-darwin10.0/TTRuby.bundle`
puts `cp library/TTRuby.bundle /Library/Ruby/Site/1.8/universal-darwin10.0/TTRuby.bundle`


puts
puts "=================DONE===================="
  