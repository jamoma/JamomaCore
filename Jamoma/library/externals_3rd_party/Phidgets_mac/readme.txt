Phidgets for MacOS X
Version 2.1.0
July 12th, 2006
--------------------------------------------------------------------------
Installation:
Run the Phidgets.mpkg package installer to install both the Kernel Driver, the Framework, and the JNI library, or you can install them seperately with thier own installers.

The Kernel extension Phidget.kext is installed into /System/Library/Extensions
The Framework Phidget21.framework is installed into /Library/Frameworks
The JNI Library libphidget21.jnilib is installed into /System/Library/Frameworks/JavaVM.Framework/Libraries

NOTE that this is a new version of the library (phidget21), and can coexist with phidget20. phidget21 is a complete rewrite and usage is fairly different from phidget20

Once these are installed, any programs built agaisnt the framework will run for any user on the system.
--------------------------------------------------------------------------
Compatibility:
MacOS X 10.3.9 and higher
Distribution is in the form of Universal Binaries in order to support Intel based Macs.
--------------------------------------------------------------------------
Usage:
The framework is basically just a dynamic shared library. The easiest way to use it is to create an xcode project and add the Phidget21 framework, then in your sourcecode you just have to define top level header:

	#include <Phidget21/phidget21.h>

In order for the xcode project to find Phidget21.h, you might have to add /Library/Frameworks to the frameworks search path for that projects.

Note that Phidgets can only be opened exclusively (if you open a phidget anywhere and then try to open it again in another program, it will fail).

The included examples are in XCode 2.2 format. If you can't open the project files, you probably need to upgrade, or you can create your own project and just add the sources. There are Cocoa examples for every device and one command line example. The cocoa built tools are included in the base examples folder.

There is also an included tool for setting tags, which are nonvolatile strings that can be set on the newest (soon to be available) phidgets. Each device has room for one 10 character string, which can be used to identify a device, or set of devices, rather then using serial numbers (or for any other purpose you like). The function for setting this string is not exposed, and the tool's source code not distributed, because setting the tag should not normally be done in a user program, as it will wear out the flash.

Since this library is a port of the Windows version, the windows VC++ examples will run with little to no modification. Also, since the JNI library is installed, the java examples will just work, without any modification.

--------------------------------------------------------------------------
Phidget WebService:

The Phidget Webservice is not yet available for this version of the library (phidget21). You can use phidget20 to get the webservice.