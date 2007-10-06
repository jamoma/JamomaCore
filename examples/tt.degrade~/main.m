//	main.m
//	Create the entry-point and wrapper for this class to be used as anexternal object for Max/MSP.
//	Copyright © 2007 by Timothy Place
//	License: GNU LGPL

#import "MaxObject.h"

// Entry Point when loaded by Max
int main(void)
{	
	return [MaxObject createMaxClassWithName:"tt.degrade~" fromObjcClassWithName:"TTDegradeObject"];
}
