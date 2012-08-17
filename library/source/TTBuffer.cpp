/*
	Jamoma DSP Audio Buffer Object 
	Copyright © 2012, Timothy Place & Nathan Wolek
	
	License: This code is licensed under the terms of the "New BSD License"
	http://creativecommons.org/licenses/BSD/
*/

#include "TTBuffer.h"

#define thisTTClass			TTBuffer
#define thisTTClassName		"buffer"
#define thisTTClassTags		"audio, buffer"


TTHashPtr gTTBufferNameMap = NULL;


TTObjectPtr TTBuffer::instantiate(TTSymbolPtr name, TTValue& arguments)
{
	return new TTBuffer(arguments);
}


extern "C" void TTBuffer::registerClass() 
{
	TTClassRegister(TT("buffer"), thisTTClassTags, TTBuffer::instantiate);
}


TTBuffer::TTBuffer(TTValue& arguments) : 
	TTAudioObject(arguments)
{
	// By convention, the first argument for a TTAudioObject is the number of channels
	// So we'll maintain that here, and then use the second argument for the name of the buffer
	
	TTUInt16	channelCount = 1;
	TTSymbolPtr	name = kTTSymEmpty;
	
	if (arguments.getSize() > 0) {
		arguments.get(0, channelCount);	// TODO: should we limit range?  should zero mean to just reference an existing buffers channelcount?
		if (arguments.getSize() > 1)
			arguments.get(1, &name);
	}
	
	if (!gTTBufferNameMap)
		gTTBufferNameMap = new TTHash;
	
	addMessageWithArguments(getNames);
	addAttributeWithSetter(Name, kTypeSymbol);
	
	addAttributeWithGetterAndSetter(NumChannels,		kTypeUInt16);
	addAttributeWithGetterAndSetter(Length,				kTypeFloat64);
	addAttributeWithGetterAndSetter(LengthInSamples,	kTypeUInt64);
//	addAttribute(SampleRate,							kTypeFloat64);
	
	addMessage(normalize);
	addMessageWithArguments(fill);

	addMessageWithArguments(getValueAtIndex);
	registerMessage(TT("peek"), (TTMethod)&TTBuffer::getValueAtIndex);

	addMessageWithArguments(setValueAtIndex);
	registerMessage(TT("poke"), (TTMethod)&TTBuffer::setValueAtIndex);
	
	// initialize
	setAttributeValue(TT("name"), name);
	if (channelCount)
		setAttributeValue(TT("numChannels"), channelCount);			
}


TTBuffer::~TTBuffer()
{
	chuckMatrix(mMatrix, mName);
}

