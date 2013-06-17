/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief pick≈: extract N specific audio signals from multichannel signal
 *
 * @details
 *
 * @authors Nils Peters
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphPick.h"

#define thisTTClass			TTAudioGraphPick
#define thisTTClassName		"audio.pick"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR,
mPickChannels(1),
outputNeedsResize(true)
{
	addAttributeWithGetterAndSetter(Picks, kTypeUInt16);	
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphPick::~TTAudioGraphPick()
{
	;
}

