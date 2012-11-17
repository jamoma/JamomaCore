 Jamoma DSP
Digital Signal Processing library built on the Jamoma Foundation API
_________________________________________________________________


Introduction
The Jamoma DSP Library is an open source, cross-platform, C++ programming layer for creating dynamically-bound objects optimized for realtime processing contexts.  It the basis of commercial products such as TapTools, Jade, and Hipno, and is used by other open source projects such as Jamoma Modular.


Features
- Rapid development
- Self-documenting and clear code-structure
- Optimized for speed, including processing by vector


Installing
Place the folder containing this ReadMe somewhere on your hard-drive. Then Make sure your compiler has access to it in order to compile the code.

Install Locations are as follows:
	Mac 	library is expected @		/usr/local/jamoma/lib/JamomaDSP.dylib
			extensions are expected @	/usr/local/jamoma/extensions/*.ttdylib									

	Linux 	library	is expected @		/usr/lib/jamoma/runtime/libJamomaDSP.so
			extensions are expected @	/usr/lib/jamoma/extensions/*.ttso
										/usr/local/lib/jamoma/extensions/*.ttso

	Windows	library is expected in the applications DLL path (JamomaDSP.dll)
			extensions are expected @	\Program Files\Common\Jamoma\Extensions\*.ttdll



Documentation / API
An introduction to writing DSP objects is online @ http://blog.74objects.com/2009/12/03/writing-dsp-objects/
Doxygen generated documentation is located in the "documentation" folder.


License
TTBlue is licensed as open source software under the terms of the "New BSD License".


Known Issues & Wish List
See the issue tracker at http://redmine.jamoma.org/projects/dsp/issues


More Information
This project hosted is hosted at https://github.com/jamoma/JamomaDSP

Paper
A flexible and dynamic C++ framework and library for digital audio signal processing. 
In Proc. of the International Computer Music Conference, pages 157–164, New York, US, 2010.
http://www.jamoma.org/papers/jamoma-icmc2010.pdf

Change Log
The (outdated) change log can be found at http://code.google.com/p/ttblue/wiki/ChangeLog
