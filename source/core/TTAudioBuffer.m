//	TTDCBlockObject
//	dc offset filter / blocker 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioBuffer.h"


@implementation TTAudioBuffer

- (id) initWithNumSamples:(TTUInt32)numSamples
{
	[super init];
	[self setupBuffer];

	localContents = YES;
	contents = 0;
	lengthMs = 0;
	lengthSamples = 0;		

	[self setLong:numSamples forKey:@"lengthSamples"]; 
}

- (id) init
{
	return [self initWithNumSamples:512];
}

- (void) dealloc
{
	[self freeBuffer];
	[super dealloc];
}


- (void) freeBuffer
{
	if(localContents){
		free(contents);
		contents = 0;
	}
}


- (void) clear
{
	TTUInt32	i;
	
	if(contents){
		for(i=0; i < lengthSamples; i++)
			contents[i] = 0.0;
	}
}


- (void) setLengthSamples:(TTUInt32)newValue
{
	lengthSamples = newValue;
	lengthMs = lengthSamples * (1000.0 / sr);
	[self freeBuffer];
	contents = (TTSampleValue *)malloc(lengthSamples * sizeof(TTSampleValue));
}

- (void) setLengthMs:(TTFloat64)newValue
{
	lengthMs = newValue;
	lengthSamples = (TTUInt32)(lengthMs * (sr / 1000.0));
	[self freeBuffer];
	contents = (TTSampleValue *)malloc(lengthSamples * sizeof(TTSampleValue));
}


- (void) setBuffer:(TTAudioBuffer*)newBuffer
{
	[self freeBuffer];
	contents = newBuffer->contents;			// point our contents-pointer to the external one
	lengthSamples = newBuffer->lengthSamples;
	lengthMs = newBuffer->lengthMs;

	localContents = NO;
}

- (TTSampleValue) peekAt:(TTUInt32)index
{
	return contents[TTUInt32Clip(index, 0, lengthSamples - 1)];
}


- (void) pokeAt:(TTUInt32)index value:(TTSampleValue)newValue
{
	contents[TTUInt32Clip(index, 0, lengthSamples - 1)] = newValue;
}


- (void) fillWithFunction:(NSString*)functionName
{
	[self fillWithFunction:functionName usingFirstParameter:0.0 andSecondParameter:1.0];
}

- (void) fillWithFunction:(NSString*)functionName usingFirstParameter:(TTFloat64)param1 andSecondParameter:(TTFloat64)param2
{
	TTUInt32	i, j;
	TTFloat64	temp;

	if(functionName == @"Gaussian"){
		for(i=0; i < lengthSamples; i++){
			temp = (double)(i) / ((double)(lengthSamples) - 1);
			contents[i] = ((-1.0 * (temp - param2) * (temp - param2)) / (2 * param1 * param1)) / (param1 * sqrt(TTTwoPi));
			contents[i] = contents[i] * 0.3133;	// scale it
			//TTLogMessage("FILL: %f", contents[i]);
		}
	}
	else if(functionName == @"Sine"){
		for(i=0; i < lengthSamples; i++){
			contents[i] = sin(TTTwoPi * ((double)(i) / ((double)(lengthSamples) - 1.0)));
			// log_post("FILL: %f", contents[i]);		
		}			
	}				
	else if(functionName == @"SineMod"){	// modulator version
		for(i=0; i < lengthSamples; i++){
			contents[i] = 0.5 + (0.5 * sin(TTTwoPi * ((double)(i) / ((double)(lengthSamples) - 1.0))));
		}
	}
	else if(functionName == @"Cosine"){
		for(i=0; i < lengthSamples; i++)
			contents[i] = cos(TTTwoPi * ((double)(i) / ((double)(lengthSamples) - 1.0)));
	}				
	else if(functionName == @"CosineMod"){
		for(i=0; i < lengthSamples; i++)
			contents[i] = 0.5 + (0.5 * cos(TTTwoPi * ((double)(i) / ((double)(lengthSamples) - 1.0))));
	}
	else if(functionName == @"Square"){
		for(i=0; i < (lengthSamples / 2); i++)
			contents[i] = 1.0;				
		for(i=i; i < lengthSamples; i++)
			contents[i] = -1.0;	
	}				
	else if(functionName == @"SquareMod"){
		for(i=0; i < (lengthSamples / 2); i++)
			contents[i] = 1.0;				
		for(i=i; i < lengthSamples; i++)
			contents[i] = 0.0;	
	}
	else if(functionName == @"Triangle"){
		for (i=0; i < (lengthSamples / 4); i++) 
			contents[i] = (float)(i) / (lengthSamples / 4);
		for (j=i-1; i < (lengthSamples / 2); i++, j--) 
			contents[i] = contents[j];
		for (j=0; i < lengthSamples; i++, j++)	
			contents[i] = 0.0 - contents[j];
	}			
	else if(functionName == @"TriangleMod"){
		for (i=0; i < (lengthSamples / 4); i++) 
			contents[i] = 0.5 + (float)(i) / (lengthSamples / 2);
		for (j=i-1; i < (lengthSamples / 2); i++, j--) 
			contents[i] = contents[j];
		for (j=0; i < lengthSamples; i++, j++)	
			contents[i] = 1.0 - contents[j];
	}		
	else if(functionName == @"Ramp"){
		for (i=0; i < lengthSamples; i++) 
			contents[i] = -1.0 + (2.0 * ((float)(i) / lengthSamples));
	}
	else if(functionName == @"RampMod"){
		for (i=0; i < lengthSamples; i++) 
			contents[i] = (float)(i) / lengthSamples;
	}
	else if(functionName == @"Sawtooth"){
		for(i=0, j=lengthSamples-1; i < lengthSamples; i++)
			contents[j--] = -1.0 + (2.0 * ((float)(i) / lengthSamples));
	}
	else if(functionName == @"SawtoothMod"){
		for(i=0, j=lengthSamples-1; i < lengthSamples; i++)
			contents[j--] = (float)(i) / lengthSamples;
	}
	else if(functionName == @"PaddedWelch512"){
		for(i=0; i < 256; i++)
			contents[i] = TTLookupHalfPaddedWelch[i];
		for(j=i-1; i < 512;i++, j--){
			contents[i] = TTLookupHalfPaddedWelch[j];
		}
	}
	else
		[self errorMessage:"TTAudioBuffer: Bad fill type specified"];
}


@end
