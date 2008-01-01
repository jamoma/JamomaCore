/* 
 * TTBlue Audio Signal Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioSignal.h"


/****************************************************************************************************/

TTAudioSignal::TTAudioSignal(TTUInt16 howMany)
{
	maxNumChannels = howMany;
	vectors = (TTSampleVector *)calloc(sizeof(TTSampleVector) * howMany);
}


TTAudioSignal::~TTAudioSignal()
{
	free(vectors);
}


TTErr TTAudioSignal::setVector(TTUInt8 channel, TTSampleVector newVector)
{
	// could check against maxnumchannels here
	vectors[channel] = newVector;
	return 0;
}


TTUInt16 TTAudioSignal::getMinChannelCount(TTAudioSignal& signal1, TTAudioSignal& signal2)
{
	if(signal1.numChannels > signal2.numChannels)
		return signal2.numChannels;
	else
		return signal1.numChannels;
}



// TODO: The old tt audio signal could point to external memory, or allocate its own for the vectors
// This enum was used to keep trac of which was the case:
// enum selectors{
//	k_mode_local = 1,
//	k_mode_external = 0,
//};


// TODO: implement clear() method -- ZERO OUT A VECTOR'S CONTENTS
		
// TODO: implement fill() method --- SET ALL VALUES IN THE SIGNAL TO A CONSTANT


