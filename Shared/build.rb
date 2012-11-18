#!/usr/bin/env ruby -wKU
# encoding: utf-8

###################################################################
# Build Jamoma
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir             # change to libdir so that requires work
libdir = Dir.pwd
require "#{libdir}/jamomalib"

if(ARGV.length == 0)
  puts "usage: "
  puts "build.rb <required:configuration> <optional:clean> <optional:compiler> <optional:version> <optional:revision> <optional:distropath>"
  exit 0;
end

configuration = ARGV[0];

if (configuration=="Deployment" || configuration=="Release" || configuration=="dep")
  configuration = "Deployment"
else
  configuration = "Development"
end

if win32? || linux?
 	 if(configuration == "Development" || configuration == "Debug" )
    		configuration = "Debug"
  	else
		if(configuration == "Deployment" || configuration == "Release" )
    			configuration = "Release"
		end
 	 end
end


clean = false;
if(ARGV.length > 1)
  if(ARGV[1] != "0" && ARGV[1] != "false" && ARGV[1] != false)
    clean = true;
  end
end

#@debug = false;
#if(ARGV.length > 2)
#  if(ARGV[2] != "0" && ARGV[2] != "false" && ARGV[2] != false)
#    @debug = true;
#  end
#end

forcedCompiler = nil
if(ARGV.length > 2)
  if(ARGV[2] != "0" && ARGV[2] != "false" && ARGV[2] != false)
    forcedCompiler = ARGV[2]    
  end
end

version = nil # argument not implemented yet
revision = nil # argument not implemented yet


@distropath = nil # use the default already defined in the Xcode projects
if (ARGV.length > 5)
  @distropath = ARGV[5]
end

###################################################################
# Get Revision Info
###################################################################

git_desc = `cd ..; git describe --tags --abbrev=5 --long`.split('-')
git_tag = git_desc[0]
git_dirty_commits = git_desc[git_desc.size()-2]
git_rev = git_desc[git_desc.size()-1]
git_rev.sub!('g', '')
git_rev.chop!

version_digits = git_tag.split(/\./)
version_maj = 0
version_min = 0
version_sub = 0
version_mod = ''
version_mod = version_digits[3] if version_digits.size() > 3
version_sub = version_digits[2] if version_digits.size() > 2
version_min = version_digits[1] if version_digits.size() > 1
version_maj = version_digits[0] if version_digits.size() > 0

#puts ""
#puts "  Building Jamoma #{git_tag} (rev. #{git_rev})"
#puts ""
#if git_dirty_commits != '0'
#	puts "  !!! WARNING !!!"
#	puts "	THIS BUILD IS COMING FROM A DIRTY REVISION   "
#	puts "	THIS BUILD IS FOR PERSONAL USE ONLY  "
#	puts "	DO NOT DISTRIBUTE THIS BUILD TO OTHERS       "
#	puts ""
#end
#puts ""


if(ARGV.length > 3 && ARGV[3] == 0)
  version = ARGV[3]
else
  version = "#{version_maj}.#{version_min}.#{version_sub}-#{version_mod}"
end
if(ARGV.length > 4 && ARGV[4] == 0)
  revision = ARGV[4]
else
  revision = "#{git_rev}"
end

@projectName = ENV['JAMOMAPROJECT']

if mac?
  unless File.exist?("/usr/local/jamoma/lib")
    puts
    puts "Need Password to create directories for Jamoma in /usr/local/jamoma and usr/local/lib"
    puts "==================================================="
    puts
    `sudo mkdir -p /usr/local/jamoma/lib`
    `sudo chgrp admin /usr/local/jamoma/lib`
    `sudo chmod g+w /usr/local/jamoma/lib`
  end
  unless File.exist?("/usr/local/jamoma/extensions")
    `sudo mkdir -p /usr/local/jamoma/extensions`
    `sudo chgrp admin /usr/local/jamoma/extensions`
    `sudo chmod g+w /usr/local/jamoma/extensions`
    puts
  end
  unless File.exist?("/usr/local/jamoma/includes")
    `sudo mkdir -p /usr/local/jamoma/includes`
    `sudo chgrp admin /usr/local/jamoma/includes`
    `sudo chmod g+w /usr/local/jamoma/includes`
    puts
  end
  unless File.exist?("/usr/local/lib")
    `sudo mkdir -p /usr/local/lib`
    # `sudo chgrp admin /usr/local/lib`
    # `sudo chmod g+w /usr/local/lib`
  end
end

puts "Building Jamoma #{@projectName}"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean:         #{clean}"
#puts "  debug the build script: #{debug}"
puts "  version:       #{version}"
puts "  rev:           #{revision} #{'   DIRTY REVISION' if git_dirty_commits != '0'}"
puts "  "


@log_root = "./logs-#{@projectName}"
@svn_root = "../#{@projectName}"
@svn_root = "../../Modules/#{@projectName}" if @projectName == "Modular"
@svn_root = "../../Modules/#{@projectName}" if @projectName == "Test"
@svn_root = "../../UserLib/#{@projectName}" if @projectName == "TapTools"
@fail_array = Array.new
@zerolink = false




if @projectName == "Modular"

#  if(ARGV.length > 3)
#    version = ARGV[3]
#    version_digits = version.split(/\./)
#
#    version_mod = version_digits[3] if version_digits.size() > 3
#    version_sub = version_digits[2] if version_digits.size() > 2
#    version_min = version_digits[1] if version_digits.size() > 1
#    version_maj = version_digits[0] if version_digits.size() > 0
#  end
#  if(ARGV.length > 4)
#    revision = ARGV[4]
#  end


  ###################################################################
  # REV NUMBERS
  ###################################################################
  puts "Updating Version Information"
  puts
  zero_count

  #Header
  file_path = "#{@svn_root}/library/includes/TTModularVersion.h"
  `cp "#{@svn_root}/library/includes/TTModularVersion.template.h" "#{file_path}"`

  if FileTest.exist?(file_path)
    f = File.open("#{file_path}", "r+")
    str = f.read

    if (version_mod == '' || version_mod.match(/rc(.*)/))
      str.sub!(/#define TT_MODULAR_VERSION "(.*)"/, "#define TT_MODULAR_VERSION \"#{version_maj}.#{version_min}.#{version_sub}\"")
    else
      str.sub!(/#define TT_MODULAR_VERSION "(.*)"/, "#define TT_MODULAR_VERSION \"#{version_maj}.#{version_min}.#{version_sub} #{version_mod}\"")
    end
    str.sub!(/TT_MODULAR_REV "(.*)"/, "TT_MODULAR_REV \"#{revision}\"")

    f.rewind
    f.write(str)
    f.truncate(f.pos)
    f.close
  end

  #jcom.js_systeminfo   
  file_path = "#{@svn_root}/Max/library/javascript/jcom.js_systeminfo.js"
  `cp "#{@svn_root}/Max/library/javascript/jcom.js_systeminfo.template.js" "#{file_path}"`
  
  if FileTest.exist?(file_path)
    f = File.open("#{file_path}", "r+")
    str = f.read

    if (version_mod == '' || version_mod.match(/rc(.*)/))
      str.sub!(/MODULAR_VERSION = "(.*)"/, "MODULAR_VERSION = \"#{version_maj}.#{version_min}.#{version_sub}\"")
    else
      str.sub!(/MODULAR_VERSION = "(.*)"/, "MODULAR_VERSION = \"#{version_maj}.#{version_min}.#{version_sub} #{version_mod}\"")
    end
    str.sub!(/MODULAR_REV = "(.*)"/, "MODULAR_REV = \"#{revision}\"")

    f.rewind
    f.write(str)
    f.truncate(f.pos)
    f.close
  end



end



###################################################################
# CREATE LOG FILES AND RESET COUNTERS
###################################################################
create_logs(@projectName)
zero_count


###################################################################
# FRAMEWORK
###################################################################

if File.directory? "#{@svn_root}/library"
  puts "Building Framework(s)"
  puts
  zero_count

  use_make = generate_makefile("#{@svn_root}/library", "Jamoma#{@projectName}", forcedCompiler, "..", @distropath)

  if win32?
  	build_project("#{@svn_root}/library", "Jamoma#{@projectName}.vcproj", configuration, clean, @distropath)
  elsif linux?
  	build_project("#{@svn_root}/library", "Makefile", configuration, clean, "#{@distropath}/core")
  	puts `sudo cp #{@svn_root}/library/build/*.so /usr/lib`
  else
    if (@distropath)
  	  build_project("#{@svn_root}/library", "Jamoma#{@projectName}.xcodeproj", configuration, clean, "#{@distropath}/lib", use_make)
  	else
  	  build_project("#{@svn_root}/library", "Jamoma#{@projectName}.xcodeproj", configuration, clean, nil, use_make)
  	  `sudo ln -s /usr/local/jamoma/lib/Jamoma#{@projectName}.dylib /usr/local/lib/Jamoma#{@projectName}.dylib` unless File.exist?("/usr/local/lib/Jamoma#{@projectName}.dylib")
  	  `cp "#{@svn_root}"/library/includes/* /usr/local/jamoma/includes`
    end
  end
  ex_total, ex_count = get_count
  puts ""  
end

if File.directory? "#{@svn_root}/extensions"
  puts "Building Extensions"
  puts
  zero_count
  if @distropath
    build_dir("extensions", configuration, clean, forcedCompiler, "#{@distropath}/Extensions")
  else
    build_dir("extensions", configuration, clean, forcedCompiler, "/Library/Application Support/Jamoma/Extensions")
    if linux?
      puts `sudo mkdir -p /usr/local/lib/jamoma/extensions`
      puts `sudo cp #{@svn_root}/extensions/*/build/*.ttso /usr/local/lib/jamoma/extensions`
    end
  end
  ex_total, ex_count = get_count
  puts ""
end

if (@distropath == nil && !linux?) # if a custom distropath is defined, don't build the Max externs (they probably aren't wanted so just build the frameworks and extensions)

  ###################################################################
  # EXTERNALS
  ###################################################################
  puts "Building Max Externals"
  puts

  zero_count
  build_dir("implementations/MaxMSP", configuration, clean, forcedCompiler, nil)
  ex_total, ex_count = get_count
  puts ""

  if @projectName == "Modular"
    build_dir("implementations/MaxMSP-core", configuration, clean, forcedCompiler, nil)
    ex_total, ex_count = get_count
    puts ""

    build_dir("implementations/MaxMSP-utilities", configuration, clean, forcedCompiler, nil)
    ex_total, ex_count = get_count
    puts ""
  end

  ###################################################################
  # HELP FILES
  ###################################################################
  puts "Copying Maxhelp files"
  zero_count
  maxhelp_dir("implementations/MaxMSP", "../../Builds/MaxMSP")
  ex_total, ex_count = get_count
  puts ""

  if @projectName == "AudioGraph" && win32?
	puts "Creating jamoma-objectmappings.txt for AudioGraph externals..."
	create_audiograph_objectmappings("#{libdir}/../../../Builds/MaxMSP")
  end

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

end


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

