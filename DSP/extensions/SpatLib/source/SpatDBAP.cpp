/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief SpatLib Unit for Distance-based amplitude panning (DBAP).
 *
 * @details DBAP is described in an 2009 ICMC paper by Lossius et. al.
 * Further reference and link to a pdf version of the paper can be found
 * at www.jamoma.org. @n
 * @n
 * This unit is currently incomplete.
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "SpatDBAP.h"

#define thisTTClass			SpatDBAP
#define thisTTClassName		"spat.dbap"
#define thisTTClassTags		"audio, spatialization, processing"


TT_AUDIO_CONSTRUCTOR,
	mMatrixObject(NULL)
{
	// Instantiate an audio matrix
	TTObjectBaseInstantiate(TT("audiomatrix"), &mMatrixObject, kTTValNONE);
	
	setProcessMethod(processAudio);
}


SpatDBAP::~SpatDBAP()
{
	TTObjectBaseRelease(&mMatrixObject);
}


TTErr SpatDBAP::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mMatrixObject->process(inputs, outputs);
}

