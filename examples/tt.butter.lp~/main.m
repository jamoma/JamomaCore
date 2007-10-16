//	main.m
//	Create the entry-point and wrapper for this class to be used as an external object for Max/MSP.
//	Copyright © 2007 by Timothy Place
//	License: GNU LGPL

#import "TTButterLP.h"

// Entry Point when loaded by Max
int main(void)
{
	[MaxObject createMaxClassWithName:"tt.butter.lp~" fromObjcClassWithName:"TTButterLPMax"];
	return 0;
}


// Max Wrapper Class

@interface TTButterLPMax : TTButterLPObject
{}
@end

@implementation TTButterLPMax

- (id) initWithObject:(t_object *)x name:(t_symbol *)s numArgs:(long)argc andValues:(t_atom *)argv
{
	short	i;
	long	numChannels = 1;
	char	inletOutletName[32];

	[super init];
	maxObjectBridge = x;
	
	if(argc)
		numChannels = TTClip(atom_getlong(argv), 1, TT_MAX_NUM_CHANNELS);

	for(i=0; i<numChannels; i++){
		sprintf(inletOutletName, "signalIn%i", i);
		[self createInletWithIndex:i	named:inletOutletName	withAssistanceMessage:"(signal) Input"];
		sprintf(inletOutletName, "signalOut%i", i);
		[self createOutletWithIndex:i	named:inletOutletName	withAssistanceMessage:"(signal) Output"];
	}
	[self createInletWithIndex:i	named:"signalInFreq"	withAssistanceMessage:"(signal) Frequency"];

	return self;
}

@end
