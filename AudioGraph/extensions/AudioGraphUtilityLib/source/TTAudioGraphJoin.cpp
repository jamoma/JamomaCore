/** @file
 *
 * @ingroup audioGraphUtilityLib
 *
 * @brief join≈: merge multichannel signals
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphJoin.h"

#define thisTTClass			TTAudioGraphJoin
#define thisTTClassName		"audio.join"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR
{
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphJoin::~TTAudioGraphJoin()
{
	;
}

