//	main.m
//	Create the entry-point and wrapper for this class to be used as an external object for Max/MSP.
//	Copyright © 2007 by Timothy Place
//	License: GNU LGPL

// This object used to be distributed as a part of Tap.Tools under the name tap.waveform~

#import "TTWavetable.h"

// Entry Point when loaded by Max
int main(void)
{
	t_class *c;
	
	 c = [MaxObject createMaxClassWithName:"tt.wavetable~" fromObjcClassWithName:"TTWavetableMax"];
	
	// waveformAttribute is an NSString, so we shouldn't expose it directly to Max
	CLASS_ATTR_INVISIBLE(c, "waveform", 0);
	
	// waveshapeAttribute is the one we define (in the class below) for the Max interface
	// here we constrain the options to be legitimate values (and build the menu in Max inspector)
	CLASS_ATTR_ENUM(c, "waveshape", 0, "Sine SineMod Cosine CosineMod Sawtooth SawToothMod");

	// label this attr so when it is viewed in the inspector, it is obvious what units to use
	CLASS_ATTR_LABEL(c, "gain", 0, "Gain (in Decibels)");

	return 0;
}


// Max Wrapper Class

@interface TTWavetableMax : TTWavetable
{
	t_symbol*	waveshapeAttribute;
}
@end

@implementation TTWavetableMax

- (id) initWithObject:(t_object *)x name:(t_symbol *)s numArgs:(long)argc andValues:(t_atom *)argv
{
	[super init];
	maxObjectBridge = x;
	[self createInletWithIndex:0	named:"signalIn"	withAssistanceMessage:"(signal) Frequency Modulator"];
	[self createOutletWithIndex:0	named:"signalOut"	withAssistanceMessage:"(signal) Output"];
	[self setSymbol:gensym("Sine") forKey:@"waveshapeAttribute"];
	return self;
}


// Max does not send NSStrings, but t_symbol's.  So in this case we need to override the waveform setter
// in order to translate.
- (void) setWaveshapeAttribute:(t_symbol*)newWaveshape
{
	NSString *newWaveformName;
	
	waveshapeAttribute = newWaveshape;
	newWaveformName  = [[NSString alloc] initWithUTF8String:newWaveshape->s_name];

	[super setValue:newWaveformName forKey:@"waveformAttribute"];
}


@end
