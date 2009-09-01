#!/usr/bin/env ruby
#
# This is for generating a Makefile to compile TTRuby

require 'mkmf'

wd = Dir.pwd
Dir.chdir "../../library/includes"
inc = Dir.pwd
Dir.chdir wd

puts "config: #{inc}"
#dir_config("#{inc}")
#find_header('TTFoundationAPI.h', "#{inc}")
#find_header('TTFoundationAPI.h', "../../library/includes")

$CFLAGS = $CFLAGS + "-I #{inc}"
$LDFLAGS = $LDFLAGS + " -framework JamomaFoundation"


create_makefile("TTRuby")

