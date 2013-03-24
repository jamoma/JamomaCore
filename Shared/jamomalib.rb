###################################################################
# Library of Ruby stuff for Jamoma
###################################################################

require 'yaml'
$g_use_yaml_project_files = true
@debug = false

require 'rexml/document'
require 'rexml/formatters/pretty'
include REXML


if defined? win?
else

  require 'open3'
  require 'fileutils'
  require 'pathname'

  def mac?
    (Object::RUBY_PLATFORM =~ /darwin/i) ? true : false
  end

  def linux?
     (Object::RUBY_PLATFORM =~ /linux/i) ? true : false
  end

  def win?
    !mac? && !linux?
  end

  if linux?
    def beagle?
      return true if `arch`.match("armv7l")
      return false
    end
  else
    def beagle?
      return false
    end
  end

  if win?
    begin
      require 'win32/registry'

      Win32::Registry::HKEY_LOCAL_MACHINE.open('Software\\Microsoft\\VisualStudio\\11.0') do |reg|
        # $vs2012 = true
      end
    rescue
      puts "Couldn't find VisualStudio 2012 in the registry. VS2012 is required for building Jamoma."
      exit
    end
  end


  #######
  ## SUB ROUTINES
  #######

  if (defined? quietly) == nil
    def quietly
      v = $VERBOSE
      $VERBOSE = nil
      yield
      ensure
      $VERBOSE = v
    end
  end

  def date
    result = `date`  if mac? || linux?
    result = "" if win?
  end

  def create_logs(str)
    # set up log files and ensure that the build_root is there
    puts `mkdir #{'-p' if !win?} #{@log_root}` if !FileTest.exist?(@log_root)
    @build_log = File.new("#{@log_root}/build.log", "w")
    @build_log.write("#{str.upcase} BUILD LOG: #{`date`}\n\n") if mac? || linux?
    @build_log.write("#{str.upcase} BUILD LOG:          \n\n") if win?
    @build_log.flush
    @error_log = File.new("#{@log_root}/error.log", "w")
    @error_log.write("#{str.upcase} BUILD ERROR LOG:\n")
    @error_log.write("           STARTED:   #{`date`}") if mac? || linux?
    @error_log.write("           STARTED:            ") if win?
    @error_log.flush
    trap("SIGINT") { die }
  end

  def create_test_logs
    # set up log files and ensure that the build_root is there
    `mkdir -p #{@log_root}` if !FileTest.exist?(@log_root)
    @testPass_log = File.new("#{@log_root}/pass.log", "w")
    @testPass_log.write("JAMOMA TEST PASS LOG: #{`date`}\n\n") if mac? || linux?
    @testPass_log.write("JAMOMA TEST PASS LOG:          \n\n") if win?
    @testFail_log = File.new("#{@log_root}/fail.log", "w")
    @testFail_log.write("JAMOMA TEST FAIL LOG:\n")
    @testFail_log.write("           STARTED:   #{`date`}") if mac? || linux?
    @testFail_log.write("           STARTED:            ") if win?
    @testFail_log.flush
    trap("SIGINT") {
      puts "Crash!"
      @testFail_log.close
    }
  end

  def die
    close_logs
    exit 0
  end

  def close_logs
    @error_log.write("           COMPLETED: #{date}")
    #@error_log.write("="*45)
    @error_log.close
    @build_log.write("           COMPLETED: #{date}")
    @build_log.close

  end

  def close_test_logs
    @testPass_log.write("COMPLETED: #{date}")
    @testPass_log.close
    @testFail_log.write("           COMPLETED: #{date}")
    @testFail_log.close
  end

  def log_build(str)
    @build_log.write(str)
    @build_log.write("\n\n")
    @build_log.flush
  end

  def log_error(str)
    if (str.length > 0)
      @error_log.write(str)
      @error_log.write("\n\n")
      @error_log.flush
    end
  end

  def log_test_fail(str)
    @testFail_log.write(str)
    @testFail_log.write("\n")
    @testFail_log.flush
  end

  def log_test_pass(str)
    @testPass_log.write(str)
    @testPass_log.write("\n")
    @testPass_log.flush
  end


  def zero_count
    @cur_total = 0
    @cur_count = 0
  end

  def get_count
    return @cur_total, @cur_count
  end


  def copydir(sourcepath, dstpath)
    out = ""
    err = ""
    inputstr = "#{sourcepath}".ljust(80)
    puts "copy -v #{inputstr} --> #{dstpath}"
    Open3.popen3("rm -rf #{dstpath}") do |stdin, stdout, stderr|
      out = stdout.read
      err = stderr.read
    end
    log_build(out)
    log_error(err)

    Open3.popen3("cp -R #{sourcepath} #{dstpath}") do |stdin, stdout, stderr|
      out = stdout.read
      err = stderr.read
    end
    log_build(out)
    log_error(err)

    return 0
  end


  def copyfile(filename, sourcepath, dstpath)
    out = ""
    err = ""
    # enable the next two lines if yo want to see the verbose infos
    #inputstr = "#{sourcepath}/#{filename}".ljust(80)
    #puts "cp -R #{inputstr} --> #{dstpath}/#{filename}"
    Open3.popen3("cp -R #{sourcepath}/#{filename} #{dstpath}/#{filename}") do |stdin, stdout, stderr|
      out = stdout.read
      err = stderr.read
    end
    log_build(out)
    log_error(err)

    return 0
  end


  def copyfile_adapt_name_to_win(filename, sourcepath, dstpath)
    out = ""
    err = ""

    filename_adapted = filename.gsub("≈","=")
	  inputstr = "#{sourcepath}/#{filename}".ljust(80)
    puts "copy -r  #{inputstr} --> #{dstpath}/#{filename_adapted}"

#    Open3.popen3("cp -R #{sourcepath}/#{filename} #{dstpath}/#{filename_adapted}") do |stdin, stdout, stderr|
    Open3.popen3("copy #{sourcepath}/#{filename} #{dstpath}/#{filename_adapted}") do |stdin, stdout, stderr|
      out = stdout.read
      err = stderr.read
    end
    log_build(out)
    log_error(err)

    return 0
  end


  def build_xcode_project(projectdir, projectname, configuration, clean, distropath)
    out = ""
    err = ""

    if (distropath)
      xcode_env_vars = " INSTALL_PATH=\"#{distropath}\" "
    else
      xcode_env_vars = ""
    end

    str = "nice xcodebuild -project #{projectname} -configuration #{configuration} #{xcode_env_vars} #{"clean" if clean == true} build"
    Open3.popen3(str) do |stdin, stdout, stderr|
      if(@debug)
        puts str
      end
      out = stdout.read
      err = stderr.read
    end
    if /BUILD SUCCEEDED/.match(out)
      @cur_count+=1
      projectname = "#{projectname}".ljust(27)
      puts "#{projectname} BUILD SUCCEEDED"
      log_build(out)
      return 1
    else
      projectname = "#{projectname} ".ljust(27, '*')
      @fail_array.push("#{projectdir}/#{projectname}")
      puts "#{projectname} BUILD FAILED **************************************"
      log_error(out)
      log_error(err)
    end
    return 0
  end


  def build_make_project(projectdir, makefilename, configuration, clean)
    out = ""
    projectname = projectdir.split("/").last
    printedprojname = "#{projectname} ".ljust(27, '.')
    print "#{printedprojname} "
    STDOUT.flush

    sleep 1

    `make -j 4 clean 2>&1` if clean

    configuration = "Debug" if configuration == "Development"
    configuration = "Release" if configuration == "Deployment"
    out = `make -j 4 #{configuration} 2>&1`
    # if error is not followed by a colon then the clang-compiled build will claim to fail when there are no real errors
    if /error:/.match(out) || /Error: /.match(out) || /make: \*\*\* No rule to make target/.match(out) || /No such file or directory/.match(out)
      @fail_array.push("#{projectname}")
      puts "BUILD FAILED **************************************"
      log_error(out)
    else
      @cur_count+=1
      puts "BUILD SUCCEEDED"
      log_build(out)
      return 1
    end
    return 0

  end


  def build_vs_project(projectdir, projectname, configuration, clean)
    out = ""
    err = ""
    success = 0
    
 #`msbuild.exe /target:rebuild /p:Platform=Win32 #{toolset} #{path}/#{filename} 2>&1`
#    Open3.popen3("nice vcbuild.exe #{"/rebuild" if clean == true} \"#{projectname}\" \"#{configuration}\"") do |stdin, stdout, stderr|
    buildstr = "msbuild.exe #{"/target:rebuild" if clean == true} /p:Platform=Win32 \"#{projectname}\""
    #puts "#{buildstr}"

    Open3.popen3(buildstr) do |stdin, stdout, stderr|
      out = stdout.read
      err = stderr.read
    end

    if /(0 error|up\-to\-date|0 erreur)|Build succeeded\./.match(out)
      @cur_count+=1
      projectname = "#{projectname}".ljust(27)
      puts "#{projectname} BUILD SUCCEEDED (Win32)"
      log_build(out)
      success = 1
    else
      @fail_array.push("#{projectdir}/#{projectname}")
      projectname = "#{projectname} ".ljust(27, '*')
      puts "#{projectname} BUILD FAILED (Win32) **************************************"
      log_error(out)
      log_error(err)
    end
    
    
    buildstr = "msbuild.exe #{"/target:rebuild" if clean == true} /p:Platform=x64 \"#{projectname}\""
    #puts "#{buildstr}"
    Open3.popen3(buildstr) do |stdin, stdout, stderr|
      out = stdout.read
      err = stderr.read
    end

    if /(0 error|up\-to\-date|0 erreur)|Build succeeded\./.match(out)
      @cur_count+=1
      projectname = "#{projectname}".ljust(27)
      puts "#{projectname} BUILD SUCCEEDED (x64)"
      log_build(out)
      success = 1
    else
      @fail_array.push("#{projectdir}/#{projectname}")
      projectname = "#{projectname} ".ljust(27, '*')
      puts "#{projectname} BUILD FAILED (x64) **************************************"
      log_error(out)
      log_error(err)
    end
    
    
    return success
  end


  def build_project(projectdir, projectname, configuration, clean, distropath, use_make=false)
    if FileTest.exist?("#{projectdir}/#{projectname}") || ( use_make && FileTest.exist?("#{projectdir}/Makefile"))
      @cur_total+=1
      olddir = Dir.getwd
      Dir.chdir(projectdir)

      if use_make
      	@cur_count += build_make_project(projectdir, projectname, configuration, clean)
      elsif win?
        @cur_count += build_vs_project(projectdir, projectname, configuration, clean)
      elsif linux?
	      @cur_count += build_make_project(projectdir, projectname, configuration, clean)
      else
        @cur_count += build_xcode_project(projectdir, projectname, configuration, clean, distropath)
      end

      Dir.chdir(olddir)
    else
      puts"File Does not exist: #{projectdir}/#{projectname}"
    end
  end


  def copy_helpfile(filename, filedir, dstdir)
    if FileTest.exist?("#{filedir}/#{filename}")
      @cur_total+=1
      if win?
        @cur_count += copyfile_adapt_name_to_win(filename, filedir, dstdir)
      else
        @cur_count += copyfile(filename , filedir, dstdir)
      end
    else
      puts"File Does not exist: #{filedir}/#{filename}"
    end
  end





  def generate_vcxproj_template
    
    vcxproj = Document.new '<Project DefaultTargets="Build" ToolsVersion="4.0" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <ItemGroup Label="ProjectConfigurations">
    <ProjectConfiguration Include="Debug|Win32">
      <Configuration>Debug</Configuration>
      <Platform>Win32</Platform>
    </ProjectConfiguration>
    <ProjectConfiguration Include="Debug|x64">
      <Configuration>Debug</Configuration>
      <Platform>x64</Platform>
    </ProjectConfiguration>
    <ProjectConfiguration Include="Release|Win32">
      <Configuration>Release</Configuration>
      <Platform>Win32</Platform>
    </ProjectConfiguration>
    <ProjectConfiguration Include="Release|x64">
      <Configuration>Release</Configuration>
      <Platform>x64</Platform>
    </ProjectConfiguration>
  </ItemGroup>

  <PropertyGroup Label="Globals">
    <ProjectGuid>{D7D2B050-0FAC-4326-89AD-C82254541416}</ProjectGuid>
  </PropertyGroup>
  <Import Project="$(VCTargetsPath)\Microsoft.Cpp.Default.props" />
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Release|Win32\'" Label="Configuration">
    <ConfigurationType>DynamicLibrary</ConfigurationType>
    <PlatformToolset>v110</PlatformToolset>
    <UseOfMfc>false</UseOfMfc>
    <CharacterSet>MultiByte</CharacterSet>
    <WholeProgramOptimization>true</WholeProgramOptimization>
  </PropertyGroup>
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Debug|Win32\'" Label="Configuration">
    <ConfigurationType>DynamicLibrary</ConfigurationType>
    <PlatformToolset>v110</PlatformToolset>
    <UseOfMfc>false</UseOfMfc>
    <CharacterSet>MultiByte</CharacterSet>
  </PropertyGroup>
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Release|x64\'" Label="Configuration">
     <ConfigurationType>DynamicLibrary</ConfigurationType>
    <PlatformToolset>v110</PlatformToolset>
    <UseOfMfc>false</UseOfMfc>
    <CharacterSet>MultiByte</CharacterSet>
    <WholeProgramOptimization>true</WholeProgramOptimization>
  </PropertyGroup>
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Debug|x64\'" Label="Configuration">
    <ConfigurationType>DynamicLibrary</ConfigurationType>
    <PlatformToolset>v110</PlatformToolset>
    <UseOfMfc>false</UseOfMfc>
    <CharacterSet>MultiByte</CharacterSet>
  </PropertyGroup>

  <Import Project="$(VCTargetsPath)\Microsoft.Cpp.props" />
  <ImportGroup Label="ExtensionSettings">
  </ImportGroup>

  <ImportGroup Condition="\'$(Configuration)|$(Platform)\'==\'Release|Win32\'" Label="PropertySheets">
    <Import Project="$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props" Condition="exists(\'$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props\')" Label="LocalAppDataPlatform" />
    <Import Project="$(VCTargetsPath)Microsoft.CPP.UpgradeFromVC71.props" />
  </ImportGroup>
  <ImportGroup Condition="\'$(Configuration)|$(Platform)\'==\'Debug|Win32\'" Label="PropertySheets">
    <Import Project="$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props" Condition="exists(\'$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props\')" Label="LocalAppDataPlatform" />
    <Import Project="$(VCTargetsPath)Microsoft.CPP.UpgradeFromVC71.props" />
   </ImportGroup>
  <ImportGroup Condition="\'$(Configuration)|$(Platform)\'==\'Release|x64\'" Label="PropertySheets">
    <Import Project="$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props" Condition="exists(\'$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props\')" Label="LocalAppDataPlatform" />
    <Import Project="$(VCTargetsPath)Microsoft.CPP.UpgradeFromVC71.props" />
  </ImportGroup>
  <ImportGroup Condition="\'$(Configuration)|$(Platform)\'==\'Debug|x64\'" Label="PropertySheets">
    <Import Project="$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props" Condition="exists(\'$(UserRootDir)\Microsoft.Cpp.$(Platform).user.props\')" Label="LocalAppDataPlatform" />
    <Import Project="$(VCTargetsPath)Microsoft.CPP.UpgradeFromVC71.props" />
  </ImportGroup>

  <PropertyGroup Label="UserMacros" />
  
  <PropertyGroup>
    <_ProjectFileVersion>11.0.51106.1</_ProjectFileVersion>
  </PropertyGroup>
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Debug|Win32\'">
    <LinkIncremental>true</LinkIncremental>
    <TargetExt>.dll</TargetExt>
  </PropertyGroup>
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Debug|x64\'">
    <LinkIncremental>true</LinkIncremental>
    <TargetExt>.x64.dll</TargetExt>
  </PropertyGroup>
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Release|Win32\'">
    <LinkIncremental>false</LinkIncremental>
    <TargetExt>.dll</TargetExt>
  </PropertyGroup>
  <PropertyGroup Condition="\'$(Configuration)|$(Platform)\'==\'Release|x64\'">
    <LinkIncremental>false</LinkIncremental>
    <TargetExt>.x64.dll</TargetExt>
  </PropertyGroup>
  
  
  
  
  
  
  
  
  
  
  
  
  <Import Project="$(VCTargetsPath)\Microsoft.Cpp.targets" />
  <ImportGroup Label="ExtensionTargets">
  </ImportGroup>
</Project>
'
    vcxproj
  end



  def makefile_fix_install_names(makefile, project_type, libraries)
    if (libraries && (project_type == "library" || project_type == "extension"))
      libraries.each do |lib|
        lib = lib.to_s
        reallibname = nil
        if (lib == "FOUNDATION")
          reallibname = "JamomaFoundation"
        elsif (lib == "DSP")
          reallibname = "JamomaDSP"
        elsif (lib == "MODULAR")
          reallibname = "JamomaModular"
        elsif (lib == "GRAPH")
          reallibname = "JamomaGraph"
        elsif (lib == "AUDIOGRAPH")
          reallibname = "JamomaAudioGraph"
        end
        makefile.write("\tinstall_name_tool -change @loader_path/../../../../support/#{reallibname}.dylib @loader_path/#{reallibname}.dylib build/$(NAME).$(SUFFIX)\n") if reallibname
      end
    end
  end



  # CREATE A MAKEFILE FROM A YAML PROJECT DEFINITION

  def generate_makefile(projectdir, projectname, forcedCompiler=NIL, path_to_moduleroot="../..", distropath=NIL)
    makefile_generated = false
    max = false

    foldername = projectdir.split("/").last
    project_type = "extension"
    project_type = "library" if foldername == "library"
#    project_type = "implementation" if (projectdir.split("/")[projectdir.split("/").size-3]) == "implementations"
    project_type = "implementation" if (projectdir.split("/")[projectdir.split("/").size-3]) == "Max"
		max = true if (projectdir.split("/")[projectdir.split("/").size-3]) == "Max"
    define_c74_linker_syms = false
    path_to_moduleroot="../../.." if project_type == "implementation" && path_to_moduleroot == "../.."
    path_to_moduleroot_win = path_to_moduleroot.gsub(/(\/)/,'\\')

    if !distropath

      # We are not in control the binary application that calls us.
      # That means we cannot use @rpath on the Mac and are limited to @executable_path and @loader_path (or a global location)
      # We cannot determine @executable_path adequately for all executable binaries.  Ruby is very different than Ableton Live.
      # So we can only provide a single install_name and it must be @loader_path.
      #
      # For this example, we have a Max external as the client.  
      # It must link from the external's binary (deep inside a Mac bundle) to the Jamoma libs.
      # Thus, the install_name must be
      #   "@loader_path/../../../../support"
      #
      # However, the extensions too must link to these libraries.  
      # If we wish to not re-compile the libraries with a different install_path,
      # then we must either modify the paths in the extension binary after the build, 
      # or put the extensions in a location with the same relative location to the libraries.
      # e.g.
      #   support
      #     JamomaFoundation.dylib
      #     JamomaDSP.dylib
      #     extensions
      #       mac
      #         Foundation
      #           DataspaceLib.ttdylib
      #         DSP
      #           Clipper.ttdylib
      #
      # To avoid the somewhat arbitrary folder structure we will initially try modifying the references as a post-build phase for extensions.
      #
      # The install_name for extensions and for Max externals doesn't really matter, because we never link against these binaries.
      #
      # What does this mean exactly?
      # In the Terminal, run "otool -L AnalysisLib.ttdylib" to get the current paths it uses:
      #
      #   AnalysisLib.ttdylib:
      #   	build/AnalysisLib-x86_64.ttdylib (compatibility version 0.0.0, current version 0.0.0)
      #   	@loader_path/../../../../support/JamomaFoundation.dylib (compatibility version 0.0.0, current version 0.0.0)
      #   	@loader_path/../../../../support/JamomaDSP.dylib (compatibility version 0.0.0, current version 0.0.0)
      #   	/usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 65.1.0)
      #   	/usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 169.3.0)
      #
      # To change the paths for Foundation and DSP, we do this:
      #   
      #   $ install_name_tool -change @loader_path/../../../../support/JamomaFoundation.dylib @loader_path/JamomaFoundation.dylib AnalysisLib.ttdylib
      #   $ install_name_tool -change @loader_path/../../../../support/JamomaDSP.dylib @loader_path/JamomaDSP.dylib AnalysisLib.ttdylib
      #
      # To confirm, run "otool -L AnalysisLib.ttdylib" again:
      #
      #   AnalysisLib.ttdylib:
      #   	build/AnalysisLib-x86_64.ttdylib (compatibility version 0.0.0, current version 0.0.0)
      #   	@loader_path/JamomaFoundation.dylib (compatibility version 0.0.0, current version 0.0.0)
      #   	@loader_path/JamomaDSP.dylib (compatibility version 0.0.0, current version 0.0.0)
      #   	/usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 65.1.0)
      #   	/usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 169.3.0)
      #
      #
      # But, there's another problem: 
      # It's not just the extensions that need to have the referenced install_names rewritten -- it's the libs too.
      # For example, AnalysisLib reference JamomaDSP and JamomaFoundation.  We've already rewritten those references, so we're good.
      # Except that JamomaDSP *also* JamomaFoundation.  So JamomaDSP needs to have its reference rewritten as well.
      # Etc.
      #
      #
      # So the rule is expressed by this metacode:
      # if mac?
      #   if project_type == "library" || project_type == "extension"
      #     for each library macro (e.g. FOUNDATION, DSP, AUDIOGRAPH, ... )
      #       add an install_name_tool invocation in the "lipo" phase
      

      # By default, assume all libs and extensions are in the same folder as the binary and as each other
      distropath = "@loader_path"

      # Max externals are bundles, and they expect the libs to be in different location
      distropath = "@loader_path/../../../../support" if project_type == "library"
      
    end

    if ($g_use_yaml_project_files && File.exists?("#{projectdir}/#{projectname}.yml"))
      yaml = YAML.load_file( "#{projectdir}/#{projectname}.yml")
      projectname.gsub!('#','\##')     # in case there is a # in the project name, which would be interpreted as a comment symbol

      sources = yaml["sources"]
      includes = yaml["includes"]
      libraries = yaml["libraries"]
      defines = yaml["defines"]

      frameworks = nil
      frameworks = yaml["frameworks"] if mac?

      compiler = yaml["compiler"]
      compiler = forcedCompiler if forcedCompiler # manual overwriting the compiler setting from the YML file
      puts("   forced compiler is: #{compiler}") if forcedCompiler

      if (!yaml["arch"])
          arch = 'default'
      else
          arch = yaml["arch"]
      end

      prefix = yaml["prefix"]
      postbuilds = yaml["postbuilds"]
#builddir may be unused?
      builddir = yaml["builddir"]
      builddir = "../Builds" if !builddir

      skipIcc = false
      skipGcc47 = false
      skipClang = false
      icc   = false
      gcc47 = false
      clang = false
      if compiler == "icc"
        skipIcc = false
        skipGcc47 = true
        skipClang = true
      elsif compiler == "gcc47"
        skipIcc = true
        skipGcc47 = false
        skipClang = true
      elsif compiler == "gcc"
        skipIcc = true
        skipGcc47 = true
        skipClang = true
      elsif compiler == "clang"
        skipIcc = true
        skipGcc47 = true
        skipClang = false
      end

      # TODO: we also will want a STATIC option for e.g. iOS builds
      if win?
        vcproj = generate_vcxproj_template
        vcproj_root = vcproj.root
        
        vcproj_debug32 = Element.new "ItemDefinitionGroup"
        vcproj_debug32.attributes["Condition"] = "'$(Configuration)|$(Platform)'=='Debug|Win32'"
        vcproj_root.add_element(vcproj_debug32)
        
        vcproj_release32 = Element.new "ItemDefinitionGroup"
        vcproj_release32.attributes["Condition"] = "'$(Configuration)|$(Platform)'=='Release|Win32'"
        vcproj_root.add_element(vcproj_release32)
        
        vcproj_debug64 = Element.new "ItemDefinitionGroup"
        vcproj_debug64.attributes["Condition"] = "'$(Configuration)|$(Platform)'=='Debug|x64'"
        vcproj_root.add_element(vcproj_debug64)
        
        vcproj_release64 = Element.new "ItemDefinitionGroup"
        vcproj_release64.attributes["Condition"] = "'$(Configuration)|$(Platform)'=='Release|x64'"
        vcproj_root.add_element(vcproj_release64)
      else
        makefile = File.new("#{projectdir}/Makefile", "w")
        makefile.write("# Jamoma Makefile, generated by the Jamoma build system for the platform on which the build was run.\n")
        makefile.write("# Edits to this file are NOT under version control and will be lost when the build system is run again.\n")
        makefile.write("\n")
        makefile.write("NAME = #{projectname}\n")
        makefile.write("SUFFIX = so\n") if linux?
        makefile.write("SUFFIX = dylib\n") if mac? && project_type == "library"
        makefile.write("SUFFIX = ttdylib\n") if mac? && project_type == "extension"
        makefile.write("SUFFIX = mxo\n") if mac? && project_type == "implementation"
        makefile.write("\n")
        if mac?
          if ((File.exists? "/usr/bin/icc") && (skipIcc == false))
            makefile.write("CC_32 = icc -arch i386\n") if (arch == 'i386' || arch == 'default')
            makefile.write("CC_64 = icc -arch x86_64\n\n") if (arch == 'x86_64' || arch == 'default')
            icc = true
          elsif ((File.exists? "/usr/bin/clang++") && (skipClang == false))
            makefile.write("CC_32 = /usr/bin/clang++ -arch i386\n") if (arch == 'i386' || arch == 'default')
            makefile.write("CC_64 = /usr/bin/clang++ -arch x86_64\n\n") if (arch == 'x86_64' || arch == 'default')
            clang = true
          elsif ((File.exists? "/opt/local/bin/g++-mp-4.7") && (skipGcc47 == false))
            makefile.write("CC_32 = /opt/local/bin/g++-mp-4.7 -arch i386\n") if (arch == 'i386' || arch == 'default')
            makefile.write("CC_64 = /opt/local/bin/g++-mp-4.7 -arch x86_64\n\n") if (arch == 'x86_64' || arch == 'default')
            gcc47 = true
          else
            puts "you don't have a support compiler.  it probably isn't going to work out for the two of us..."
            clang = true
          end
          # makefile.write("CC_32 = llvm-g++-4.2 -arch i386\n") if (arch == 'i386' || arch == 'default')
          # makefile.write("CC_64 = llvm-g++-4.2 -arch x86_64\n\n") if (arch == 'x86_64' || arch != 'i386' || arch == 'default')
        else
          if linux?
            makefile.write("CC = clang++\n\n")
          else
            makefile.write("CC = g++\n\n")
          end
        end

        makefile.write("#########################################\n\n")
        i=0
        sources.each do |source|
          if mac?
           	source = source.to_s
  	       	next if source =~ /win /
          	source.gsub!(/mac /, '')
          elsif win?
          	# This code is never executed!
           	source = source.to_s
  	       	next if source =~ /mac /
          	source.gsub!(/win /, '')
          else # linux?
           	source = source.to_s
  	       	next if source =~ /mac /
  	       	next if source =~ /win /
          end

          source32 = nil
          source64 = nil
          if mac?
            if (source.match(/\.mm/))     # objective-c code
                source32 = source.gsub(/\.mm/, ".i386.mm.o ") if (arch == 'i386' || arch == 'default')
                source64 = source.gsub(/\.mm/, ".x64.mm.o ") if (arch == 'x86_64' || arch == 'default')
            else                          # c++ code
                source32 = source.gsub(/\.cpp/, ".i386.o ") if (arch == 'i386' || arch == 'default')
                source64 = source.gsub(/\.cpp/, ".x64.o") if (arch == 'x86_64' || arch == 'default')
            end
          else
            source.gsub!(/\.cpp/, ".o")
          end
          if (i==0)
            makefile.write("SRC32 = #{source32}\n") if source32
            makefile.write("SRC64 = #{source64}\n") if source64
            makefile.write("SRC   = #{source}\n") if !source32 && !source64
          else
            makefile.write("SRC32 += #{source32}\n") if source32
            makefile.write("SRC64 += #{source64}\n") if source64
            makefile.write("SRC   += #{source}\n") if !source32 && !source64
          end
          i+=1
        end
        makefile.write("\n\n")
      end

      if win?
        vcproj_files = Element.new "ItemGroup"
        sources.each do |source|
          source = source.to_s
  	      next if source =~ /mac /
          source.gsub!(/win /, '')

          source_formatted_for_windows = source
          source_formatted_for_windows.gsub!(/(\/)/,'\\')
          vcproj_file = Element.new "ClCompile"
          vcproj_file.attributes["Include"] = "#{source_formatted_for_windows}"
          vcproj_files.add_element(vcproj_file)
        end
      else
        makefile.write("#########################################\n\n")
        i=0
        includes.each do |include_file|
          if mac?
            next if include_file =~ /win /
            include_file.gsub!(/mac /, '')
          elsif win?
            next if include_file =~ /mac /
            include_file.gsub!(/win /, '')
          end

          if (include_file == "C74-INCLUDES")
            if max
              include_file = "#{path_to_moduleroot}/../Implementations/Max/source/c74support/max-includes -I#{path_to_moduleroot}/../Implementations/Max/source/c74support/msp-includes -I#{path_to_moduleroot}/../Implementations/Max/source/c74support/jit-includes"
            else
              include_file = "#{path_to_moduleroot}/../../Implementations/Max/source/c74support/max-includes -I#{path_to_moduleroot}/../../Implementations/Max/source/c74support/msp-includes -I#{path_to_moduleroot}/../../Implementations/Max/source/c74support/jit-includes"
            end
          end

          if (i==0)
            makefile.write("INCLUDES = -I#{include_file}\n")
          else
            makefile.write("INCLUDES += -I#{include_file}\n")
          end
          i+=1
        end
        makefile.write("INCLUDE_FILES := $(wildcard INCLUDES/*.h)")
        makefile.write("\n\n")
      end

      if win?
        concatenated_includes = ""
        includes.each do |include_file|
          concatenated_includes += "\"$(ProjectDir)#{include_file}\";"
        end
        concatenated_includes.gsub!(/(\/)/,'\\')

        concatenated_defines = ""
        if defines
          defines.each do |define|
            concatenated_defines += ";" if concatenated_defines != ""
            concatenated_defines += "#{define}"
          end
        end

        vcproj_debug32_compiler = Element.new "ClCompile"
        vcproj_debug32_compiler.add_element Element.new "Optimization"
        vcproj_debug32_compiler.elements["Optimization"].text = "Disabled"
        vcproj_debug32_compiler.add_element Element.new "MinimalRebuild"
        vcproj_debug32_compiler.elements["MinimalRebuild"].text = "true"
        vcproj_debug32_compiler.add_element Element.new "ExceptionHandling"
        vcproj_debug32_compiler.elements["ExceptionHandling"].text = "Sync"
        vcproj_debug32_compiler.add_element Element.new "BasicRuntimeChecks"
        vcproj_debug32_compiler.elements["BasicRuntimeChecks"].text = "EnableFastChecks"
        vcproj_debug32_compiler.add_element Element.new "RuntimeLibrary"
        vcproj_debug32_compiler.elements["RuntimeLibrary"].text = "MultiThreadedDebug"
        vcproj_debug32_compiler.add_element Element.new "BufferSecurityCheck"
        vcproj_debug32_compiler.elements["BufferSecurityCheck"].text = "true"
        vcproj_debug32_compiler.add_element Element.new "FunctionLevelLinking"
        vcproj_debug32_compiler.elements["FunctionLevelLinking"].text = "true"
        vcproj_debug32_compiler.add_element Element.new "PrecompiledHeader"
        vcproj_debug32_compiler.add_element Element.new "PrecompiledHeaderFile"
        vcproj_debug32_compiler.add_element Element.new "PrecompiledHeaderOutputFile"
        vcproj_debug32_compiler.elements["PrecompiledHeaderOutputFile"].text = "$(IntDir)$(ProjectName).pch"
        vcproj_debug32_compiler.add_element Element.new "AssemblerListingLocation"
        vcproj_debug32_compiler.elements["AssemblerListingLocation"].text = "$(IntDir)$(TargetName).asm"
        vcproj_debug32_compiler.add_element Element.new "ObjectFileName"
        vcproj_debug32_compiler.elements["ObjectFileName"].text = "$(IntDir)"
        vcproj_debug32_compiler.add_element Element.new "ProgramDataBaseFileName"
        vcproj_debug32_compiler.elements["ProgramDataBaseFileName"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_debug32_compiler.add_element Element.new "WarningLevel"
        vcproj_debug32_compiler.elements["WarningLevel"].text = "Level3"
        vcproj_debug32_compiler.add_element Element.new "SuppressStartupBanner"
        vcproj_debug32_compiler.elements["SuppressStartupBanner"].text = "true"
        vcproj_debug32_compiler.add_element Element.new "DebugInformationFormat"
        vcproj_debug32_compiler.elements["DebugInformationFormat"].text = "ProgramDatabase"
        vcproj_debug32_compiler.add_element Element.new "CompileAs"
        vcproj_debug32_compiler.elements["CompileAs"].text = "Default"
        vcproj_debug32_compiler.add_element Element.new "DisableSpecificWarnings"
        vcproj_debug32_compiler.elements["DisableSpecificWarnings"].text = "4068;4550"

        vcproj_debug32_compiler.add_element Element.new "PreprocessorDefinitions"
        vcproj_debug32_compiler.elements["PreprocessorDefinitions"].text = "WIN32;_DEBUG;_WINDOWS;_USRDLL;_CRT_SECURE_NO_WARNINGS;TT_PLATFORM_WIN;WIN_VERSION;_CRT_NOFORCE_MANIFEST;_STL_NOFORCE_MANIFEST" + ";#{concatenated_defines}"

        vcproj_debug32_compiler.add_element Element.new "AdditionalIncludeDirectories"
        vcproj_debug32_compiler.elements["AdditionalIncludeDirectories"].text = "#{concatenated_includes}"

        vcproj_debug32.add_element vcproj_debug32_compiler



        vcproj_release32_compiler = Element.new "ClCompile"
        vcproj_release32_compiler.add_element Element.new "Optimization"
        vcproj_release32_compiler.elements["Optimization"].text = "MaxSpeed"
        
        vcproj_release32_compiler.add_element Element.new "InlineFunctionExpansion"
        vcproj_release32_compiler.elements["InlineFunctionExpansion"].text = "AnySuitable"
        vcproj_release32_compiler.add_element Element.new "IntrinsicFunctions"
        vcproj_release32_compiler.elements["IntrinsicFunctions"].text = "true"
        vcproj_release32_compiler.add_element Element.new "FavorSizeOrSpeed"
        vcproj_release32_compiler.elements["FavorSizeOrSpeed"].text = "Speed"
        vcproj_release32_compiler.add_element Element.new "OmitFramePointers"
        vcproj_release32_compiler.elements["OmitFramePointers"].text = "true"
        vcproj_release32_compiler.add_element Element.new "WholeProgramOptimization"
        vcproj_release32_compiler.elements["WholeProgramOptimization"].text = "true"
        vcproj_release32_compiler.add_element Element.new "StringPooling"
        vcproj_release32_compiler.elements["StringPooling"].text = "true"       
        vcproj_release32_compiler.add_element Element.new "EnableEnhancedInstructionSet"
        vcproj_release32_compiler.elements["EnableEnhancedInstructionSet"].text = "AdvancedVectorExtensions"
        
        vcproj_release32_compiler.add_element Element.new "MinimalRebuild"
        vcproj_release32_compiler.elements["MinimalRebuild"].text = "true"
        vcproj_release32_compiler.add_element Element.new "ExceptionHandling"
        vcproj_release32_compiler.elements["ExceptionHandling"].text = "Sync"
        vcproj_release32_compiler.add_element Element.new "BasicRuntimeChecks"
        vcproj_release32_compiler.elements["BasicRuntimeChecks"].text = "EnableFastChecks"
        vcproj_release32_compiler.add_element Element.new "RuntimeLibrary"
        vcproj_release32_compiler.elements["RuntimeLibrary"].text = "MultiThreaded"
        vcproj_release32_compiler.add_element Element.new "BufferSecurityCheck"
        vcproj_release32_compiler.elements["BufferSecurityCheck"].text = "false"
        vcproj_release32_compiler.add_element Element.new "FunctionLevelLinking"
        vcproj_release32_compiler.elements["FunctionLevelLinking"].text = "true"
        vcproj_release32_compiler.add_element Element.new "PrecompiledHeader"
        vcproj_release32_compiler.add_element Element.new "PrecompiledHeaderFile"
        vcproj_release32_compiler.add_element Element.new "PrecompiledHeaderOutputFile"
        vcproj_release32_compiler.elements["PrecompiledHeaderOutputFile"].text = "$(IntDir)$(ProjectName).pch"
        vcproj_release32_compiler.add_element Element.new "AssemblerListingLocation"
        vcproj_release32_compiler.elements["AssemblerListingLocation"].text = "$(IntDir)$(TargetName).asm"
        vcproj_release32_compiler.add_element Element.new "ObjectFileName"
        vcproj_release32_compiler.elements["ObjectFileName"].text = "$(IntDir)"
        vcproj_release32_compiler.add_element Element.new "ProgramDataBaseFileName"
        vcproj_release32_compiler.elements["ProgramDataBaseFileName"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_release32_compiler.add_element Element.new "WarningLevel"
        vcproj_release32_compiler.elements["WarningLevel"].text = "Level3"
        vcproj_release32_compiler.add_element Element.new "SuppressStartupBanner"
        vcproj_release32_compiler.elements["SuppressStartupBanner"].text = "true"
        vcproj_release32_compiler.add_element Element.new "DebugInformationFormat"
        vcproj_release32_compiler.elements["DebugInformationFormat"].text = "ProgramDatabase"
        vcproj_release32_compiler.add_element Element.new "CompileAs"
        vcproj_release32_compiler.elements["CompileAs"].text = "Default"
        vcproj_release32_compiler.add_element Element.new "DisableSpecificWarnings"
        vcproj_release32_compiler.elements["DisableSpecificWarnings"].text = "4068;4550"

        vcproj_release32_compiler.add_element Element.new "PreprocessorDefinitions"
        vcproj_release32_compiler.elements["PreprocessorDefinitions"].text = "WIN32;NDEBUG;_WINDOWS;_USRDLL;_CRT_SECURE_NO_WARNINGS;TT_PLATFORM_WIN;WIN_VERSION;_CRT_NOFORCE_MANIFEST;_STL_NOFORCE_MANIFEST" + ";#{concatenated_defines}"

        vcproj_release32_compiler.add_element Element.new "AdditionalIncludeDirectories"
        vcproj_release32_compiler.elements["AdditionalIncludeDirectories"].text = "#{concatenated_includes}"

        vcproj_release32.add_element vcproj_release32_compiler



        vcproj_debug64_compiler = Element.new "ClCompile"
        vcproj_debug64_compiler.add_element Element.new "Optimization"
        vcproj_debug64_compiler.elements["Optimization"].text = "Disabled"
        vcproj_debug64_compiler.add_element Element.new "MinimalRebuild"
        vcproj_debug64_compiler.elements["MinimalRebuild"].text = "true"
        vcproj_debug64_compiler.add_element Element.new "ExceptionHandling"
        vcproj_debug64_compiler.elements["ExceptionHandling"].text = "Sync"
        vcproj_debug64_compiler.add_element Element.new "BasicRuntimeChecks"
        vcproj_debug64_compiler.elements["BasicRuntimeChecks"].text = "EnableFastChecks"
        vcproj_debug64_compiler.add_element Element.new "RuntimeLibrary"
        vcproj_debug64_compiler.elements["RuntimeLibrary"].text = "MultiThreadedDebug"
        vcproj_debug64_compiler.add_element Element.new "BufferSecurityCheck"
        vcproj_debug64_compiler.elements["BufferSecurityCheck"].text = "true"
        vcproj_debug64_compiler.add_element Element.new "FunctionLevelLinking"
        vcproj_debug64_compiler.elements["FunctionLevelLinking"].text = "true"
        vcproj_debug64_compiler.add_element Element.new "PrecompiledHeader"
        vcproj_debug64_compiler.add_element Element.new "PrecompiledHeaderFile"
        vcproj_debug64_compiler.add_element Element.new "PrecompiledHeaderOutputFile"
        vcproj_debug64_compiler.elements["PrecompiledHeaderOutputFile"].text = "$(IntDir)$(ProjectName).pch"
        vcproj_debug64_compiler.add_element Element.new "AssemblerListingLocation"
        vcproj_debug64_compiler.elements["AssemblerListingLocation"].text = "$(IntDir)$(TargetName).asm"
        vcproj_debug64_compiler.add_element Element.new "ObjectFileName"
        vcproj_debug64_compiler.elements["ObjectFileName"].text = "$(IntDir)"
        vcproj_debug64_compiler.add_element Element.new "ProgramDataBaseFileName"
        vcproj_debug64_compiler.elements["ProgramDataBaseFileName"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_debug64_compiler.add_element Element.new "WarningLevel"
        vcproj_debug64_compiler.elements["WarningLevel"].text = "Level3"
        vcproj_debug64_compiler.add_element Element.new "SuppressStartupBanner"
        vcproj_debug64_compiler.elements["SuppressStartupBanner"].text = "true"
        vcproj_debug64_compiler.add_element Element.new "DebugInformationFormat"
        vcproj_debug64_compiler.elements["DebugInformationFormat"].text = "ProgramDatabase"
        vcproj_debug64_compiler.add_element Element.new "CompileAs"
        vcproj_debug64_compiler.elements["CompileAs"].text = "Default"
        vcproj_debug64_compiler.add_element Element.new "DisableSpecificWarnings"
        vcproj_debug64_compiler.elements["DisableSpecificWarnings"].text = "4068;4550"

        vcproj_debug64_compiler.add_element Element.new "PreprocessorDefinitions"
        vcproj_debug64_compiler.elements["PreprocessorDefinitions"].text = "WIN32;_DEBUG;_WINDOWS;_USRDLL;_CRT_SECURE_NO_WARNINGS;TT_PLATFORM_WIN;WIN_VERSION;_CRT_NOFORCE_MANIFEST;_STL_NOFORCE_MANIFEST" + ";#{concatenated_defines}"

        vcproj_debug64_compiler.add_element Element.new "AdditionalIncludeDirectories"
        vcproj_debug64_compiler.elements["AdditionalIncludeDirectories"].text = "#{concatenated_includes}"

        vcproj_debug64.add_element vcproj_debug64_compiler



        vcproj_release64_compiler = Element.new "ClCompile"
        vcproj_release64_compiler.add_element Element.new "Optimization"
        vcproj_release64_compiler.elements["Optimization"].text = "MaxSpeed"
        
        vcproj_release64_compiler.add_element Element.new "InlineFunctionExpansion"
        vcproj_release64_compiler.elements["InlineFunctionExpansion"].text = "AnySuitable"
        vcproj_release64_compiler.add_element Element.new "IntrinsicFunctions"
        vcproj_release64_compiler.elements["IntrinsicFunctions"].text = "true"
        vcproj_release64_compiler.add_element Element.new "FavorSizeOrSpeed"
        vcproj_release64_compiler.elements["FavorSizeOrSpeed"].text = "Speed"
        vcproj_release64_compiler.add_element Element.new "OmitFramePointers"
        vcproj_release64_compiler.elements["OmitFramePointers"].text = "true"
        vcproj_release64_compiler.add_element Element.new "WholeProgramOptimization"
        vcproj_release64_compiler.elements["WholeProgramOptimization"].text = "true"
        vcproj_release32_compiler.add_element Element.new "EnableEnhancedInstructionSet"
        vcproj_release32_compiler.elements["EnableEnhancedInstructionSet"].text = "AdvancedVectorExtensions"
        
        vcproj_release64_compiler.add_element Element.new "MinimalRebuild"
        vcproj_release64_compiler.elements["MinimalRebuild"].text = "true"
        vcproj_release64_compiler.add_element Element.new "ExceptionHandling"
        vcproj_release64_compiler.elements["ExceptionHandling"].text = "Sync"
        vcproj_release64_compiler.add_element Element.new "BasicRuntimeChecks"
        vcproj_release64_compiler.elements["BasicRuntimeChecks"].text = "EnableFastChecks"
        vcproj_release64_compiler.add_element Element.new "RuntimeLibrary"
        vcproj_release64_compiler.elements["RuntimeLibrary"].text = "MultiThreaded"
        vcproj_release64_compiler.add_element Element.new "BufferSecurityCheck"
        vcproj_release64_compiler.elements["BufferSecurityCheck"].text = "false"
        vcproj_release64_compiler.add_element Element.new "FunctionLevelLinking"
        vcproj_release64_compiler.elements["FunctionLevelLinking"].text = "true"
        vcproj_release64_compiler.add_element Element.new "PrecompiledHeader"
        vcproj_release64_compiler.add_element Element.new "PrecompiledHeaderFile"
        vcproj_release64_compiler.add_element Element.new "PrecompiledHeaderOutputFile"
        vcproj_release64_compiler.elements["PrecompiledHeaderOutputFile"].text = "$(IntDir)$(ProjectName).pch"
        vcproj_release64_compiler.add_element Element.new "AssemblerListingLocation"
        vcproj_release64_compiler.elements["AssemblerListingLocation"].text = "$(IntDir)$(TargetName).asm"
        vcproj_release64_compiler.add_element Element.new "ObjectFileName"
        vcproj_release64_compiler.elements["ObjectFileName"].text = "$(IntDir)"
        vcproj_release64_compiler.add_element Element.new "ProgramDataBaseFileName"
        vcproj_release64_compiler.elements["ProgramDataBaseFileName"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_release64_compiler.add_element Element.new "WarningLevel"
        vcproj_release64_compiler.elements["WarningLevel"].text = "Level3"
        vcproj_release64_compiler.add_element Element.new "SuppressStartupBanner"
        vcproj_release64_compiler.elements["SuppressStartupBanner"].text = "true"
        vcproj_release64_compiler.add_element Element.new "DebugInformationFormat"
        vcproj_release64_compiler.elements["DebugInformationFormat"].text = "ProgramDatabase"
        vcproj_release64_compiler.add_element Element.new "CompileAs"
        vcproj_release64_compiler.elements["CompileAs"].text = "Default"
        vcproj_release64_compiler.add_element Element.new "DisableSpecificWarnings"
        vcproj_release64_compiler.elements["DisableSpecificWarnings"].text = "4068;4550"

        vcproj_release64_compiler.add_element Element.new "PreprocessorDefinitions"
        vcproj_release64_compiler.elements["PreprocessorDefinitions"].text = "WIN32;NDEBUG;_WINDOWS;_USRDLL;_CRT_SECURE_NO_WARNINGS;TT_PLATFORM_WIN;WIN_VERSION;_CRT_NOFORCE_MANIFEST;_STL_NOFORCE_MANIFEST" + ";#{concatenated_defines}"

        vcproj_release64_compiler.add_element Element.new "AdditionalIncludeDirectories"
        vcproj_release64_compiler.elements["AdditionalIncludeDirectories"].text = "#{concatenated_includes}"

        vcproj_release64.add_element vcproj_release64_compiler



      else

        makefile.write("#########################################\n\n")
        i=0

        if !libraries
          # makefile.write("LIBS = ''")
        else
          libraries.each do |lib|
            if mac?
           	  lib = lib.to_s
  	         	next if lib =~ /win /
              lib.gsub!(/mac /, '')
              if (i==0)
                makefile.write("LIBS = ")
              else
                makefile.write("LIBS += ")
              end

							up = "../"
							up = "" if max

              if (lib == "FOUNDATION")
                makefile.write("#{path_to_moduleroot}/#{up}../Core/Foundation/library/build/JamomaFoundation.dylib")
              elsif (lib == "DSP")
                makefile.write("#{path_to_moduleroot}/#{up}../Core/DSP/library/build/JamomaDSP.dylib")
              elsif (lib == "MODULAR")
                makefile.write("#{path_to_moduleroot}/#{up}../Core/Modular/library/build/JamomaModular.dylib")
              elsif (lib == "GRAPH")
                makefile.write("#{path_to_moduleroot}/#{up}../Core/Graph/library/build/JamomaGraph.dylib")
              elsif (lib == "AUDIOGRAPH")
                makefile.write("#{path_to_moduleroot}/#{up}../Core/AudioGraph/library/build/JamomaAudioGraph.dylib")
              elsif (lib == "GRAPHICS")
                makefile.write("#{path_to_moduleroot}/#{up}../Core/Graphics/library/build/JamomaGraphics.dylib")
              elsif (lib == "C74-MAX")
                makefile.write("#{path_to_moduleroot}/#{up}../../Implementations/Max/source/c74support/max-includes/MaxAPI.framework/Versions/A/MaxAPI")
              elsif (lib == "C74-MSP")
                makefile.write("#{path_to_moduleroot}/#{up}../../Implementations/Max/source/c74support/msp-includes/MaxAudioAPI.framework/Versions/A/MaxAudioAPI")
              elsif (lib == "C74-JITTER")
                makefile.write("#{path_to_moduleroot}/#{up}../../Implementations/Max/source/c74support/jit-includes/JitterAPI.framework/Versions/A/JitterAPI")
              elsif (lib == "C74")
                define_c74_linker_syms = true
              else
                makefile.write(lib)
              end

            elsif linux?
              lib = lib.to_s
              next if lib =~ /mac /
              next if lib =~ /win /
              lib.gsub!(/linux /, '')

              if (lib == "FOUNDATION")
                if (i == 0)
                  makefile.write("LIBS = -lJamomaFoundation\n")
                  makefile.write("LIB_INCLUDES = -L#{path_to_moduleroot}/../../Core/Foundation/library/build\n")
                else
                  makefile.write("LIBS += -lJamomaFoundation\n")
                  makefile.write("LIB_INCLUDES += -L#{path_to_moduleroot}/../../Core/Foundation/library/build\n")
                end
              elsif (lib == "DSP")
                if (i == 0)
                  makefile.write("LIBS = -lJamomaDSP\n")
                  makefile.write("LIB_INCLUDES = -L#{path_to_moduleroot}/../../Core/DSP/library/build\n")
                else
                  makefile.write("LIBS += -lJamomaDSP\n")
                  makefile.write("LIB_INCLUDES += -L#{path_to_moduleroot}/../../Core/DSP/library/build\n")
                end
              elsif (lib == "MODULAR")
                if (i == 0)
                  makefile.write("LIBS = -lJamomaModular\n")
                  makefile.write("LIB_INCLUDES = -L#{path_to_moduleroot}/../../Core/Modular/library/build\n")
                else
                  makefile.write("LIBS += -lJamomaModular\n")
                  makefile.write("LIB_INCLUDES += -L#{path_to_moduleroot}/../../Core/Modular/library/build\n")
                end
              elsif (lib == "GRAPH")
                if (i == 0)
                  makefile.write("LIBS = -lJamomaGraph\n")
                  makefile.write("LIB_INCLUDES = -L#{path_to_moduleroot}/../../Core/Graph/library/build\n")
                else
                  makefile.write("LIBS += -lJamomaGraph\n")
                  makefile.write("LIB_INCLUDES += -L#{path_to_moduleroot}/../../Core/Graph/library/build\n")
                end
              elsif (lib == "AUDIOGRAPH")
                if (i == 0)
                  makefile.write("LIBS = -lJamomaAudioGraph\n")
                  makefile.write("LIB_INCLUDES = -L#{path_to_moduleroot}/../../Core/AudioGraph/library/build\n")
                else
                  makefile.write("LIBS += -lJamomaAudioGraph\n")
                  makefile.write("LIB_INCLUDES += -L#{path_to_moduleroot}/../../Core/AudioGraph/library/build\n")
                end
              else
                lib_dir = lib.split "/"
                if (i == 0)
                  makefile.write("LIBS = -l#{lib}\n")
                  makefile.write("LIB_INCLUDES = -L#{lib_dir}\n")
                else
                  makefile.write("LIBS += -l#{lib}\n")
                  makefile.write("LIB_INCLUDES += -L#{lib_dir}\n")
                end
              end
            end

            makefile.write("\n")
            i+=1
          end
        end
        makefile.write("\n\n")
      end

      if frameworks
        frameworks.each do |framework|
          if i == 0
            makefile.write("LIBS = /System/Library/Frameworks/#{framework}.framework/Versions/A/#{framework}\n")
          else
            makefile.write("LIBS += /System/Library/Frameworks/#{framework}.framework/Versions/A/#{framework}\n")
          end
          i+=1
        end
        makefile.write("\n\n")
      end

      if win?

        concatenated_libs_debug = ""
        concatenated_lib_dirs_debug = ""
        concatenated_libs_release = ""
        concatenated_lib_dirs_release = ""

        if !libraries
          # nothing to do!
        else
        libraries.each do |lib|
        	lib = lib.to_s
         	next if lib =~ /mac /
        	lib.gsub!(/win /, '')

        	next if lib =~/RELEASE /
	       	lib.gsub!(/DEBUG /, '')

          if (lib == "FOUNDATION")
            concatenated_libs_debug += "JamomaFoundation.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\Foundation\\library\\$(ConfigurationName)\";"
          elsif (lib == "DSP")
            concatenated_libs_debug += "JamomaDSP.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\DSP\\library\\$(ConfigurationName)\";"
          elsif (lib == "MODULAR")
            concatenated_libs_debug += "JamomaModular.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\Modular\\library\\$(ConfigurationName)\";"
          elsif (lib == "GRAPH")
            concatenated_libs_debug += "JamomaGraph.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\Graph\\library\\$(ConfigurationName)\";"
          elsif (lib == "AUDIOGRAPH")
            concatenated_libs_debug += "JamomaAudioGraph.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\AudioGraph\\library\\$(ConfigurationName)\";"
          elsif (lib == "C74-MAX")
            concatenated_libs_debug += "MaxAPI.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Implementations\\Max\\source\\c74support\\max-includes\";"
          elsif (lib == "C74-MSP")
            concatenated_libs_debug += "MaxAudio.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Implementations\\Max\\source\\c74support\\msp-includes\";"
          elsif (lib == "C74-JITTER")
            concatenated_libs_debug += "jitlib.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Implementations\\Max\\source\\c74support\\jit-includes\";"
          else
            lib_dir = lib.split "/"
            lib = lib_dir.pop
            lib_dir = lib_dir.join "/"

            lib_dir.gsub!(/(\/)/,'\\')
            concatenated_libs_debug += "#{lib};"
            concatenated_lib_dirs_debug += "\"#{lib_dir}\";"
          end
        end

        libraries.each do |lib|
        	lib = lib.to_s
         	next if lib =~ /mac /
        	lib.gsub!(/win /, '')

        	next if lib =~/DEBUG /
        	lib.gsub!(/RELEASE /, '')

          if (lib == "FOUNDATION")
            concatenated_libs_release += "JamomaFoundation.lib;"
            concatenated_lib_dirs_release += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\Foundation\\library\\$(ConfigurationName)\";"
          elsif (lib == "DSP")
            concatenated_libs_release += "JamomaDSP.lib;"
            concatenated_lib_dirs_release += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\DSP\\library\\$(ConfigurationName)\";"
          elsif (lib == "MODULAR")
            concatenated_libs_release += "JamomaModular.lib;"
            concatenated_lib_dirs_release += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\Modular\\library\\$(ConfigurationName)\";"
          elsif (lib == "GRAPH")
            concatenated_libs_release += "JamomaGraph.lib;"
            concatenated_lib_dirs_release += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\Graph\\library\\$(ConfigurationName)\";"
          elsif (lib == "AUDIOGRAPH")
            concatenated_libs_release += "JamomaAudioGraph.lib;"
            concatenated_lib_dirs_release += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\AudioGraph\\library\\$(ConfigurationName)\";"
          elsif (lib == "GRAPHICS")
            concatenated_libs_release += "JamomaGraphics.lib;"
            concatenated_lib_dirs_release += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\Core\\Graphics\\library\\$(ConfigurationName)\";"
          elsif (lib == "C74-MAX")
            concatenated_libs_debug += "MaxAPI.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\..\\Implementations\\Max\\source\\c74support\\max-includes\";"
          elsif (lib == "C74-MSP")
            concatenated_libs_debug += "MaxAudio.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\..\\Implementations\\Max\\source\\c74support\\msp-includes\";"
          elsif (lib == "C74-JITTER")
            concatenated_libs_debug += "jitlib.lib;"
            concatenated_lib_dirs_debug += "\"$(ProjectDir)#{path_to_moduleroot_win}\\..\\..\\..\\Implementations\\Max\\source\\c74support\\jit-includes\";"
          else
            lib_dir = lib.split "/"
            lib = lib_dir.pop
            lib_dir = lib_dir.join "/"

            lib_dir.gsub!(/(\/)/,'\\')
            concatenated_libs_release += "#{lib};"
            concatenated_lib_dirs_release += "\"#{lib_dir}\";"
          end
        end
        end

        vcproj_debug32_linker = Element.new "Link"
        vcproj_debug32_linker.add_element Element.new "OutputFile"
        vcproj_debug32_linker.elements["OutputFile"].text = "$(OutDir)$(ProjectName).dll"
        vcproj_debug32_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_debug32_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_debug32_linker.add_element Element.new "IgnoreAllDefaultLibraries"
        vcproj_debug32_linker.elements["IgnoreAllDefaultLibraries"].text = "false"
        vcproj_debug32_linker.add_element Element.new "IgnoreSpecificDefaultLibraries"
        vcproj_debug32_linker.elements["IgnoreSpecificDefaultLibraries"].text = "libboost_filesystem-vc110-mt-sgd-1_51.lib;libboost_system-vc110-mt-sgd-1_51.lib;libboost_regex-vc110-mt-sgd-1_51.lib"
        vcproj_debug32_linker.add_element Element.new "ModuleDefinitionFile"
        vcproj_debug32_linker.add_element Element.new "GenerateDebugInformation"
        vcproj_debug32_linker.elements["GenerateDebugInformation"].text = "true"
        vcproj_debug32_linker.add_element Element.new "ProgramDatabaseFile"
        vcproj_debug32_linker.elements["ProgramDatabaseFile"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_debug32_linker.add_element Element.new "MapFileName"
        vcproj_debug32_linker.elements["MapFileName"].text = "$(ProjectName).map"
        vcproj_debug32_linker.add_element Element.new "SubSystem"
        vcproj_debug32_linker.elements["SubSystem"].text = "Windows"
        vcproj_debug32_linker.add_element Element.new "RandomizedBaseAddress"
        vcproj_debug32_linker.elements["RandomizedBaseAddress"].text = "false"
        vcproj_debug32_linker.add_element Element.new "DataExecutionPrevention"
        vcproj_debug32_linker.add_element Element.new "ImportLibrary"
        vcproj_debug32_linker.elements["ImportLibrary"].text = "$(IntDir)$(ProjectName).lib"
        vcproj_debug32_linker.add_element Element.new "TargetMachine"
        vcproj_debug32_linker.elements["TargetMachine"].text = "MachineX86"
        vcproj_debug32_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_debug32_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_debug32_linker.add_element Element.new "AdditionalLibraryDirectories"
        vcproj_debug32_linker.elements["AdditionalLibraryDirectories"].text = "#{concatenated_lib_dirs_debug}"
        vcproj_debug32_linker.add_element Element.new "AdditionalDependencies"
        vcproj_debug32_linker.elements["AdditionalDependencies"].text = "#{concatenated_libs_debug};%(AdditionalDependencies)"           
        vcproj_debug32.add_element vcproj_debug32_linker
  
        vcproj_release32_linker = Element.new "Link"
        vcproj_release32_linker.add_element Element.new "OutputFile"
        vcproj_release32_linker.elements["OutputFile"].text = "$(OutDir)$(ProjectName).dll"
        vcproj_release32_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_release32_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_release32_linker.add_element Element.new "IgnoreAllDefaultLibraries"
        vcproj_release32_linker.elements["IgnoreAllDefaultLibraries"].text = "false"
        vcproj_release32_linker.add_element Element.new "IgnoreSpecificDefaultLibraries"
        vcproj_release32_linker.elements["IgnoreSpecificDefaultLibraries"].text = "libboost_filesystem-vc110-mt-sgd-1_51.lib;libboost_system-vc110-mt-sgd-1_51.lib;libboost_regex-vc110-mt-sgd-1_51.lib"
        vcproj_release32_linker.add_element Element.new "ModuleDefinitionFile"
        vcproj_release32_linker.add_element Element.new "GenerateDebugInformation"
        vcproj_release32_linker.elements["GenerateDebugInformation"].text = "true"
        vcproj_release32_linker.add_element Element.new "ProgramDatabaseFile"
        vcproj_release32_linker.elements["ProgramDatabaseFile"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_release32_linker.add_element Element.new "MapFileName"
        vcproj_release32_linker.elements["MapFileName"].text = "$(ProjectName).map"
        vcproj_release32_linker.add_element Element.new "SubSystem"
        vcproj_release32_linker.elements["SubSystem"].text = "Windows"
        vcproj_release32_linker.add_element Element.new "RandomizedBaseAddress"
        vcproj_release32_linker.elements["RandomizedBaseAddress"].text = "false"
        vcproj_release32_linker.add_element Element.new "DataExecutionPrevention"
        vcproj_release32_linker.add_element Element.new "ImportLibrary"
        vcproj_release32_linker.elements["ImportLibrary"].text = "$(IntDir)$(ProjectName).lib"
        vcproj_release32_linker.add_element Element.new "TargetMachine"
        vcproj_release32_linker.elements["TargetMachine"].text = "MachineX86"
        vcproj_release32_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_release32_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_release32_linker.add_element Element.new "OptimizeReferences"
        vcproj_release32_linker.elements["OptimizeReferences"].text = "true"
        vcproj_release32_linker.add_element Element.new "AdditionalLibraryDirectories"
        vcproj_release32_linker.elements["AdditionalLibraryDirectories"].text = "#{concatenated_lib_dirs_release}"
        vcproj_release32_linker.add_element Element.new "AdditionalDependencies"
        vcproj_release32_linker.elements["AdditionalDependencies"].text = "#{concatenated_libs_release};%(AdditionalDependencies)"           
        vcproj_release32.add_element vcproj_release32_linker
  
        vcproj_debug64_linker = Element.new "Link"
        vcproj_debug64_linker.add_element Element.new "OutputFile"
        vcproj_debug64_linker.elements["OutputFile"].text = "$(OutDir)$(ProjectName).dll"
        vcproj_debug64_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_debug64_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_debug64_linker.add_element Element.new "IgnoreAllDefaultLibraries"
        vcproj_debug64_linker.elements["IgnoreAllDefaultLibraries"].text = "false"
        vcproj_debug64_linker.add_element Element.new "IgnoreSpecificDefaultLibraries"
        vcproj_debug64_linker.elements["IgnoreSpecificDefaultLibraries"].text = "libboost_filesystem-vc110-mt-sgd-1_51.lib;libboost_system-vc110-mt-sgd-1_51.lib;libboost_regex-vc110-mt-sgd-1_51.lib"
        vcproj_debug64_linker.add_element Element.new "ModuleDefinitionFile"
        vcproj_debug64_linker.add_element Element.new "GenerateDebugInformation"
        vcproj_debug64_linker.elements["GenerateDebugInformation"].text = "true"
        vcproj_debug64_linker.add_element Element.new "ProgramDatabaseFile"
        vcproj_debug64_linker.elements["ProgramDatabaseFile"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_debug64_linker.add_element Element.new "MapFileName"
        vcproj_debug64_linker.elements["MapFileName"].text = "$(ProjectName).map"
        vcproj_debug64_linker.add_element Element.new "SubSystem"
        vcproj_debug64_linker.elements["SubSystem"].text = "Windows"
        vcproj_debug64_linker.add_element Element.new "RandomizedBaseAddress"
        vcproj_debug64_linker.elements["RandomizedBaseAddress"].text = "false"
        vcproj_debug64_linker.add_element Element.new "DataExecutionPrevention"
        vcproj_debug64_linker.add_element Element.new "ImportLibrary"
        vcproj_debug64_linker.elements["ImportLibrary"].text = "$(IntDir)$(ProjectName).lib"
        vcproj_debug64_linker.add_element Element.new "TargetMachine"
        vcproj_debug64_linker.elements["TargetMachine"].text = "MachineX64"
        vcproj_debug64_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_debug64_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_debug64_linker.add_element Element.new "AdditionalLibraryDirectories"
        vcproj_debug64_linker.elements["AdditionalLibraryDirectories"].text = "#{concatenated_lib_dirs_debug}"
        vcproj_debug64_linker.add_element Element.new "AdditionalDependencies"
        vcproj_debug64_linker.elements["AdditionalDependencies"].text = "#{concatenated_libs_debug};%(AdditionalDependencies)"           
        vcproj_debug64.add_element vcproj_debug64_linker
  
        vcproj_release64_linker = Element.new "Link"
        vcproj_release64_linker.add_element Element.new "OutputFile"
        vcproj_release64_linker.elements["OutputFile"].text = "$(OutDir)$(ProjectName).dll"
        vcproj_release64_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_release64_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_release64_linker.add_element Element.new "IgnoreAllDefaultLibraries"
        vcproj_release64_linker.elements["IgnoreAllDefaultLibraries"].text = "false"
        vcproj_release64_linker.add_element Element.new "IgnoreSpecificDefaultLibraries"
        vcproj_release64_linker.elements["IgnoreSpecificDefaultLibraries"].text = "libboost_filesystem-vc110-mt-sgd-1_51.lib;libboost_system-vc110-mt-sgd-1_51.lib;libboost_regex-vc110-mt-sgd-1_51.lib"
        vcproj_release64_linker.add_element Element.new "ModuleDefinitionFile"
        vcproj_release64_linker.add_element Element.new "GenerateDebugInformation"
        vcproj_release64_linker.elements["GenerateDebugInformation"].text = "true"
        vcproj_release64_linker.add_element Element.new "ProgramDatabaseFile"
        vcproj_release64_linker.elements["ProgramDatabaseFile"].text = "$(IntDir)$(ProjectName).pdb"
        vcproj_release64_linker.add_element Element.new "MapFileName"
        vcproj_release64_linker.elements["MapFileName"].text = "$(ProjectName).map"
        vcproj_release64_linker.add_element Element.new "SubSystem"
        vcproj_release64_linker.elements["SubSystem"].text = "Windows"
        vcproj_release64_linker.add_element Element.new "RandomizedBaseAddress"
        vcproj_release64_linker.elements["RandomizedBaseAddress"].text = "false"
        vcproj_release64_linker.add_element Element.new "DataExecutionPrevention"
        vcproj_release64_linker.add_element Element.new "ImportLibrary"
        vcproj_release64_linker.elements["ImportLibrary"].text = "$(IntDir)$(ProjectName).lib"
        vcproj_release64_linker.add_element Element.new "TargetMachine"
        vcproj_release64_linker.elements["TargetMachine"].text = "MachineX64"
        vcproj_release64_linker.add_element Element.new "SuppressStartupBanner"
        vcproj_release64_linker.elements["SuppressStartupBanner"].text = "true"
        vcproj_release64_linker.add_element Element.new "OptimizeReferences"
        vcproj_release64_linker.elements["OptimizeReferences"].text = "true"             
        vcproj_release64_linker.add_element Element.new "AdditionalLibraryDirectories"
        vcproj_release64_linker.elements["AdditionalLibraryDirectories"].text = "#{concatenated_lib_dirs_release}"
        vcproj_release64_linker.add_element Element.new "AdditionalDependencies"
        vcproj_release64_linker.elements["AdditionalDependencies"].text = "#{concatenated_libs_release};%(AdditionalDependencies)"           
        vcproj_release64.add_element vcproj_release64_linker
        
      else

        makefile.write("#########################################\n\n")
        makefile.write("OPTIMIZATION_DEBUG = -O0\n")
        makefile.write("OPTIMIZATION_RELEASE = -O3\n")
        makefile.write("\n")
        if mac?
          if icc
            makefile.write("OPTIONS = -dynamiclib -ip -msse3 -ftz -fno-alias -fp-model fast=2\n")
            # ftz:             Flushes denormal results to zero.
            # ip :             Interprocedural Optimizations such as function inlining, dead code elimination, etc.
            # fp-model fast=2: use more aggressive optimizations  when  implementing  float-ing-point calculations.
            #                  These  optimizations  increase  speed, but may alter the accuracy of floating-point
            #                  computations.
            # xHost:           Tells the compiler to generate instructions for the highest instruction set
            #                  available on the compilation host processor.

            #makefile.write("OPTIONS = -dynamiclib -msse3 -mfpmath=sse -gdwarf-2\n")
          else
            makefile.write("OPTIONS = -shared -msse3 -mfpmath=sse -gdwarf-2\n")
          end
        else
          if beagle?
            makefile.write("OPTIONS = -shared -g\n")
          else
            makefile.write("OPTIONS = -shared -msse3 -mfpmath=sse -g\n")
          end
        end
        if icc
          makefile.write("OPTIONS += -std=c++0x \n")
        else
          makefile.write("OPTIONS += -std=c++11 \n")
        end
        makefile.write("OPTIONS += -stdlib=libc++ # -U__STRICT_ANSI__ -D__STDC_FORMAT_MACROS") if clang
        makefile.write("\n")
        if mac?
          makefile.write("WARNINGS = -Wall -Wno-unknown-pragmas -Wno-trigraphs")
        else
          makefile.write("WARNINGS = -Wall -Wno-unknown-pragmas -Wno-conversion")
        end
        makefile.write("\n")
        makefile.write("DEFINES = -DTT_PLATFORM_MAC\n") if mac?
        makefile.write("DEFINES = -DTT_PLATFORM_LINUX\n") if linux?
        makefile.write("DEFINES = -DTT_PLATFORM_WIN -DWIN32 -D_WINDOWS -D_USRDLL -D_CRT_SECURE_NO_WARNINGS -D_CRT_NOFORCE_MANIFEST -D_STL_NOFORCE_MANIFEST\n") if win?
        makefile.write("DEFINES += -DTT_PLATFORM_ARM\n") if beagle?

        if defines
          makefile.write("#########################################\n\n")
          i=0
          defines.each do |define|
            define = define.to_s
            makefile.write("DEFINES += -D#{define}\n")
          end
          makefile.write("\n\n")
        end

        makefile.write("\n")
        makefile.write("#########################################\n\n")
        makefile.write("CFLAGS = $(OPTIONS) $(DEFINES) $(INCLUDES) $(WARNINGS)\n")
        if mac?
          makefile.write("CFLAGS += -include#{prefix}\n") if prefix
          makefile.write("LDFLAGS = $(OPTIONS) $(DEFINES) $(LIBS) $(WARNINGS)\n")
          makefile.write("LDFLAGS += -install_name \"#{distropath}/$(NAME).dylib\" \n") if project_type == "library"
          if gcc47
            makefile.write("LDFLAGS += -static-libgcc\n")
          end
        end
        makefile.write("LDFLAGS = $(INCLUDES) $(LIB_INCLUDES) $(LIBS) -g\n") if linux?
        makefile.write("LDFLAGS += -fPIC\n") if beagle?
        if define_c74_linker_syms
          if mac?
            makefile.write("C74SYMS = -Wl,-U,_sysmem_newptr,-U,_sysmem_freeptr,-U,_sysmem_resizeptr,-U,_strncpy_zero,-U,_stdinletinfo,-U,_outlet_new,-U,_outlet_anything,-U,_object_getmethod,-U,_object_post,-U,_object_obex_store,-U,_object_obex_dumpout,-U,_object_method,-U,_object_error,-U,_object_alloc,-U,_hashtab_store,-U,_hashtab_new,-U,_hashtab_lookup,-U,_gensym,-U,_error,-U,_common_symbols_gettable,-U,_class_register,-U,_class_new,-U,_class_attr_addattr_parse,-U,_class_addmethod,-U,_class_addattr,-U,_attr_offset_new,-U,_attr_args_process,-U,_attr_args_offset,-U,_atom_setsym,-U,_atom_setlong,-U,_atom_setfloat,-U,_atom_gettype,-U,_atom_getsym,-U,_atom_getlong,-U,_atom_getfloat,-U,_z_dsp_setup,-U,_z_dsp_free,-U,_sys_getsr,-U,_dsp_addv,-U,_class_dspinit,-U,_jit_object_method,-U,_outlet_int,-U,_outlet_list,-U,_class_attr_get,-U,_dsp_add,-U,_fileusage_addfile,-U,_locatefile_extended,-U,_nameinpath,-U,_path_closefolder,-U,_path_foldernextfile,-U,_path_openfolder,-U,_defer_low,-U,_globalsymbol_reference,-U,_globalsymbol_dereference,-U,_bangout,-U,_freeobject,-U,_outlet_bang,-U,_outlet_float,-U,_proxy_getinlet,-U,_proxy_new,-U,_atom_arg_getlong,-U,_atom_arg_getsym,-U,_floatout,-U,_intout,-U,_post,-U,_sys_getblksize,-U,_sysmem_newptrclear,-U,_object_attr_setfloat,-U,_object_attr_setlong,-U,_atom_arg_getfloat,-U,_atom_getfloatarg,-U,_listout,-U,_attr_addfilter_clip,-U,_attr_dictionary_process,-U,_class_attr_addattr_format,-U,_jbox_free,-U,_jbox_get_rect_for_view,-U,_jbox_initclass,-U,_jbox_new,-U,_jbox_ready,-U,_jbox_redraw,-U,_jgraphics_fill,-U,_jgraphics_rectangle_rounded,-U,_jgraphics_set_source_jrgba,-U,_object_attach_byptr,-U,_object_attr_get_rect,-U,_object_attr_set_rect,-U,_object_detach_byptr,-U,_object_dictionaryarg,-U,_object_register,-U,_object_unregister,-U,_patcherview_get_jgraphics,-U,_symbol_unique,-U,_attr_offset_array_new,-U,_defer,-U,_object_free,-U,_object_method_typed,-U,_object_new_typed,-U,_path_copyfile,-U,_path_copyfolder,-U,_path_createfolder,-U,_path_frompathname,-U,_path_nameconform,-U,_clock_delay,-U,_clock_new,-U,_clock_unset,-U,_intin,-U,_addmess,-U,_newobject,-U,_setup,-U,_z_add_signalmethod,-U,_object_attr_setsym,-U,_open_dialog,-U,_path_addnamed,-U,_path_createsysfile,-U,_path_getfilemoddate,-U,_path_opensysfile,-U,_path_topotentialname,-U,_sysfile_close,-U,_sysfile_geteof,-U,_sysfile_read,-U,_sysfile_seteof,-U,_sysfile_write,-U,_systime_secondstodate,-U,_qelem_new,-U,_qelem_free,-U,_qelem_set,-U,_jit_class_addadornment,-U,_jit_class_addattr,-U,_jit_class_addmethod,-U,_jit_class_findbyname,-U,_jit_class_new,-U,_jit_class_register,-U,_jit_error_code,-U,_jit_object_alloc,-U,_jit_object_free,-U,_jit_object_new,-U,_jit_object_new_imp,-U,_max_addmethod_usurp_low,-U,_max_jit_attr_args,-U,_max_jit_classex_mop_wrap,-U,_max_jit_classex_setup,-U,_max_jit_classex_standard_wrap,-U,_max_jit_mop_assist,-U,_max_jit_mop_free,-U,_max_jit_mop_getoutputmode,-U,_max_jit_mop_outputmatrix,-U,_max_jit_mop_setup_simple,-U,_max_jit_obex_adornment_get,-U,_max_jit_obex_free,-U,_max_jit_obex_jitob_get,-U,_max_jit_obex_new,-U,_jbox_get_nextobject,-U,_jbox_get_object,-U,_jbox_get_varname,-U,_jpatcher_get_firstobject,-U,_object_attr_getnames,-U,_object_attr_getvalueof,-U,_object_new_imp,-U,_object_obex_lookup,-U,_jit_atom_setfloat,-U,_jit_error_sym,-U,_jit_matrix_info_default,-U,_jit_object_findregistered,-U,_jit_symbol_unique,-U,_max_jit_obex_dumpout,-U,_jit_object_detach,-U,_jit_object_attach,-U,_atom_setobj,-U,_gettime,-U,_critical_enter,-U,_critical_exit,-U,_object_attr_setchar,-U,_object_new,-U,_object_warn,-U,_outlet_atoms,-U,_atom_setparse,-U,_class_findbyname,-U,_maxversion,-U,_newinstance,-U,_object_attr_getobj,-U,_object_attr_getsym,-U,_object_classname,-U,_object_method_long,-U,_object_method_parse,-U,_path_topathname,-U,_qelem_unset,-U,_saveas_promptset,-U,_saveasdialog_extended,-U,_setclock_fdelay,-U,_sysmem_copyptr,-U,_systime_ms,-U,_zgetfn,-U,__jit_sym_char,-U,__jit_sym_getdata,-U,__jit_sym_jit_matrix,-U,__jit_sym_setinfo,-U,_jit_object_register,-U,_jit_object_unregister,-U,_class_dspinitjbox,-U,_jbox_notify,-U,_jgraphics_attr_setrgba,-U,_jgraphics_image_surface_create,-U,_jgraphics_image_surface_draw,-U,_jgraphics_image_surface_set_pixel,-U,_jgraphics_line_to,-U,_jgraphics_move_to,-U,_jgraphics_rectangle_fill_fast,-U,_jgraphics_set_line_width,-U,_jgraphics_stroke,-U,_jgraphics_surface_destroy,-U,_notify_free,-U,_sys_getdspstate,-U,_z_jbox_dsp_free,-U,_z_jbox_dsp_setup,-U,_classname_openhelp,-U,_classname_openrefpage,-U,_jbox_getoutlet,-U,_newobject_sprintf,-U,_object_attr_setvalueof,-U,_object_method_sym,-U,_filewatcher_new,-U,_filewatcher_start,-U,_filewatcher_stop,-U,_atom_alloc,-U,_attribute_new_parse,-U,_class_sticky,-U,_class_sticky_clear,-U,_dictionary_read,-U,_jbox_get_textfield,-U,_jbox_set_mousedragdelta,-U,_jdialog_showtext,-U,_jfont_create,-U,_jfont_destroy,-U,_jgraphics_arc,-U,_jgraphics_close_path,-U,_jgraphics_select_font_face,-U,_jgraphics_set_font_size,-U,_jgraphics_show_text,-U,_jpatcher_get_firstview,-U,_jpopupmenu_additem,-U,_jpopupmenu_addseperator,-U,_jpopupmenu_create,-U,_jpopupmenu_destroy,-U,_jpopupmenu_popup,-U,_jpopupmenu_setfont,-U,_linklist_append,-U,_linklist_clear,-U,_linklist_getindex,-U,_linklist_getsize,-U,_linklist_new,-U,_object_addattr_format,-U,_object_attach_byptr_register,-U,_object_attr_setcolor,-U,_object_attr_setobj,-U,_symobject_new,-U,_textfield_get_textmargins,-U,_textfield_set_editonclick,-U,_textfield_set_noactivate,-U,_textfield_set_readonly,-U,_textfield_set_textcolor,-U,_textfield_set_textmargins,-U,_textfield_set_useellipsis,-U,_textfield_set_wordwrap,-U,_jgraphics_line_draw_fast,-U,_jgraphics_rectangle,-U,_jmouse_setposition_view,-U,_atom_gettext,-U,_jgraphics_oval,-U,_jgraphics_set_source_rgb,-U,_jgraphics_set_source_rgba,-U,_jpopupmenu_popup_nearbox,-U,_jtextlayout_create,-U,_jtextlayout_destroy,-U,_jtextlayout_draw,-U,_jtextlayout_set,-U,_jtextlayout_settextcolor,-U,__jit_sym_float32,-U,__jit_sym_getindex,-U,__jit_sym_jit_attr_offset,-U,__jit_sym_jit_mop,-U,__jit_sym_lock,-U,_jit_object_error,-U,__jit_sym_jit_attr_offset_array,-U,__jit_sym_long,-U,__jit_sym_symbol,-U,_table_get,-U,_jbox_get_maxclass,-U,_jpatchline_get_box1,-U,_jpatchline_get_box2,-U,_jpatchline_get_inletnum,-U,_jpatchline_get_outletnum,-U,_cpost,-U,_object_error_obtrusive,-U,_gensym_tr,-U,_str_tr,-U,_jit_object_method_imp,-U,_object_method_imp\n")
            makefile.write("LDFLAGS += $(C74SYMS)\n")
          end
        end

        if project_type == "library"
          extension_suffix = ".dylib" if mac?
          extension_suffix = ".so" if linux?
          extension_suffix = ".dll" if win?
        elsif project_type == "implementation"
          extension_suffix = "" if mac? # note that the bundle is a special deal...
          extension_suffix = ".mxe" if win?

          #TODO: binary suffix should depend on the type of implementation we are building!

          extension_suffix = "" if linux?
        else
          extension_suffix = ".ttdylib" if mac?
          extension_suffix = ".ttso" if linux?
          extension_suffix = ".ttdll" if win?
        end

        ######################################################################################################################
        touch_dest = nil;
        build_temp = "build"

        if project_type == "library"
          extension_dest = "/usr/local/lib" if mac?
        elsif project_type == "implementation"
          if mac?
            extension_dest = "#{projectdir}/../../Jamoma/externals/$(NAME).mxo/Contents/MacOS/"
            extension_dest = "#{projectdir}/../../Jamoma/externals/$(NAME).mxo/Contents/MacOS/" if max
          end
          extension_dest = "#{projectdir}\\..\\..\\Jamoma\\externals" if win?

          #TODO: binary destination should depend on the type of implementation we are building!

          extension_dest = "/usr/local/jamoma/implementations" if linux?
        else # extension
          extension_dest = "/usr/local/lib" if mac?
          extension_dest = "/usr/local/lib/jamoma/extensions" if linux?
        end

        if project_type == "library"
          extension_dest = "/usr/local/lib" if mac?
          extension_dest = "/usr/local/lib/jamoma/lib" if linux?
        elsif project_type == "implementation"
          if mac?
            if max
  	          extension_dest = "#{projectdir}/../../Jamoma/externals/$(NAME).mxo/Contents/MacOS/"
  	          touch_dest = "#{projectdir}/../../Jamoma/externals/$(NAME).mxo/"
            end
          end
          extension_dest = "#{projectdir}\\..\\..\\Jamoma\\externals" if win?
          extension_dest = "/usr/local/jamoma/implementations" if linux?
        else # extension
          extension_dest = "/usr/local/lib" if mac?
          extension_dest = "/usr/local/lib/jamoma/extensions" if linux?
        end

        if (!touch_dest)
          touch_dest = extension_dest
        end

        # begin by setting dumb environment variables required for carbon header work correctly on OS 10.8 with Xcode 4.4
        # and GCC
        if mac?
          # First detect if we are in Xcode 4.4, since the environment variables will break the build for Xcode 3
          out = ""
          err = ""
          Open3.popen3("xcodebuild -version") do |stdin, stdout, stderr|
            out = stdout.read
            err = stderr.read
          end
        end
        # {'environment' if (mac? && out.match(/Xcode 4/))}

        if mac? || linux?
          makefile.write("\n")
          makefile.write("#########################################\n\n")
          makefile.write("Debug: OPTIMIZATION_FLAGS = $(OPTIMIZATION_DEBUG)\n")
          makefile.write("Debug: createdirs install\n")
          makefile.write("\n")

          makefile.write("Release: OPTIMIZATION_FLAGS = $(OPTIMIZATION_RELEASE)\n")
          makefile.write("Release: createdirs install\n")
          makefile.write("\n")

          makefile.write("createdirs:\n")
          makefile.write("\tmkdir -p #{build_temp}\n")
          makefile.write("\tmkdir -p #{extension_dest}\n") if project_type == "implementation"
          makefile.write("\ttouch #{touch_dest}\n") if project_type == "implementation"
          if max
							makefile.write("\tcp #{projectdir}/../PkgInfo #{extension_dest}/../PkgInfo\n") if project_type == "implementation"
          else
						if ($alternate_pkgInfo)
							makefile.write("\tcp #{$alternate_pkgInfo} #{extension_dest}/../PkgInfo\n") if project_type == "implementation"
						else
							makefile.write("\tcp #{path_to_moduleroot}/../../Implementations/Max/source/PkgInfo #{extension_dest}/../PkgInfo\n") if project_type == "implementation"
						end
          end
          makefile.write("\n")

          # All compiled object files are dependent upon their individual source file and _all_ headers
          # At some point we could try to be more refined about depending on _all_ headers, but for now this is the safest way to go.
          if linux?
              makefile.write("%.o: %.cpp ${INCLUDE_FILES}\n")
              makefile.write("\t$(CC) $(CFLAGS) $(OPTIMIZATION_FLAGS) -c $< -o $@\n")
          else
          if (arch == 'i386' || arch == 'default')
              makefile.write("%.i386.o: %.cpp ${INCLUDE_FILES}\n")
              makefile.write("\t$(CC_32) $(CFLAGS) $(OPTIMIZATION_FLAGS) -c $< -o $@\n")
              makefile.write("%.i386.mm.o: %.mm ${INCLUDE_FILES}\n")
              makefile.write("\t$(CC_32) $(CFLAGS) $(OPTIMIZATION_FLAGS) -c $< -o $@\n")
          end
          if (arch == 'x86_64' || arch == 'default')
              makefile.write("%.x64.o: %.cpp ${INCLUDE_FILES}\n")
              makefile.write("\t$(CC_64) $(CFLAGS) $(OPTIMIZATION_FLAGS) -c $< -o $@\n")
              makefile.write("%.x64.mm.o: %.mm ${INCLUDE_FILES}\n")
              makefile.write("\t$(CC_64) $(CFLAGS) $(OPTIMIZATION_FLAGS) -c $< -o $@\n")
          end
          end
          makefile.write("\n")

          if linux?
            makefile.write("link: compile | $(SRC)' \n\n")
          else
            makefile.write("link: #{'i386' if (arch == 'i386' || arch == 'default')} #{'x64' if (arch == 'x86_64' || arch == 'default')} | #{'$(SRC32)' if (arch =='i386' || arch == 'default')} #{'$(SRC64)' if (arch == 'x86_64' || arch == 'default')}\n\n")
          end

          if linux?
              makefile.write("compile: $(SRC)\n")
              makefile.write("\t$(CC) $(LDFLAGS) $(OPTIMIZATION_FLAGS) -o #{build_temp}/$(NAME)#{extension_suffix} $(SRC)\n")
          else
          if (arch == 'i386' || arch == 'default')
              makefile.write("i386: $(SRC32)\n")
              makefile.write("\t$(CC_32) $(LDFLAGS) $(OPTIMIZATION_FLAGS) -o #{build_temp}/$(NAME)-i386#{extension_suffix} $(SRC32)\n")
              makefile.write("\n")
          end

          if (arch == 'x86_64' || arch == 'default')
              makefile.write("x64: $(SRC64)\n")
              makefile.write("\t$(CC_64) $(LDFLAGS) $(OPTIMIZATION_FLAGS) -o #{build_temp}/$(NAME)-x86_64#{extension_suffix} $(SRC64)\n")
              makefile.write("\n")
          end

          end

          makefile.write("lipo: | link\n")

          if linux?
            makefile.write("\tcp #{build_temp}/$(NAME)#{extension_suffix} #{build_temp}/$(NAME)#{extension_suffix}\n")
          else # mac?
            # not a universal binary, just copy it
            if (arch == 'i386')
              makefile.write("\tcp #{build_temp}/$(NAME)-i386#{extension_suffix} #{build_temp}/$(NAME)#{extension_suffix}\n")
            elsif (arch == 'x86_64')
              makefile.write("\tlipo #{build_temp}/$(NAME)-x86_64#{extension_suffix} -create -output #{build_temp}/$(NAME)#{extension_suffix}\n")
            else
              makefile.write("\tlipo #{build_temp}/$(NAME)-i386#{extension_suffix} #{build_temp}/$(NAME)-x86_64#{extension_suffix} -create -output #{build_temp}/$(NAME)#{extension_suffix}\n")
            end
            makefile_fix_install_names(makefile, project_type, libraries)
          end
          makefile.write("\n")

          makefile.write("clean:\n")
          # this is going be a bit brute-force, but someone else can do some sort of fancy recursive thing to make this better ;-)
          makefile.write("\trm -f $(SRC32) $(SRC64)\n")
          makefile.write("\trm -rf #{build_temp}\n")
          makefile.write("\n")

          makefile.write("install: | lipo\n")
          makefile.write("\t#{"sudo " if linux?}cp #{build_temp}/$(NAME)#{extension_suffix} #{extension_dest}\n")
          if postbuilds
            postbuilds.each do |postbuild|
              postbuild = postbuild.to_s
              makefile.write("\t#{postbuild}\n")
            end
          end
          makefile.write("\n")

        else

          #################        #################        #################        #################        #################        #################
          #       Debug:
          #################        #################        #################        #################        #################        #################
          makefile.write("\n")
          makefile.write("#########################################\n\n")
          makefile.write("Debug:\n")
          makefile.write("\tmkdir -p build\n")

          if mac?
#            makefile.write("\tmkdir -p #{extension_dest}\n")
#            makefile.write("\ttouch #{extension_dest}\n")
            if (arch == 'i386')
              makefile.write("\t$(CC_32) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_DEBUG) -o build/$(NAME)-i386#{extension_suffix}\n")
              makefile.write("\tcp build/$(NAME)-i386#{extension_suffix} build/$(NAME)#{extension_suffix}\n")
            elsif (arch == 'x86_64')
              makefile.write("\t$(CC_64) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_DEBUG) -o build/$(NAME)-x86_64#{extension_suffix}\n")
              makefile.write("\tlipo build/$(NAME)-x86_64#{extension_suffix} -create -output build/$(NAME)#{extension_suffix}\n")
            else
                makefile.write("\t$(CC_32) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_DEBUG) -o build/$(NAME)-i386#{extension_suffix}\n")
                makefile.write("\t$(CC_64) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_DEBUG) -o build/$(NAME)-x86_64#{extension_suffix}\n")
                makefile.write("\tlipo build/$(NAME)-i386#{extension_suffix} build/$(NAME)-x86_64#{extension_suffix} -create -output build/$(NAME)#{extension_suffix}\n")
            end
            makefile_fix_install_names(makefile, project_type, libraries)
          else
            makefile.write("\t$(CC) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_DEBUG) -o build/$(NAME)#{extension_suffix}\n")
          end

          if project_type == "library"
            extension_dest = "/usr/local/lib" if mac?
        		if linux?
              extension_dest = "/usr/local/lib/jamoma/lib"
        		  makefile.write("\tsudo mkdir -p #{extension_dest}\n")
        		end
          elsif project_type == "implementation"
            if mac?
              if max
              	extension_dest = "#{projectdir}/../../Jamoma/externals/$(NAME).mxo/Contents/MacOS/"
              	touch_dest = "#{projectdir}/../../Jamoma/externals/$(NAME).mxo/"
              end
              makefile.write("\tmkdir -p #{extension_dest}\n")
              if ($alternate_pkgInfo)
                makefile.write("\tcp #{$alternate_pkgInfo} #{extension_dest}/../PkgInfo\n")
              else
                makefile.write("\tcp #{path_to_moduleroot}/../../Implementations/Max/source/PkgInfo #{extension_dest}/../PkgInfo\n")
              end
              makefile.write("\ttouch #{touch_dest}\n")
            end
            extension_dest = "#{projectdir}\\..\\..\\Jamoma\\externals" if win?

            #TODO: binary destination should depend on the type of implementation we are building!

            extension_dest = "/usr/local/jamoma/implementations" if linux?
          else # extension
            extension_dest = "/usr/local/lib" if mac?
            extension_dest = "/usr/local/lib/jamoma/extensions" if linux?
          end

          makefile.write("\t#{"sudo " if linux?}cp build/$(NAME)#{extension_suffix} #{extension_dest}\n")
          if postbuilds
            postbuilds.each do |postbuild|
              postbuild = postbuild.to_s
              makefile.write("\t#{postbuild}\n")
            end
          end
          #################        #################        #################        #################        #################        #################
          #       Release
          #################        #################        #################        #################        #################        #################
          makefile.write("\n")
          makefile.write("Release:\n")
          makefile.write("\tmkdir -p build\n")
          if mac?
            makefile.write("\tmkdir -p #{extension_dest}\n")
            if ($alternate_pkgInfo)
              makefile.write("\tcp #{$alternate_pkgInfo} #{extension_dest}/../PkgInfo\n") if project_type == "implementation"
            else
              makefile.write("\tcp #{path_to_moduleroot}/../../Implementations/Max/source/PkgInfo #{extension_dest}/../PkgInfo\n") if project_type == "implementation"
            end

            if (arch == 'i386')
              makefile.write("\t$(CC_32) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_RELEASE) -o build/$(NAME)-i386#{extension_suffix}\n")
              makefile.write("\tcp build/$(NAME)-i386#{extension_suffix} build/$(NAME)#{extension_suffix}\n")
            elsif (arch == 'x86_64')
              makefile.write("\t$(CC_64) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_RELEASE) -o build/$(NAME)-x86_64#{extension_suffix}\n")
              makefile.write("\tlipo build/$(NAME)-x86_64#{extension_suffix} -create -output build/$(NAME)#{extension_suffix}\n")
            else
              makefile.write("\t$(CC_32) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_RELEASE) -o build/$(NAME)-i386#{extension_suffix}\n")
              makefile.write("\t$(CC_64) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_RELEASE) -o build/$(NAME)-x86_64#{extension_suffix}\n")
              makefile.write("\tlipo build/$(NAME)-i386#{extension_suffix} build/$(NAME)-x86_64#{extension_suffix} -create -output build/$(NAME)#{extension_suffix}\n")
            end
            makefile_fix_install_names(makefile, project_type, libraries)

            if project_type == "implementation"
              makefile.write("\ttouch #{touch_dest}\n")
            end
          else
            makefile.write("\t$(CC) $(SRC) $(LDFLAGS) $(CFLAGS) $(OPTIMIZATION_RELEASE) -o build/$(NAME)#{extension_suffix}\n")
          end
   		    makefile.write("\tsudo mkdir -p #{extension_dest}\n") if linux?
          makefile.write("\t#{"sudo " if linux?}cp build/$(NAME)#{extension_suffix} #{extension_dest}\n")
          if postbuilds
            postbuilds.each do |postbuild|
              postbuild = postbuild.to_s
              makefile.write("\t#{postbuild}\n")
            end
          end
          #################        #################        #################        #################        #################        #################
          #       Clean:
          #################        #################        #################        #################        #################        #################
          makefile.write("\n")
          makefile.write("clean:\n")
          makefile.write("\trm -f *.o\n")
          makefile.write("\trm -rf build\n")
          #################        #################        #################        #################        #################        #################
          #       Install:
          #################        #################        #################        #################        #################        #################
          makefile.write("\n")
          makefile.write("install:\n")
          makefile.write("\t#{"sudo " if linux?}cp build/$(NAME)#{extension_suffix} #{extension_dest}\n")
          if postbuilds
            postbuilds.each do |postbuild|
              postbuild = postbuild.to_s
              makefile.write("\t#{postbuild}\n")
            end
          end
        end

      end # big new if mac? statement

      if win?
  	    vcproj_root.add_element(vcproj_files)

        # WRITE THE VCPROJ FILE ########################
        #f = File.new(filepath, "w")
        f = File.new("#{projectdir}/#{projectname}.vcxproj", "w")
        formatter = REXML::Formatters::Pretty.new
        formatter.compact = true # compact is REQUIRED -- the vcxproj is extremely sensitive to having whitespace in values
        s = ""

        vcproj << XMLDecl.new("1.0", "UTF-8")

        formatter.write vcproj, s
        # puts s

        # Now that we have the XML, perform additional substitutions
        s.gsub!(/\#(\S*)/, '<o>\1</o>')

        f.write(s)
        f.close
        # WRITE THE VCPROJ FILE ########################

        winpath = "#{Dir.pwd}/#{projectdir}/#{projectname}.vcxproj"
  	    #puts "cygwin path: #{winpath}"
  	    #winpath = `cygpath -w #{winpath}`
  	    winpath.gsub!(/(\n)/,'')
  	    #puts "winpath: #{winpath}"
        #`vcbuild /upgrade "#{winpath}"`
      else
        makefile.flush
        makefile.close
        makefile_generated = true
      end
    end

    return makefile_generated
  end

  def find_and_build_project(projectdir, configuration, clean, forcedCompiler, distropath)
    foldername = projectdir.split("/").last
    use_make = generate_makefile(projectdir, foldername, forcedCompiler)

    # First look for a YAML project config file
    # If one exists, then we need to first generate the platform-specific project files using CMake
    #
    # A global called $g_use_yaml_project_files must be turned-on at the top of this file though...
    #
    # How do we deal with iOS here?
    # TODO: switch Windows to GCC
    #

    # fall back on a custom Makefile (e.g. for tap.loader)
    if (!use_make && !File.exists?("#{projectdir}/#{foldername}.xcodeproj") && mac?)
      use_make = true
    end

    if projectdir == "jcom.in~" || projectdir == "jcom.out~" || projectdir == "jcom.parameter"
      clean = true
    end

    if win?
      rgx = /.vcxproj$/
    elsif linux?
      rgx = /Makefile/
    else
      rgx = /.xcodeproj$/
    end
    rgx = /Makefile/ if use_make

    Dir.foreach(projectdir) do |file|
      if rgx.match(file)
        build_project(projectdir, file, configuration, clean, distropath, use_make)
      end
    end

  end


  def find_and_copy_helpfile(filedir, dstdir)

    	rgx = /.maxhelp/
    Dir.foreach(filedir) do |file|
      if rgx.match(file)
          copy_helpfile(file, filedir, dstdir)
      end
    end
  end


  def build_dir(dir, configuration, clean, forcedCompiler, distropath=nil)
    dir = "#{@svn_root}/#{dir}"
    return if !FileTest.exist?(dir) || !FileTest.directory?(dir)

    if (dir == "source")
      puts "Building Max Externals"
      puts
    end

    Dir.foreach(dir) do |subf|
      next if /^\./.match(subf)
      next if /common/.match(subf)
      next if !FileTest.directory?("#{dir}/#{subf}")
      find_and_build_project("#{dir}/#{subf}", configuration, clean, forcedCompiler, distropath)
    end
  end


  def maxhelp_dir(dir, dstdir)
    dir = "#{@svn_root}/#{dir}"
    return if !FileTest.exist?(dir) || !FileTest.directory?(dir)
    Dir.foreach(dir) do |subf|
      next if /^\./.match(subf)
      next if /common/.match(subf)
      next if !FileTest.directory?("#{dir}/#{subf}")
      find_and_copy_helpfile("#{dir}/#{subf}", dstdir)
    end
  end


  def create_audiograph_objectmappings(filedir)
    return if !FileTest.exist?(filedir) || !FileTest.directory?(filedir)

	local_dir = Dir.pwd
    Dir.chdir(filedir)
    objectmappings = File.new("jamoma-objectmappings.txt", 'w')
    database = File.new("jamoma-database.txt", 'w')

    rgx = /=.mxe/

    Dir.foreach(filedir) do |file|
      if rgx.match(file)
        #  puts "found " + file
        basename = File.basename(file, ".mxe")
        objectmappings.puts "max objectfile " + basename.gsub("=","≈") + " " + basename + ";"
        database.puts "max db.addvirtual alias " + basename.gsub("=","≈") + " " + basename + ";"
      end
    end

    objectmappings.close
    database.close
    Dir.chdir(local_dir)
  end

end
