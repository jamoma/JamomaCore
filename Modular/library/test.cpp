/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Unit tests for the Modular library
 *
 * @details ...
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2014, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModular.h"

int main(int argc, const char * argv[])
{
    TTLogMessage("BEGIN testing for Modular library ...\n");                    // CUSTOMIZE
    
	TTModularInit();                                                            // CUSTOMIZE
	
	TTValue classNames;
	
	// if the follow group tag is present within the thisTTClassTags definition, the class will be tested
    TTValue testClassesWithTheseTags(TTSymbol("modularLibrary"));               // CUSTOMIZE
	TTObject::GetRegisteredClassNamesForTags(classNames, testClassesWithTheseTags);
	
	for (int i=0; i<classNames.size(); i++) {
        
		TTSymbol name = classNames[i];
        
		try {
			TTObject obj(name);
            
            TTLogMessage("TESTING %s\n", name.c_str());

			obj.send("test");
		}
		catch (...) {
			TTLogMessage("UnitTest Failure to instantiate object of class %s! \n", name.c_str());
			continue;
		}
	}
	
    TTLogMessage("END testing for Modular library.\n");                    // CUSTOMIZE
    return 0;
}

