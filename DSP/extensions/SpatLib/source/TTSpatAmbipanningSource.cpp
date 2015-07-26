/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief The #TTSpatAmbipanningSource class provides an extended description of a source as compared to the #TTSpatSource class that it inherits from.
 *
 * @details It is extended to describe source width.
 *
 * @authors Jan Schacher, Trond Lossius, Timothy Place, Nils Peters,
 *
 * @copyright Copyright © 2015 by Jan Schacher, Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSpatAmbipanningSource.h"

TTSpatAmbipanningSource::TTSpatAmbipanningSource()
{
	;
}


TTSpatAmbipanningSource::~TTSpatAmbipanningSource()
{
	
}


void TTSpatAmbipanningSource::getOrder(TTFloat64& aOrder)
{
	aOrder = mData[0];
}


void TTSpatAmbipanningSource::setOrder(TTFloat64 aOrder)
{
	mData[0] = aOrder;
}

