/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Provides a common interface to soundfile data
 *
 * @details This object provides a common set of attributes and methods for working with soundfiles at a specific filepath.
 * This allows us to access metadata and copy values in a common way without duplicating code. As with the rest of the 
 * SoundfileLib, the third-party <a href="http://www.mega-nerd.com/libsndfile/">libsndfile library</a> is used for actual
 * access.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SOUNDFILE_H__
#define __TT_SOUNDFILE_H__

#include "TTDSP.h"

#ifdef uint
#undef uint
#endif
#include "libsndfile/sndfile.h"




//** Send a file path to the object and attempt to load the file *//
TTErr TTSoundfileToSampleMatrix::setFilePath(const TTValue& newValue);

#endif
