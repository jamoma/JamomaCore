/* 
 *	join≈
 *	External object for Jamoma AudioGraph
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxAudioGraph.h"

#define thisTTClass			TTAudioGraphJoin
#define thisTTClassName		"audio.join"
#define thisTTClassTags		"audio, graph"


/**	The join≈ object takes N input signals and combines them
	into a single signal with all of the channels present.
*/
class TTAudioGraphJoin : public TTAudioObject {
	TTCLASS_SETUP(TTAudioGraphJoin)
		
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTUInt16		numSignals = inputs->numAudioSignals;
		TTUInt16		numAccumulatedChannels = 0;
		TTAudioSignal&	out = outputs->getSignal(0);
		
		// 1. figure out our total number of channels
		for (TTUInt16 i=0; i<numSignals; i++) {
			TTAudioSignal&	in = inputs->getSignal(i);
			numAccumulatedChannels += in.getNumChannelsAsInt(); 
		}
		
		// 2. setup our output buffer for the correct number of channels
		out.setAttributeValue(TT("MaxNumChannels"), numAccumulatedChannels); 
		out.setAttributeValue(TT("NumChannels"), numAccumulatedChannels);
		
		// 3. copy the data to the output buffer
		numAccumulatedChannels = 0;
		for (TTUInt16 i=0; i<numSignals; i++) {
			TTAudioSignal&	in = inputs->getSignal(i);
			TTAudioSignal::copyDirty(in, out, numAccumulatedChannels);
			numAccumulatedChannels += in.getNumChannelsAsInt();
		}
		return kTTErrNone;
	}
	
};


TT_AUDIO_CONSTRUCTOR_EXPORT
{
	setAttributeValue(TT("MaxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphJoin::~TTAudioGraphJoin()
{
	;
}


/*******************************************************************************/

int main(void)
{
	MaxAudioGraphWrappedClassOptionsPtr	options = new MaxAudioGraphWrappedClassOptions;
	TTValue								value(0);

	TTAudioGraphInit();
	TTAudioGraphJoin::registerClass();
	
	options->append(TT("argumentDefinesNumInlets"), value);
	options->append(TT("nonadapting"), value); // don't change the number of out-channels in response to changes in the number of in-channels
	return wrapAsMaxAudioGraph(TT("audio.join"), "jcom.join≈", NULL, options);
}
