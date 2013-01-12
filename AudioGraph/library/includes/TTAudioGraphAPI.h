/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief AudioGraph Audio Graph Layer for Jamoma DSP
 *
 * @details Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * This file, when linked to, provides all definitions required to the AudioGraph API.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TTAUDIOGRAPH_API_H__
#define __TTAUDIOGRAPH_API_H__

#include "TTAudioGraph.h"
#include "TTAudioGraphObject.h"
#ifndef TT_PLATFORM_IOS
#include "TTAudioGraphOutput.h"
#endif
#include "TTAudioGraphGenerator.h"

#endif // __TTAUDIOGRAPH_API_H__
