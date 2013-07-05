//
//  main.cpp
//  JamomaTest
//
//  Created by Timothy Place on 7/3/13.
//
//

#include <iostream>
#include "TTFoundationAPI.h"

int main(int argc, const char * argv[])
{
	TTFoundationInit();
	
	TTValue classNames;
	
	TTObject::GetRegisteredClassNames(classNames);
	
	for (int i=0; i<classNames.size(); i++) {
		TTSymbol name = classNames[i];
		TTObject obj(name);
		
		obj.send("test");
	}
	
	// insert code here...
	std::cout << "Hello, World!\n";
    return 0;
}

