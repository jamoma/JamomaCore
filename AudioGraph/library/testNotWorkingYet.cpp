//
//  test.cpp
//  JamomaAudioGraphTest
//
//  Created by Nathan Wolek on 11/20/13.
//
//

#include <iostream>
#include "TTFoundationAPI.h"
#include "TTDSP.h"
#include "TTGraph.h"
#include "TTAudioGraph.h"

int main(int argc, const char * argv[])
{
	TTFoundationInit();
    
    std::cout << "BEGIN testing for AudioGraph...\n";
    TTAudioGraphInit();
	
	TTValue classNames;
    
    // if the follow group tag is present within the thisTTClassTags definition, the class will be tested
    TTValue testClassesWithTheseTags(TT("audioGraphLibrary"));
	TTObject::GetRegisteredClassNamesForTags(classNames, testClassesWithTheseTags);
	
	for (int i=0; i<classNames.size(); i++) {
		TTSymbol name = classNames[i];
        
        try {
			TTObject obj(name);
			std::cout << "TESTING " << name.string() << std::endl;
			obj.send("test");
		}
		catch (...) {
			TTLogMessage("UnitTest Failure to instantiate object of class %s! \n", name.c_str());
			continue;
		}
	}
	
	// insert code here...
	std::cout << "END testing of AudioGraph!\n";
    return 0;
}

