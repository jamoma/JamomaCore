#!/usr/bin/env ruby -wKU

###################################################################
# Build Jamoma
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir             # change to libdir so that requires work
require "support/jamomalib"

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
  if(ARGV[1] != "0" && ARGV[1] != "false" && ARGV[1] != false)
    clean = true;
  end
end

if(ARGV.length > 2)
  if(ARGV[2] != "0" && ARGV[2] != "false" && ARGV[2] != false)
    @debug = true;
  end
end

version = nil
revision = nil

if(ARGV.length > 3)
  version = ARGV[3]
end
if(ARGV.length > 4)
  revision = ARGV[4]
end


puts "Building Jamoma Foundation"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean:   #{clean}"
#puts "  debug the build script: #{debug}"
puts "  version: #{version}"
puts "  rev:     #{revision}"
puts "  "


@log_root = "./logs"
@svn_root = "./"
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

if win32?
	build_project("#{@svn_root}/library", "JamomaFoundation.vcproj", configuration, true)
else
	build_project("#{@svn_root}/library", "JamomaFoundation.xcodeproj", configuration, true)
end

ex_total, ex_count = get_count
puts ""

puts "Building Extensions..."
zero_count
build_dir("extensions", configuration, clean)  
ex_total, ex_count = get_count
puts ""


###################################################################
# EXTERNALS
###################################################################
puts "Building Max Externals..."

zero_count
build_dir("examples/MaxMSP", configuration, clean)  
ex_total, ex_count = get_count

extension = ".mxo"
if win32?
	extension = ".mxe"
end

src_folder = "Build_Mac"
if win32?
	src_folder = "MaxMSP/builds"
end

dst_folder = "mac"
if win32?
	dst_folder = "windows"
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
