#!/usr/bin/env ruby -wKU

###################################################################
# Build Jamoma
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir        # change to libdir so that requires work
require "support/jamomalib"   # C74 build library

if(ARGV.length == 0)
  puts "usage: "
  puts "build.rb <required:configuration> <optional:clean>"
  exit 0;
end

configuration = ARGV[0];
if win32?
 	 if(configuration == "Development" || configuration == "Debug" )
    		configuration = "Debug"
  	else
		if(configuration == "Deployment" || configuration == "Release" )
    			configuration = "Release"
		end
 	 end
end

clean = false;
@debug = false;

if(ARGV.length > 1)
  if(ARGV[1] != "0" || ARGV[1] != "false")
    clean = true;
  end
end

if(ARGV.length > 2)
  if(ARGV[2] != "0" || ARGV[2] != "false")
    @debug = true;
  end
end

puts "Building Jamoma"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean: #{clean}"
#puts "  debug the build script: #{debug}"
puts "  "

@svn_root = "./"
@build_root = @svn_root + "/Jamoma/library/externals"
@log_root = "../logs"
@fail_array = Array.new
@zerolink = false


###################################################################
# CREATE LOG FILES AND RESET COUNTERS
###################################################################
create_logs
zero_count


###################################################################
# FRAMEWORK
###################################################################
puts "Building Frameworks..."
zero_count

if  win32?
	build_project("#{@svn_root}/SourceCode/Framework", "JamomaModular.vcproj", configuration, true)
#	`cp #{@svn_root}/SourceCode/Framework/#{configuration}/JamomaModular.dll  #{@svn_root}../Modular/Jamoma/library/externals/JamomaModular.dll`
else
	build_project("#{@svn_root}/SourceCode/Framework", "JamomaModular.xcodeproj", configuration, true)
#	copydir("#{@svn_root}/SourceCode/Framework/build/UninstalledProducts/Jamoma.framework", "/Library/Frameworks/Jamoma.framework")
end

ex_total, ex_count = get_count
puts ""


###################################################################
# EXTERNALS
###################################################################

puts "Building Max Externals..."

zero_count
build_dir("#{@svn_root}/SourceCode/MaxObjects", configuration, clean)  
ex_total, ex_count = get_count
puts ""

if  win32?
else
	copydir("#{@svn_root}/../../Builds/jcom.loader.mxo", "\"/Applications/Max5/Cycling '74/extensions/jcom.loader.mxo\"")
end
puts ""

###################################################################
# FINISH UP
###################################################################

puts "=================DONE===================="
puts "\nFailed projects:" if @fail_array.length > 0
@fail_array.each do |loser|
  puts loser
end

###################################################################
# CLOSE LOG FILES
###################################################################
close_logs
puts ""
exit 0;

