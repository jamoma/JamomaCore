/* 
 * SoundfileLib -- Operate on Soundfiles
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "TTSoundfilePlayer.h"
#include "TTSoundfileRecorder.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();
	
	TTSoundfilePlayer::registerClass();
	TTSoundfileRecorder::registerClass();
	
	return kTTErrNone;
}

