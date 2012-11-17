# window initialization crap, should only be called from another ruby script

require 'Win32API'
require 'win32/registry'
#require 'ZLib'

if (Platform::OS == :unix && Platform::IMPL == :cygwin)
	installed = `regtool list '/machine/Software/Microsoft/VisualStudio/SxS/VS7/'`
	
	if /9\.0/.match(installed)
		vsver = 9
	elsif /7\.1/.match(installed)
		vsver = 7
	else
		vsver = 0
	end
	
	if vsver != 9
		puts "unsupported version of Visual Studio installed -- you need Visual C++ 9.0"
		exit 0
	end
	
	vcinstalldir = `regtool get '\\machine\\Software\\Microsoft\\VisualStudio\\SxS\\VS7\\9.0'`.chomp
	scriptdir = `cygpath -au '#{vcinstalldir + 'Common7\\Tools\\'}'`.chomp
	scriptfile = scriptdir + "vsvars32.bat"
	
	FileUtils.cp(scriptfile, scriptdir + "tmp.bat")
	f = File.new(scriptdir + "tmp.bat", "a")
	f.write("@echo PATH=%PATH%\n")
	f.write("@echo INCLUDE=%INCLUDE%\n")
	f.write("@echo LIB=%LIB%\n")
	f.close
	
	output = `'#{scriptdir + "tmp.bat"}'`
	
	File.delete(scriptdir + "tmp.bat")

	if /PATH=(.*?)$/.match(output)
		wpath = $1.split(';')
		upath = Array.new
		wpath.each do |p|
			upath.push `cygpath -u '#{p}'`.chomp
		end
		ENV['PATH'] = upath.join(':')
	end
	if /INCLUDE=(.*?)$/.match(output)
		winc = $1.split(';')
		uinc = Array.new
		winc.each do |i|
			uinc.push `cygpath -u '#{i}'`.chomp
		end
		ENV['INCLUDE'] = uinc.join(':')
	end
	if /LIB=(.*?)$/.match(output)
		wlib = $1.split(';')
		ulib = Array.new
		wlib.each do |l|
			ulib.push `cygpath -u '#{l}'`.chomp
		end
		ENV['LIB'] = ulib.join(':')
	end		
	puts "Windows environment initialized"
  
elsif Platform::OS == :win32
  #	installed = `regtool list '/machine/Software/Microsoft/VisualStudio/SxS/VS7/'`
	
  #	if /9\.0/.match(installed)
  #		vsver = 9
  #	elsif /7\.1/.match(installed)
  #		vsver = 7
  #	else
  #		vsver = 0
  #	end
	
  #	if vsver != 9
  #		puts "unsupported version of Visual Studio installed -- you need Visual C++ 9.0"
  #		exit 0
  #	end

  # TODO: I'm not sure what to do about all of this [tap]
  # Installed Visual Studio 2008 onto Windows 8 and it reports stuff as being VC 10 rther than VC 9
  # Also not sure why but the key is VC7 instead of VS7
	
  	#vcinstalldir = `regtool get '\\machine\\Software\\Microsoft\\VisualStudio\\SxS\\VS7\\9.0'`.chomp
    vcinstalldir = ""
    keyname = "SOFTWARE\\Microsoft\\VisualStudio\\SxS\\VC7" # HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\SxS\VC7
    access = Win32::Registry::KEY_ALL_ACCESS
    Win32::Registry::HKEY_LOCAL_MACHINE.open(keyname, access) do |reg|
      vcinstalldir = reg['10.0']
    end

    scriptdir = File.dirname(vcinstalldir) + "\\Common7\\Tools\\"
  	scriptfile = scriptdir + "vsvars32.bat"
	
  puts "script dir: #{scriptdir}"

#  # TODO: On Windows 8 we don't have permission to copy the file to this location -- need to copy it somewhere else!
#  	FileUtils.cp(scriptfile, "#{Dir.pwd}/tmp.bat")
#  	f = File.new("#{Dir.pwd}/tmp.bat", "a")
#  	f.write("@echo PATH=%PATH%\n")
#  	f.write("@echo INCLUDE=%INCLUDE%\n")
#  	f.write("@echo LIB=%LIB%\n")
#  	f.close
#	
#  	output = `"#{Dir.pwd}/tmp.bat"`

scriptdir = "/c/Program Files (x86)/Microsoft Visual Studio 9.0/Common7/Tools"
puts "actual script dir: #{scriptdir}"

output = `"#{Dir.pwd}/tmp.bat"`
puts
puts "OUTPUT: #{output}"
puts
#
##  	File.delete("#{Dir.pwd}/tmp.bat")



  	if /PATH=(.*?)$/.match(output)
  		wpath = $1.split(';')
  		upath = Array.new
  		wpath.each do |p|
  			upath.push `cygpath -u '#{p}'`.chomp
  		end
  		ENV['PATH'] = upath.join(':')
  	end
  	if /INCLUDE=(.*?)$/.match(output)
  		winc = $1.split(';')
  		uinc = Array.new
  		winc.each do |i|
  			uinc.push `cygpath -u '#{i}'`.chomp
  		end
  		ENV['INCLUDE'] = uinc.join(':')
  	end
  	if /LIB=(.*?)$/.match(output)
  		wlib = $1.split(';')
  		ulib = Array.new
  		wlib.each do |l|
  			ulib.push `cygpath -u '#{l}'`.chomp
  		end
  		ENV['LIB'] = ulib.join(':')
  	end		
  	puts "Windows environment initialized"
  
  
end
