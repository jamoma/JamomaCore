//
//  test.cpp
//  JamomaDSPTest
//
//  Created by Nathan Wolek on 10/2/13.
//
//

#include <iostream>
#include "TTFoundationAPI.h"
#include "TTDSP.h"

int main(int argc, const char * argv[])
{
	std::cout << "BEGIN testing for Jamoma DSP...\n";
    TTDSPInit();
	
	TTValue classNames;
    
    // if the follow group tag is present within the thisTTClassTags definition, the class will be tested
    TTValue testClassesWithTheseTags(TT("dspLibrary"));
	TTObject::GetRegisteredClassNamesForTags(classNames, testClassesWithTheseTags);
	
	for (int i=0; i<classNames.size(); i++) {
		TTSymbol name = classNames[i];
		TTObject obj(name);
		
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
	
	std::cout << "END testing of Jamoma DSP!\n";
    return 0;
}

