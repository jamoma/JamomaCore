JamomaCore
=========
A C++ platform for building dynamic and reflexive systems with an emphasis on audio and media.

| Travis CI build status | Coverity Static Analysis | Waffle Stories |
| ------------- | ----------- | ----------- |
| [![Build Status](https://travis-ci.org/jamoma/JamomaCore.svg)](https://travis-ci.org/jamoma/JamomaCore) | <a href="https://scan.coverity.com/projects/5562"> <img alt="Coverity Scan Build Status" src="https://scan.coverity.com/projects/5562/badge.svg"/> </a> | [![Stories in Ready](https://badge.waffle.io/jamoma/jamomacore.png?label=ready&title=Ready)](http://waffle.io/jamoma/jamomacore) |

The Jamoma Platform is composed of a layered framework architecture that creates an object model and then specializes that object model for audio and matrix processing, and system automation and management.

Jamoma makes use of polymorphic typing, dynamic binding, and introspection to create a cross-platform API pulling ideas from languages such as Smalltalk and Objective-C while remaining within the bounds of the portable and cross-platform C++ context.

* Foundation : Runtime and API implementing a light-weight, dynamically bound, reflective object-oriented architecture layer on top of C++.
* DSP : A C++ framework for audio processing objects. Jamoma DSP is further documented in \cite Place2010:DSP .
* Graph : A coding layer for the creation of dynamic asynchronous graph topographies.
* Audio Graph : A coding layer for the creation of dynamic audio graph topographies. AudioGraph is further documented in \cite Place2010:AudioGraph .
* Modular : A framework for assembling high-level interactive modular systems.


## How to Build

Jamoma uses CMake to to manage projects. You may therefor need to install CMake on your system before proceeding (e.g. on the Mac you can do this using Homebrew). Cmake generates a native project file (Makefile, XCode project, Visual Studio solution...) for your target platform.

Typically you make a build folder somewhere quarantined from the primary source tree and run cmake from there. For example:
```
$ git clone https://github.com/jamoma/JamomaCore.git
$ cd JamomaCore
$ mkdir build
$ cd build
$ cmake ..
$ make 
```
The argument to cmake (the '..' in this case) refers to the root of the JamomCore where a CMakelists.txt resides.


## Documentation

The Jamoma Core is documented using Doxygen. A rendering of the documentation is available online at http://api.jamoma.org/

