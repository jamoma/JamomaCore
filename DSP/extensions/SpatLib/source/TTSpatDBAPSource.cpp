/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Describe the geometry of a point
 *
 * @details This can be used to describe sources or sinks.
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters,
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSpatDBAPSource.h"

TTSpatDBAPSource::TTSpatDBAPSource()
{
	width = 0.0;
}


TTSpatDBAPSource::~TTSpatDBAPSource()
{
	
}


void TTSpatDBAPSource::getWidth(TTFloat64& aWidth)
{
	aWidth = mWidth;
}


void TTSpatDBAPSource::setWidth(TTFloat64 aWidth)
{
	mWidth = aWidth;
}

