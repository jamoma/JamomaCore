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
	TTUInt16	splitChannel;		///< The number of channels to group together on the first output

public:
	
	// Constructor
	TTSplit(TTUInt16 newMaxNumChannels)
	: TTAudioObject("split", newMaxNumChannels), splitChannel(1)
	{
		registerAttributeSimple(splitChannel, kTypeUInt16);
		
		setAttributeValue(TT("maxNumChannels"), newMaxNumChannels);
		setProcessWithSidechainMethod(processAudioWithSidechain);
	}
	
	// Destructor
	virtual ~TTSplit()
	{
		;
	}
	
	// Process Method	
	TTErr processAudioWithSidechain(TTAudioSignal& in, TTAudioSignal&, TTAudioSignal& out1, TTAudioSignal& out2)
	{
		out1.setnumChannels(splitChannel);
		out2.setnumChannels(out2.getNumChannels() - splitChannel);
		TTAudioSignal::copy(in, out1, 0);
		TTAudioSignal::copy(in, out2, splitChannel);
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
	
	TTBlueInit();

	value.clear();
	value.append(1);	
	options->append(TT("additionalSignalOutputs"), value);
	options->append(TT("alwaysUseSidechain"), value);

	TTClassRegister(TT("split"), "audio, lydbaer", &instantiateTTSplit);
	return wrapAsMaxbaer(TT("split"), "split≈", NULL, options);
}

