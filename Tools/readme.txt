usage: 
build.rb <required:configuration> <optional:clean>

If you want a nice, clean release version, try this: 
	./build.rb Deployment clean

or a developer release, try this: 
	./build.rb Development


If you want to make an installer, then follow these instructions:
1. do a clean deployment build (above)
2. all zips should be unzipped (3rd-party externs) too
3. ./installer.rb
