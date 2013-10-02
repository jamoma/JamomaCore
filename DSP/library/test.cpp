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
	TTDSPInit();
	
	TTValue classNames;
    
    // if the follow group tag is present within the thisTTClassTags definition, the class will be tested
    TTValue testClassesWithTheseTags(TT("dspLibrary"));
	TTObject::GetRegisteredClassNamesForTags(classNames, testClassesWithTheseTags);
	
	for (int i=0; i<classNames.size(); i++) {
		TTSymbol name = classNames[i];
		TTObject obj(name);
		
		obj.send("test");
	}
	
	// insert code here...
	std::cout << "Hello, World!\n";
    return 0;
}

