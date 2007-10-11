//	main.m
//	Create the entry-point and wrapper for this class to be used as an external object for Max/MSP.
//	Copyright © 2007 by Timothy Place
//	License: GNU LGPL

#import "TTDegrade.h"

// Entry Point when loaded by Max
int main(void)
{
	[MaxObject createMaxClassWithName:"tt.degrade~" fromObjcClassWithName:"TTDegradeMax"];
	return 0;
}


// Max Wrapper Class

@interface TTDegradeMax : TTDegradeObject
{}
@end

@implementation TTDegradeMax

- (id) initWithObject:(t_object *)x name:(t_symbol *)s numArgs:(long)argc andValues:(t_atom *)argv
{
	self = [super init];
	if(self != nil){
		maxobject = x;
		[self createInletWithIndex:0	named:"signalIn"	withAssistanceMessage:"(signal) Input"];
		[self createOutletWithIndex:0	named:"signalOut"	withAssistanceMessage:"(signal) Output"];
	}
	return self;
}

@end
