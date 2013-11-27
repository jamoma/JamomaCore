//
//  main.cpp
//  JamomaTest
//
//  Created by Timothy Place on 7/3/13.
//
//

#include <iostream>
#include "TTFoundationAPI.h"

extern "C" TTErr TTLoadJamomaExtension_DataspaceLib(void);

int main(int argc, const char * argv[])
{
	std::cout << "BEGIN testing for DataspaceLib...\n";
	TTLoadJamomaExtension_DataspaceLib();
	
	TTValue classNames;
	
	// if the follow group tag is present within the thisTTClassTags definition, the class will be tested
    TTValue testClassesWithTheseTags(TT("foundationDataspaceLib"));
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
	std::cout << "END testing of DataspaceLib!\n";
    return 0;
}
