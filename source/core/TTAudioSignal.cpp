/* 
 * TTBlue Audio Signal Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioSignal.h"


/****************************************************************************************************/

TTAudioSignal::TTAudioSignal(TTUInt8 initialMaxNumChannels)
	: isLocallyOwned(false), maxNumChannels(0), vs(0), numChannels(0), sampleVectors(NULL)
{
	TTUInt8	i;

	maxNumChannels = initialMaxNumChannels;
	sampleVectors = (TTSampleVector *)malloc(sizeof(TTSampleVector) * maxNumChannels);
	for(i=0; i<maxNumChannels; i++)
		sampleVectors[i] = NULL;
}


TTAudioSignal::~TTAudioSignal()
{
	TTUInt32	i;

	if(isLocallyOwned){
		for(i=0; i<maxNumChannels; i++){
			free(sampleVectors[i]);
			sampleVectors[i] = NULL;
		}
		isLocallyOwned = false;
	}
	free(sampleVectors);
}


TTErr TTAudioSignal::setVector(TTUInt8 channel, TTUInt16 vectorSize, TTSampleVector newVector)
{
	TTUInt32	i;
	
	// could check against maxnumchannels here
	
	bitdepth = 64;
	vs = vectorSize;
	
	if(isLocallyOwned){
		for(i=0; i<maxNumChannels; i++){
			free(sampleVectors[i]);
			sampleVectors[i] = NULL;
		}
		isLocallyOwned = false;
	}
	sampleVectors[channel] = newVector;
	return kTTErrNone;
}


/*
	It sucks if someone sets a 32-bit audio vector, since we have translate it into a 64-bit buffer.
	There may be a better way to do this...
	
	For now, we don't simply reference the data passed in.  Instead we allocate our own buffer and copy the data.
	Unfortunately, this is very slow.
	
	Also note that we are relying on the vector size already being set!
	
	If we passed the vs in to this method, we could avoid having to realloc the memory every single time.
	This would probably be a very good idea.
*/
TTErr TTAudioSignal::setVector(TTUInt8 channel, TTUInt16 vectorSize, TTFloat32* newVector)
{
	TTUInt32	i;
	
	// 1. could check against maxnumchannels here

	// 2. allocate the vector if need be
	if(bitdepth != 32 || !isLocallyOwned || vectorSize != vs)
	{
		bitdepth = 32;
		vs = vectorSize;
		alloc();
	}
	
	// 3. copy the vector (from 32-bits to 64-bits)
	for(i=0; i<vectorSize; i++)
		sampleVectors[channel][i] = newVector[i];
	
	return kTTErrNone;
}


TTErr TTAudioSignal::getVector(TTUInt8 channel, TTUInt16 vectorSize, TTSampleVector returnedVector)
{
	returnedVector = sampleVectors[channel];
	return kTTErrNone;
}


TTErr TTAudioSignal::getVector(TTUInt8 channel, TTUInt16 vectorSize, TTFloat32* returnedVector)
{
	TTUInt16 i;
	
	for(i=0; i<vectorSize; i++)
		returnedVector[i] = (TTFloat32)sampleVectors[channel][i];
	return kTTErrNone;
}


TTErr TTAudioSignal::alloc()
{
	TTUInt32	i;

	if(isLocallyOwned){
		for(i=0; i<maxNumChannels; i++){
			free(sampleVectors[i]);
			sampleVectors[i] = NULL;
		}
	}
	for(i=0; i<maxNumChannels; i++)
		sampleVectors[i] = (TTSampleVector)malloc(sizeof(TTSampleValue) * vs);
	isLocallyOwned = true;
	return kTTErrNone;
}


TTErr TTAudioSignal::allocWithSize(TTUInt16 newVectorSize)
{
	if(newVectorSize != vs){
		vs = newVectorSize;
		return alloc();
	}
	else
		return kTTErrNone;
}


TTUInt8 TTAudioSignal::getMinChannelCount(TTAudioSignal& signal1, TTAudioSignal& signal2)
{
	if(signal1.numChannels > signal2.numChannels)
		return signal2.numChannels;
	else
		return signal1.numChannels;
}


TTUInt8 TTAudioSignal::getMinChannelCount(TTAudioSignal& signal1, TTAudioSignal& signal2, TTAudioSignal& signal3)
{
	TTUInt8	numChannels = signal1.numChannels;
	
	if(signal2.numChannels > numChannels)
		numChannels = signal2.numChannels;
	if(signal3.numChannels > numChannels)
		 numChannels = signal3.numChannels;

	return numChannels;
}


TTUInt8 TTAudioSignal::getNumChannels(TTAudioSignal& signal)
{
	return signal.numChannels;
}



// TODO: The old tt audio signal could point to external memory, or allocate its own for the vectors
// This enum was used to keep trac of which was the case:
// enum selectors{
//	k_mode_local = 1,
//	k_mode_external = 0,
//};


// TODO: implement clear() method -- ZERO OUT A VECTOR'S CONTENTS
TTErr TTAudioSignal::clear()
{
	TTUInt8		channel;
	TTUInt16	i;
	
	if(!sampleVectors)
		return kTTErrGeneric;
		
	for(channel=0; channel<numChannels; channel++){
		for(i=0; i<vs; i++)
			sampleVectors[channel][i] = 0.0;
	}
	return kTTErrNone;
}
		
		
// TODO: implement fill() method --- SET ALL VALUES IN THE SIGNAL TO A CONSTANT


