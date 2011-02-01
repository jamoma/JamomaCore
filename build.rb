#!/usr/bin/env ruby -wKU

puts "Building Ruby Language Extensions..."
 
if (RUBY_PLATFORM == "universal-darwin9.0")
  `cd library; ARCHFLAGS="-arch i386" ruby extconf.rb; make clean; make`
else
  `cd library; /usr/bin/ruby extconf.rb; make clean; make`
end

# TODO: what if the person is using Ruby 1.9? Will this still work?


if (RUBY_PLATFORM == "universal-darwin9.0")
  # on Leopard (10.5) you might want to run these lines instead
  puts `rm -rf /Library/Ruby/Site/1.8/universal-darwin9.0/TTRuby.bundle`
  puts `cp library/TTRuby.bundle /Library/Ruby/Site/1.8/universal-darwin9.0/TTRuby.bundle`
else
  puts `rm -rf /Library/Ruby/Site/1.8/universal-darwin10.0/TTRuby.bundle`
  puts `cp library/TTRuby.bundle /Library/Ruby/Site/1.8/universal-darwin10.0/TTRuby.bundle`
end

puts
puts "=================DONE===================="
  