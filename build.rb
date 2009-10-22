#!/usr/bin/env ruby -wKU

###################################################################
# Build Jamoma
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir        # change to libdir so that requires work
require "support/jamomalib"   # C74 build library
require "date"

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
version_maj = 0
version_min = 0
version_sub = 0
version_mod = ''
revision = nil


if(ARGV.length > 3)
  version = ARGV[3]
  version_digits = version.split(/\./)
  
  version_mod = version_digits[3] if version_digits.size() > 3
  version_sub = version_digits[2] if version_digits.size() > 2
  version_min = version_digits[1] if version_digits.size() > 1
  version_maj = version_digits[0] if version_digits.size() > 0
end
if(ARGV.length > 4)
  revision = ARGV[4]
end


puts "Building Jamoma"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean:   #{clean}"
#puts "  debug the build script: #{debug}"
puts "  version: #{version_maj}.#{version_min}.#{version_sub} #{version_mod}"
puts "  rev:     #{revision}"
puts "  "

@svn_root = "./"
@build_root = @svn_root + "/Jamoma/library/externals"
@log_root = "./logs"
@fail_array = Array.new
@zerolink = false


###################################################################
# CREATE LOG FILES AND RESET COUNTERS
###################################################################
create_logs
zero_count


###################################################################
# REV NUMBERS
###################################################################
puts "Updating Version Information..."
zero_count

#XCConfig
file_path = "#{@svn_root}/SourceCode/Framework/JamomaModular.xcconfig"
`cp "#{@svn_root}/SourceCode/Framework/JamomaModular.template.xcconfig" "#{file_path}"`

if FileTest.exist?(file_path)
  f = File.open("#{file_path}", "r+")
  str = f.read

  if (version_mod == '' || version_mod.match(/rc(.*)/))
    str.sub!(/PRODUCT_VERSION = (.*)/, "PRODUCT_VERSION = #{version_maj}.#{version_min}.#{version_sub}")
  else
    str.sub!(/PRODUCT_VERSION = (.*)/, "PRODUCT_VERSION = #{version_maj}.#{version_min}.#{version_sub}#{version_mod}")
  end
  str.sub!(/SVNREV = (.*)/, "SVNREV = #{revision}")

  f.rewind
  f.write(str)
  f.truncate(f.pos)
  f.close
end

#Header
file_path = "#{@svn_root}/SourceCode/Framework/source/Jamoma.h"
if FileTest.exist?(file_path)
  f = File.open("#{file_path}", "r+")
  str = f.read

  if (version_mod == '' || version_mod.match(/rc(.*)/))
    str.sub!(/#define JAMOMA_VERSION "(.*)"/, "#define JAMOMA_VERSION \"#{version_maj}.#{version_min}.#{version_sub}\"")
  else
    str.sub!(/#define JAMOMA_VERSION "(.*)"/, "#define JAMOMA_VERSION \"#{version_maj}.#{version_min}.#{version_sub} #{version_mod}\"")
  end

  f.rewind
  f.write(str)
  f.truncate(f.pos)
  f.close
end

ex_total, ex_count = get_count
puts ""


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
