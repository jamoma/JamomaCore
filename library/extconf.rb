#!/usr/bin/env ruby
#
# This is for generating a Makefile to compile TTRuby

require 'mkmf'

wd = Dir.pwd
Dir.chdir "../../Foundation/library/includes"
inc = Dir.pwd
Dir.chdir "#{inc}/../../../DSP/library/includes"
dsp = Dir.pwd
Dir.chdir "#{inc}/../../../Multicore/library/includes"
multicore = Dir.pwd
Dir.chdir wd

puts "config: #{inc}"
puts "dsp: #{dsp}"
puts "multicore: #{multicore}"
#dir_config("#{inc}")
#find_header('TTFoundationAPI.h', "#{inc}")
#find_header('TTFoundationAPI.h', "../../library/includes")
have_func("Init_TTRuby", "TTRuby.cpp")

$CFLAGS = $CFLAGS + "-I #{inc} -I #{dsp} -I #{multicore}"
$CPPFLAGS = $CPPFLAGS + "-I #{inc} -I #{dsp} -I #{multicore}"
$LDFLAGS = $LDFLAGS + " -framework JamomaFoundation -framework JamomaDSP -framework JamomaMulticore"
#$ARCHFLAGS = $ARCHFLAGS + "-arch i386"

create_makefile("TTRuby")

