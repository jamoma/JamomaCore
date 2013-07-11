//
//  main.cpp
//  JamomaTest
//
//  Created by Timothy Place on 7/3/13.
//
//

#include <iostream>
#include "TTFoundationAPI.h"

extern "C" TTErr TTLoadJamomaExtension_EffectsLib(void);

int main(int argc, const char * argv[])
{
	//	TTFoundationInit();
	std::cout << "Hi, World!\n";
	TTLoadJamomaExtension_EffectsLib();
	
	TTValue classNames;
	
	TTObject::GetRegisteredClassNames(classNames);
	
	for (int i=0; i<classNames.size(); i++) {
		TTSymbol name = classNames[i];
		
		try {
			TTObject obj(name);
			obj.send("test");
		}
		catch (...) {
			TTLogMessage("UnitTest Failure to instantiate object of class %s! \n", name.c_str());
			continue;
		}
	}
	
	// insert code here...
	std::cout << "Goodbye, World!\n";
    return 0;
}
