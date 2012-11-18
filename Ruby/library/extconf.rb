#!/usr/bin/env ruby
#
# This is for generating a Makefile to compile Jamoma Ruby support

require 'mkmf'

wd = Dir.pwd
Dir.chdir "../../Foundation/library/includes"
inc = Dir.pwd
Dir.chdir "#{inc}/../../../Foundation/library/boost"
boost = Dir.pwd
Dir.chdir "#{inc}/../../../DSP/library/includes"
dsp = Dir.pwd
Dir.chdir "#{inc}/../../../Graph/library/includes"
graph = Dir.pwd
Dir.chdir "#{inc}/../../../AudioGraph/library/includes"
audiograph = Dir.pwd
Dir.chdir wd

#puts "config: #{inc}"
#puts "dsp: #{dsp}"
#puts "audiograph: #{audiograph}"
#dir_config("#{inc}")
#find_header('TTFoundationAPI.h', "#{inc}")
#find_header('TTFoundationAPI.h', "../../library/includes")
have_func("Init_Jamoma", "Jamoma.cpp")

$CFLAGS = $CFLAGS +     " -I #{inc} -I#{boost} -I #{dsp} -I #{audiograph} -I #{graph} -g -O1 -std=c++11 -stdlib=libc++ "
$CPPFLAGS = $CPPFLAGS + " -I #{inc} -I#{boost} -I #{dsp} -I #{audiograph} -I #{graph} -g -O1 -std=c++11 -stdlib=libc++ "
#$LDFLAGS = $LDFLAGS + " -framework JamomaFoundation -framework JamomaDSP -framework JamomaAudioGraph -framework JamomaGraph"
$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaFoundation.dylib\""
$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaDSP.dylib\""
$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaAudioGraph.dylib\""
$LDFLAGS = $LDFLAGS + " \"/usr/local/lib/JamomaGraph.dylib\""

#$ARCHFLAGS = "-arch i386"

create_makefile("Jamoma")

