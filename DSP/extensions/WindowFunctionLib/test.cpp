//
//  test.cpp
//  JamomaTest
//
//  Created by Nathan Wolek on 11/20/13.
//  NOTE: When copying to other projects, be sure to customize the lines indicated
//  This file will find all classes with a common tag and run any "test" methods present in those classes.
//  If running any test fails, the build of the project will either fail or complete with errors.
//  If not test method is found, the terminal output will suggest that you should create a test.
//

#include <iostream>
#include "TTFoundationAPI.h"

extern "C" TTErr TTLoadJamomaExtension_WindowFunctionLib(void);               // CUSTOMIZE

int main(int argc, const char * argv[])
{
	std::cout << "BEGIN testing for WindowFunctionLib...\n";                  // CUSTOMIZE
    TTLoadJamomaExtension_WindowFunctionLib();                                // CUSTOMIZE
	
	TTValue classNames;
	
	// if the follow group tag is present within the thisTTClassTags definition, the class will be tested
    TTValue testClassesWithTheseTags(TT("dspWindowFunctionLib"));             // CUSTOMIZE
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
	
	std::cout << "END testing of WindowFunctionLib!\n";                       // CUSTOMIZE
    return 0;
}
