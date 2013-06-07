/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief split≈: divide multichannel signal into N smaller multichannel signals
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphSplit.h"

#define thisTTClass			TTAudioGraphSplit
#define thisTTClassName		"audio.split"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithGetterAndSetter(Groups, kTypeUInt16);
	
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphSplit::~TTAudioGraphSplit()
{
	;
}

