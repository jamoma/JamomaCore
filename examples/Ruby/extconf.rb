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
have_func("Init_TTRuby", "TTRuby.cpp")

$CFLAGS = $CFLAGS + "-I #{inc}"
$CPPFLAGS = $CPPFLAGS + "-I #{inc}"
$LDFLAGS = $LDFLAGS + " -framework JamomaFoundation"
#$ARCHFLAGS = $ARCHFLAGS + "-arch i386"

create_makefile("TTRuby")

