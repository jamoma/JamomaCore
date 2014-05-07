/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief Default unit test for classes in the #dspEffectsLib.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2013, Timothy Place @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include <iostream>
#include "TTFoundationAPI.h"

extern "C" TTErr TTLoadJamomaExtension_EffectsLib(void);

int main(int argc, const char * argv[])
{
	std::cout << "BEGIN testing for EffectsLib...\n";
    TTLoadJamomaExtension_EffectsLib();
	
	TTValue classNames;
	
	// if the follow group tag is present within the thisTTClassTags definition, the class will be tested
    TTValue testClassesWithTheseTags(TT("dspEffectsLib"));
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
	
	std::cout << "END testing of EffectsLib!\n";
    return 0;
}
