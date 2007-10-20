//	main.m
//	Create the entry-point and wrapper for this class to be used as an external object for Max/MSP.
//	Copyright © 2007 by Timothy Place
//	License: GNU LGPL

#import "TTWavetable.h"

// Entry Point when loaded by Max
int main(void)
{
	[MaxObject createMaxClassWithName:"tt.wavetable~" fromObjcClassWithName:"TTWavetableMax"];
	return 0;
}


// Max Wrapper Class

@interface TTWavetableMax : TTWavetableObject
{}
@end

@implementation TTWavetableMax

- (id) initWithObject:(t_object *)x name:(t_symbol *)s numArgs:(long)argc andValues:(t_atom *)argv
{
	[super init];
	maxObjectBridge = x;
	[self createInletWithIndex:0	named:"signalIn"	withAssistanceMessage:"(signal) Input"];
	[self createOutletWithIndex:0	named:"signalOut"	withAssistanceMessage:"(signal) Output"];
	return self;
}

@end
