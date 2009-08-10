/* 
 *	split≈
 *	External object for Max/Lydbaer
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"
#define thisTTClass TTSplit



// For the split≈ object takes an input signal of N channels
// and returns 2 inputs signals, whose number of channels sum to the N channels of the input signal

class TTSplit : public TTAudioObject {
protected:
	TTUInt16	splitChannel;		///< The number of channels to group together on the first output

public:
	
	// Constructor
	TTSplit(TTUInt16 newMaxNumChannels)
	: TTAudioObject("split", newMaxNumChannels), splitChannel(1)
	{
		registerAttributeSimple(splitChannel, kTypeUInt16);
		
		setAttributeValue(TT("maxNumChannels"), newMaxNumChannels);
		setProcessMethod(processAudio);
	}
	
	// Destructor
	virtual ~TTSplit()
	{
		;
	}

	// Process Method	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTAudioSignal&	in = inputs->getSignal(0);
		TTAudioSignal&	out1 = outputs->getSignal(0);
		TTAudioSignal&	out2 = outputs->getSignal(1);
		
		TTAudioSignal::copy(in, out1, 0);
		TTAudioSignal::copySubset(in, out2, splitChannel, in.getNumChannels()-1);
		out1.setnumChannels(splitChannel);
		out2.setnumChannels(in.getNumChannels() - splitChannel);
		return kTTErrNone;
	}
	
};



TTObjectPtr instantiateTTSplit(TTSymbolPtr className, TTValue& arguments)
{
	return new TTSplit(arguments);
}



int main(void)
{
	WrappedClassOptionsPtr	options = new WrappedClassOptions;
	TTValue					value;
	
	MCoreInit();

	value.clear();
	value.append(1);	
	options->append(TT("additionalSignalOutputs"), value);
	options->append(TT("alwaysUseSidechain"), value);

	TTClassRegister(TT("split"), "audio, lydbaer", &instantiateTTSplit);
	return wrapAsMaxbaer(TT("split"), "split≈", NULL, options);
}

