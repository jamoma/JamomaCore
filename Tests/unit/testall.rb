basedir = "."
@testfiles = Dir.glob("*.rb")

@testfiles.each do |testfile|
  if testfile != "testall.rb"
    puts "**********************************************************************"
    puts testfile
    puts "**********************************************************************"
    load testfile
  end
end