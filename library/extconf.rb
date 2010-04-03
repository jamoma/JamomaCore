#!/usr/bin/env ruby
#
# This is for generating a Makefile to compile TTRuby

require 'mkmf'

wd = Dir.pwd
Dir.chdir "../../Foundation/library/includes"
inc = Dir.pwd
Dir.chdir "#{inc}/../../../DSP/library/includes"
dsp = Dir.pwd
Dir.chdir "#{inc}/../../../Graph/library/includes"
graph = Dir.pwd
Dir.chdir "#{inc}/../../../AudioGraph/library/includes"
audiograph = Dir.pwd
Dir.chdir wd

puts "config: #{inc}"
puts "dsp: #{dsp}"
puts "audiograph: #{audiograph}"
#dir_config("#{inc}")
#find_header('TTFoundationAPI.h', "#{inc}")
#find_header('TTFoundationAPI.h', "../../library/includes")
have_func("Init_TTRuby", "TTRuby.cpp")

$CFLAGS = $CFLAGS + " -I #{inc} -I #{dsp} -I #{audiograph} -I #{graph} -g -O1"
$CPPFLAGS = $CPPFLAGS + " -I #{inc} -I #{dsp} -I #{audiograph} -I #{graph} -g -O1"
$LDFLAGS = $LDFLAGS + " -framework JamomaFoundation -framework JamomaDSP -framework JamomaAudioGraph -framework JamomaGraph"
#$ARCHFLAGS = "-arch i386"

create_makefile("TTRuby")

