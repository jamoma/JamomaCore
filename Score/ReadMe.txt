OSSIA Score Framework
_________________________________________________________________


Introduction
The Open Scenario System for Interactive Application (OSSIA) project, one of whose objectives is to gather and create knowledge for the formalization of logical and temporal constraints aims at offering developers some generic tools for the writing and the application of those. Ultimately, it aims at encouraging the emergence of software tools allowing the user to write complex scenarios as intuitively as possible.

The Score framework attempted to share the work done in the libIscore library by Raphael Marczak at the LaBri.

The Score framework is based on the Jamoma Foundation which allows to setup a Peer Object Model mechanism in order to embedded easily the features inside many programmation environments (such as Max) or inside specific application dealing with logical and temporal constraints. It also provides a tree structure to manage the namespace of an application in order to organize and access its services.


Installing

0 : Clone the Score folder into JamomaCore folder : https://github.com/jamoma/JamomaCore

1 : First of all you need to download the Gecode framework : http://www.gecode.org/download/Gecode-3.7.3.dmg

2 : create a jamoma folder inside /usr/local/ and give you a full access (read+write) on this jamoma folder.

3 : give you a full access (read+write) on /usr/local/lib folder.

4 : in the terminal run the build script from the Score folder : ./build.rb dev clean

Documentation / API
...


License
OSSIA Score framework is licensed as open source software under the terms of the "CeCILL-C".


Known Issues & Wish List
See the issue tracker at ...


More Information
About the OSSIA project at …
About libIscore library at https://github.com/raphaelmarczak/libIscore
About the Jamoma project at www.jamoma.org or on github at https://github.com/organizations/jamoma

