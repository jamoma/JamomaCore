//
//  main.m
//  Units
//
//  Created by Timothy Place on 3/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#include "TTFoundationAPI.h"

// this for loading the dataspacelib
extern "C" TTErr TTLoadJamomaExtension_DataspaceLib(void);


// NOTE: I had to change the extension of this file from .m (as in the template) 
//		 to .mm so that C++ libraries would be linked when building [tap]


int main(int argc, char *argv[]) 
{
 	TTObjectPtr dataspace = NULL;
	TTErr		err = kTTErrNone;
	TTValue		v;
	
	// this loads the DataspaceLib, which calls the Foundation init function.
	err = TTLoadJamomaExtension_DataspaceLib();
	if (err)
		return err;
	
	err = TTObjectInstantiate(TT("dataspace"), &dataspace, kTTValNONE);
	if (err)
		return err;
	
	dataspace->setAttributeValue(TT("dataspace"), TT("temperature"));
	dataspace->setAttributeValue(TT("inputUnit"), TT("C"));
	dataspace->setAttributeValue(TT("outputUnit"), TT("F"));
	
	v = 100.0;
	dataspace->sendMessage(TT("convert"), v, v);
	TTLogMessage("100ºC should be 212ºF, and the dataspace says it is...  %f", TTFloat64(v));
	
	
	// This where Apple's code starts the app loop
			
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	int retVal = UIApplicationMain(argc, argv, nil, nil);
	[pool release];
	
	
	
	// Quiting the App, so we can free ourselves
	
	TTObjectRelease(&dataspace);
	
    return retVal;
}
