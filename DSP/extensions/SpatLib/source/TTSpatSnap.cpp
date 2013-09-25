/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief TODO
 *
 * @details TODO @n
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpatSnap.h"

#define thisTTClass			TTSpatSnap
#define thisTTClassName		"spat.snap"
#define thisTTClassTags		"audio, spatialization, processing"


TTObjectBasePtr TTSpatSnap::instantiate(TTSymbol name, TTValue arguments)
{
	return (TTObjectBasePtr) new thisTTClass(arguments);
}


extern "C" void thisTTClass :: registerClass ()
{
	TTClassRegister( thisTTClassName, thisTTClassTags, thisTTClass :: instantiate );
}


TTSpatSnap::TTSpatSnap(const TTValue& arguments) : TTSpatBase(arguments)
{
	mRenderer = new TTSpatSnapRenderer;
}


TTSpatSnap::~TTSpatSnap()
{
	delete mRenderer;
}

