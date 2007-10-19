//	TTDCBlockObject
//	dc offset filter / blocker 
//	Copyright © 2007 by Timothy A. Place
//	License: GNU LGPL

#import "TTAudioBuffer.h"


- (id) initWithNumSamples:(TTUInt32 numSamples)
{
	[super init];
	[self setupBuffer];

	local_contents = true;
	contents = 0;
	length_ms = 0;
	length_samples = 0;		

	set_attr(k_length_samples, val);
}

- (id) init
{
	return [self initWithNumSamples:512];
}

- (id) dealloc
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


// ATTRIBUTES
TT_INLINE 
tt_err tt_buffer::set_attr(tt_selector sel, const tt_value &a)	// Set Attributes
{
	tt_float32 val = a;
	
	switch (sel){
		case k_length_ms:
			length_ms = val;
			length_samples = long(length_ms * (sr / 1000.0));
			break;	
		case k_length_samples:
			length_samples = (unsigned long)(val + 0.49);	// round
			length_ms = length_samples * (1000.0 / sr);
			break;
		default:
			return TT_ERR_ATTR_INVALID;
	}
	buffer_free();
	contents = (tt_sample_value *)mem_alloc(length_samples * sizeof(tt_sample_value));
	return TT_ERR_NONE;
}


- (void) setBuffer:(TTAudioBuffer*)newBuffer
{
	[self freeBuffer];
	contents = newBuffer->contents;			// point our contents-pointer to the external one
	lengthSamples = newBuffer->lengthSamples;
	lengthMs = newBuffer->lengthMs;

	localContents = false;
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
	TTUInt32	i;
	TTFloat64	temp;

	if(functionName == @"Gaussian"){
		for(i=0; i < lengthSamples; i++){
			temp = double(i) / (double(lengthSamples) - 1);
			contents[i] = ((-1.0 * (temp - param2) * (temp - param2)) / (2 * param1 * param1)) / (param1 * sqrt(TTTwoPi));
			contents[i] = contents[i] * 0.3133;	// scale it
			//TTLogMessage("FILL: %f", contents[i]);
		}
	}
	else if(functionName == @"Sine"){
		for(i=0; i < length_samples; i++){
			contents[i] = sin(twopi * (double(i) / (double(length_samples) - 1.0)));
			// log_post("FILL: %f", contents[i]);		
		}			
	}				
	else if(functionName == @"SineMod"){	// modulator version
		for(i=0; i < length_samples; i++){
			contents[i] = 0.5 + (0.5 * sin(twopi * (double(i) / (double(length_samples) - 1.0))));
		}
	}
	else if(functionName == @"Cosine"){
		for(i=0; i < length_samples; i++)
			contents[i] = cos(twopi * (double(i) / (double(length_samples) - 1.0)));
	}				
	else if(functionName == @"CosineMod"){
		for(i=0; i < length_samples; i++)
			contents[i] = 0.5 + (0.5 * cos(twopi * (double(i) / (double(length_samples) - 1.0))));
	}
	else if(functionName == @"Square"){
		for(i=0; i < (length_samples / 2); i++)
			contents[i] = 1.0;				
		for(i=i; i < length_samples; i++)
			contents[i] = -1.0;	
	}				
	else if(functionName == @"SquareMod"){
		for(i=0; i < (length_samples / 2); i++)
			contents[i] = 1.0;				
		for(i=i; i < length_samples; i++)
			contents[i] = 0.0;	
	}
	else if(functionName == @"Triangle"){
		for (i=0; i < (length_samples / 4); i++) 
			contents[i] = float(i) / (length_samples / 4);
		for (j=i-1; i < (length_samples / 2); i++, j--) 
			contents[i] = contents[j];
		for (j=0; i < length_samples; i++, j++)	
			contents[i] = 0.0 - contents[j];
	}			
	else if(functionName == @"TriangleMod"){
		for (i=0; i < (length_samples / 4); i++) 
			contents[i] = 0.5 + float(i) / (length_samples / 2);
		for (j=i-1; i < (length_samples / 2); i++, j--) 
			contents[i] = contents[j];
		for (j=0; i < length_samples; i++, j++)	
			contents[i] = 1.0 - contents[j];
	}		
	else if(functionName == @"Ramp"){
		for (i=0; i < length_samples; i++) 
			contents[i] = -1.0 + (2.0 * (float(i) / length_samples));
	}
	else if(functionName == @"RampMod"){
		for (i=0; i < length_samples; i++) 
			contents[i] = float(i) / length_samples;
	}
	else if(functionName == @"Sawtooth"){
		for(i=0, j=length_samples-1; i < length_samples; i++)
			contents[j--] = -1.0 + (2.0 * (float(i) / length_samples));
	}
	else if(functionName == @"SawtoothMod"){
		for(i=0, j=length_samples-1; i < length_samples; i++)
			contents[j--] = float(i) / length_samples;
	}
	else if(functionName == @"PaddedWelch512"){
		for(i=0; i < 256; i++)
			contents[i] = tt_audio_base::lookup_half_paddedwelch[i];
		for(j=i-1; i < 512;i++, j--){
			contents[i] = tt_audio_base::lookup_half_paddedwelch[j];
		}	
	}
	else
		[self errorMessage:"TTAudioBuffer: Bad fill type specified"];
}
