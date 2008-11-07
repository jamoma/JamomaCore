/* 
 *	split≈
 *	External object for Max/Lydbaer
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"
#define thisTTClass TTSplit



// For the split≈ object takes an input signal of N channels
// and returns 2 inputs signals, whose number of channels sum to the N channels of the input signal

class TTSplit : public TTAudioObject {
protected:
	TTAudioObjectPtr	actualFilterObject;		///< The actual filter object that this object is currently wrapping
	TTFloat64			frequency;				///< The center or cutoff frequency of the filter
	TTFloat64			q;						///< The width of the filter
	TTSymbolPtr			type;					///< The name of the current filter type
	
public:
	
	// Constructor
	TTSplit(TTUInt16 newMaxNumChannels)
	: TTAudioObject("split", newMaxNumChannels), actualFilterObject(NULL)
	{
		registerAttributeWithSetter(frequency, kTypeFloat64);		
		registerMessageWithArgument(updateMaxNumChannels);
		
		setAttributeValue(TT("maxNumChannels"), newMaxNumChannels);

		setProcessMethod(processAudio);
		setProcessWithSidechainMethod(processAudioWithSidechain);
	}
	
	// Destructor
	virtual ~TTSplit()
	{
		;
	}
	
	
	TTErr setfrequency(const TTValue& newValue)
	{	
		frequency = newValue;
		return actualFilterObject->setAttributeValue(TT("frequency"), frequency);
	}

	
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels)
	{
		if(actualFilterObject)
			return actualFilterObject->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
		else
			return kTTErrNone;
	}
	
	
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out)
	{
		return actualFilterObject->process(in, out);
	}
	
	
	TTErr processAudioWithSidechain(TTAudioSignal& in, TTAudioSignal&, TTAudioSignal& out1, TTAudioSignal& out2)
	{
		return actualFilterObject->process(in, out1);
	}
	
};



// Because we have created this overdriveExtended class outside of the main TTBlue framework, 
// we have to define our own factory method that is used to create a new instance of our object.

TTObjectPtr instantiateTTSplit(TTSymbolPtr className, TTValue& arguments)
{
	return new TTSplit(arguments);
}



int main(void)
{
	TTBlueInit();
	
	// First, we have to register our custom subclass with the TTBlue framework.
	TTClassRegister(TT("split"), "audio, lydbaer", &instantiateTTSplit);
	// Then we are able to wrap it as a Max class.
	return wrapAsMaxbaer(TT("split"), "split≈", NULL);
}

