Jamoma Audio Graph
Create dynamic networks of Jamoma DSP objects
_________________________________________________________________


Introduction

The Jamoma Audio Graph layer is an open source wrapper for Jamoma DSP classes to create dynamic topographies of interacting audio objects.


Features

- Dynamic Multichannel connections
- Dynamic datarate and vectorsize
- Dynamic signal chain (re)configuration
- 64 bit signal chain


Installing

Place the folder containing this ReadMe somewhere on your hard-drive. Then Make sure your compiler has access to it in order to compile the code.

Install Locations are as follows:
	Mac 	library is expected @		/usr/local/jamoma/lib/JamomaAudioGraph.dylib
		extensions are expected @	/Library/Application Support/Jamoma/Extensions/*.ttdylib
						~/Library/Application Support/Jamoma/Extensions/*.ttdylib

	Linux 	library	is expected @		/usr/lib/jamoma/runtime/JamomaAudioGraph.so
		extensions are expected @	/usr/lib/jamoma/extensions/*.ttso
						/usr/local/lib/jamoma/extensions/*.ttso

	Windows	library is expected in the applications DLL path (JamomaAudioGraph.dll)
		extensions are expected @	\Program Files\Common\Jamoma\Extensions\*.ttdll


License
Jamoma Audio Graph is licensed as open source software under the terms of the "New BSD License", http://creativecommons.org/licenses/BSD/


Known Issues & Wish List
See the issue tracker at http://redmine.jamoma.org/projects/audiograph/issues


Change Log
The change log can be found at http://redmine.jamoma.org/wiki/audiograph

