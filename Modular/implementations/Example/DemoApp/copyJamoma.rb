#!/usr/bin/env ruby -wKU
# encoding: utf-8
puts "copy jamoma support into /usr/local/jamoma/ folder"
glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd
Dir.chdir "#{glibdir}"

# prepare directories
FileUtils.mkdir_p("/usr/local/jamoma/extensions") unless File.exist?("/usr/local/jamoma/extensions")
FileUtils.mkdir_p("/usr/local/jamoma/includes") unless File.exist?("/usr/local/jamoma/includes")
FileUtils.mkdir_p("/usr/local/jamoma/lib") unless File.exist?("/usr/local/jamoma/lib")

# Clean /usr/local/jamoma folder
`rm /usr/local/jamoma/extensions/*.*`
`rm /usr/local/jamoma/includes/*.*`
`rm /usr/local/jamoma/lib/*.*`
`rm /usr/local/lib/*.ttdylib`
`rm /usr/local/lib/Jamoma*.dylib`

# Foundation extensions, includes and lib
`cp "#{glibdir}"/../../../../Foundation/extensions/DataspaceLib/build/DataspaceLib.ttdylib /usr/local/jamoma/extensions`
`cp "#{glibdir}"/../../../../Foundation/extensions/NetworkLib/build/NetworkLib.ttdylib /usr/local/jamoma/extensions`

`cp "#{glibdir}"/../../../../Foundation/library/includes/* /usr/local/jamoma/includes`

`cp "#{glibdir}"/../../../../Foundation/library/build/JamomaFoundation.dylib /usr/local/jamoma/lib`

# DSP extensions, includes and lib
`cp "#{glibdir}"/../../../../DSP/extensions/FunctionLib/build/FunctionLib.ttdylib /usr/local/jamoma/extensions`
`cp "#{glibdir}"/../../../../DSP/extensions/AnalysisLib/build/AnalysisLib.ttdylib /usr/local/jamoma/extensions`

`cp "#{glibdir}"/../../../../DSP/library/includes/* /usr/local/jamoma/includes`

`cp "#{glibdir}"/../../../../DSP/library/build/JamomaDSP.dylib /usr/local/jamoma/lib`

# Modular extensions, includes and lib
`cp "#{glibdir}"/../../../../Modular/extensions/Minuit/build/Minuit.ttdylib /usr/local/jamoma/extensions`
`cp "#{glibdir}"/../../../../Modular/extensions/OSC/build/OSC.ttdylib /usr/local/jamoma/extensions`
`cp "#{glibdir}"/../../../../Modular/extensions/System/build/System.ttdylib /usr/local/jamoma/extensions`
`cp "#{glibdir}"/../../../../Modular/extensions/WebSocket/build/WebSocket.ttdylib /usr/local/jamoma/extensions`

`cp "#{glibdir}"/../../../../Modular/library/includes/*.h /usr/local/jamoma/includes`
`cp "#{glibdir}"/../../../../Modular/library/PeerObject/*.h /usr/local/jamoma/includes`
`cp "#{glibdir}"/../../../../Modular/library/ProtocolLib/Protocol.h /usr/local/jamoma/includes`
`cp "#{glibdir}"/../../../../Modular/library/SchedulerLib/Scheduler.h /usr/local/jamoma/includes`

`cp "#{glibdir}"/../../../../Modular/library/build/JamomaModular.dylib /usr/local/jamoma/lib`

# Create alias
`ln -s /usr/local/jamoma/lib/JamomaFoundation.dylib /usr/local/lib/JamomaFoundation.dylib`
`ln -s /usr/local/jamoma/lib/JamomaDSP.dylib /usr/local/lib/JamomaDSP.dylib`
`ln -s /usr/local/jamoma/lib/JamomaModular.dylib /usr/local/lib/JamomaModular.dylib`

`ln -s /usr/local/jamoma/extensions/AnalysisLib.ttdylib /usr/local/lib/AnalysisLib.ttdylib`
`ln -s /usr/local/jamoma/extensions/FunctionLib.ttdylib /usr/local/lib/FunctionLib.ttdylib`
`ln -s /usr/local/jamoma/extensions/NetworkLib.ttdylib /usr/local/lib/NetworkLib.ttdylib`
`ln -s /usr/local/jamoma/extensions/System.ttdylib /usr/local/lib/System.ttdylib`
`ln -s /usr/local/jamoma/extensions/DataspaceLib.ttdylib /usr/local/lib/DataspaceLib.ttdylib`
`ln -s /usr/local/jamoma/extensions/Minuit.ttdylib /usr/local/lib/Minuit.ttdylib`
`ln -s /usr/local/jamoma/extensions/OSC.ttdylib /usr/local/lib/OSC.ttdylib`
`ln -s /usr/local/jamoma/extensions/WebSocket.ttdylib /usr/local/lib/WebSocket.ttdylib`

puts "done"
puts
