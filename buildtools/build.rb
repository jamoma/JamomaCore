#!/usr/bin/env ruby -wKU

###################################################################
# Build Jamoma
###################################################################


if(ARGV.length == 0)
  puts "usage: "
  puts "build.rb <required:configuration> <optional:clean>"
  exit 0;
elsif(ARGV.length > 2)
  `ruby build-dsp.rb ${ARGV[1]} ${ARGV[2]}`
  `ruby build-multicore.rb ${ARGV[1]} ${ARGV[2]}`
  `ruby build-modular.rb ${ARGV[1]} ${ARGV[2]}`
elsif(ARGV.length > 1)
  `ruby build-dsp.rb ${ARGV[1]}`
  `ruby build-multicore.rb ${ARGV[1]}`
  `ruby build-modular.rb ${ARGV[1]}`
end



