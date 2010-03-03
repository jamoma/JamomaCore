Jamoma Multicore
Dynamic Audio Graph Layer
_________________________________________________________________


Introduction

The Jamoma Multicore Audio Graph Layer is an open source wrapper for Jamoma DSP classes to create dynamic topographies of interacting audio objects.


Features

- Dynamic Multichannel connections
- Dynamic datarate and vectorsize
- Dynamic signal chain (re)configuration
- 64 bit signal chain


Installing

Place the folder containing this ReadMe somewhere on your hard-drive. Then Make sure your compiler has access to it in order to compile the code.

Install Locations are as follows:
	Mac 	library is expected @		/Library/Frameworks/JamomaDSP.framework
			extensions are expected @	/Library/Application Support/Jamoma/Extensions/*.ttdylib
										~/Library/Application Support/Jamoma/Extensions/*.ttdylib

	Linux 	library	is expected @		/usr/lib/jamoma/runtime/libJamomaDSP.so
			extensions are expected @	/usr/lib/jamoma/extensions/*.ttso
										/usr/local/lib/jamoma/extensions/*.ttso

	Windows	library is expected in the applications DLL path (JamomaDSP.dll)
			extensions are expected @	\Program Files\Common\Jamoma\Extensions\*.ttdll


License
Jamoma Multicore is licensed as open source software under the terms of the GNU LPGL.


Known Issues & Wish List
See the issue tracker at http://redmine.jamoma.org/projects/multicore/issues


Change Log
The change log can be found at http://redmine.jamoma.org/wiki/multicore
