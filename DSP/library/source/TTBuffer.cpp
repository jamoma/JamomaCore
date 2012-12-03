/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Audio buffer that manages multiple SampleMatrices.
 * 
 * @see TTSampleMatrix, TTMatrix, TTAudioSignal
 *  
 * @authors Timothy Place & Nathan Wolek
 *
 * @copyright Copyright © 2012, Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBuffer.h"
#include "TTSampleMatrix.h"

#define thisTTClass			TTBuffer
#define thisTTClassName		"buffer"
#define thisTTClassTags		"audio, buffer"


TTHashPtr gTTBufferNameMap = NULL;


TTObjectPtr TTBuffer::instantiate(TTSymbol& name, TTValue& arguments)
{
	return new TTBuffer(arguments);
}


extern "C" void TTBuffer::registerClass() 
{
	TTClassRegister("buffer", thisTTClassTags, TTBuffer::instantiate);
}


TTBuffer::TTBuffer(TTValue& arguments) : 
	TTAudioObject(arguments)
{
	// By convention, the first argument for a TTAudioObject is the number of channels
	// So we'll maintain that here, and then use the second argument for the name of the buffer
	
	TTUInt16	channelCount = 1;
	TTSymbol	name = kTTSymEmpty;
	
	if (arguments.getSize() > 0) {
		arguments.get(0, channelCount);	// TODO: should we limit range? what should zero mean?
		if (arguments.getSize() > 1)
			arguments.get(1, name);
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
	registerMessage("peek", (TTMethod)&TTBuffer::getValueAtIndex);

	addMessageWithArguments(setValueAtIndex);
	registerMessage("poke", (TTMethod)&TTBuffer::setValueAtIndex);
	
	// initialize
    TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mActiveMatrix, kTTValNONE);
	mActiveMatrix->setBufferPoolStage(kSM_Active);

	TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mBecomingActiveMatrix, kTTValNONE);
	mBecomingActiveMatrix->setBufferPoolStage(kSM_BecomingActive);
	
	// TODO: setup the becomingActiveMatrix here?
	
	setAttributeValue("name", name);
	if (channelCount)
		setAttributeValue("numChannels", channelCount);			
}


TTBuffer::~TTBuffer()
{
	chuckMatrix(mActiveMatrix, mName);
}

