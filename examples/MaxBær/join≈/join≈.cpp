/* 
 *	join≈
 *	External object for Max/Lydbaer
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxbaer.h"
#define thisTTClass TTJoin



/**	The join≈ object takes two input signals and combines them
	into a single signal with all of the channels present.
*/
class TTJoin : public TTAudioObject {	
public:
	
	// Constructor
	TTJoin(TTUInt16 newMaxNumChannels)
	: TTAudioObject("join", newMaxNumChannels)
	{		
		setAttributeValue(TT("maxNumChannels"), newMaxNumChannels);		
		setProcessMethod(processAudio);
		setProcessWithSidechainMethod(processAudioWithSidechain);
	}
	
	// Destructor
	virtual ~TTJoin()
	{
		;
	}
	
	
	// If only one signal is provided, then duplicate it onto a second set of channels
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out)
	{
		TTUInt16	numChannels = in.getNumChannels();

		TTAudioSignal::copy(in, out, 0);
		TTAudioSignal::copy(in, out, numChannels);
		
		return kTTErrNone;
	}
	
	
	TTErr processAudioWithSidechain(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out, TTAudioSignal&)
	{
		TTUInt16	numChannels1 = in1.getNumChannels();

		TTAudioSignal::copy(in1, out, 0);
		TTAudioSignal::copy(in2, out, numChannels1);
		
		return kTTErrNone;
	}
	
};



TTObjectPtr instantiateTTJoin(TTSymbolPtr className, TTValue& arguments)
{
	return new TTJoin(arguments);
}



int main(void)
{
	WrappedClassOptionsPtr	options = new WrappedClassOptions;
	TTValue					value;

	TTBlueInit();
	
	value.clear();
	value.append(1);	
	options->append(TT("additionalSignalInputs"), value);

	value.clear();
	value.append(1);
	value.append(2);
	options->append(TT("channelRatioInputToOutput"), value);
	
	TTClassRegister(TT("join"), "audio, lydbaer", &instantiateTTJoin);
	return wrapAsMaxbaer(TT("join"), "join≈", NULL, options);
}

