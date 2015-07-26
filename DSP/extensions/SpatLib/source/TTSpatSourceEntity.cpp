/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatSourceEntity describes the geometry of a point, and #TTSpatSource and #TTSpatSink specialise this further for the description of sources and sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters,
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSpatSourceEntity.h"

TTSpatSourceEntity::TTSpatSourceEntity() :
mPosition(),
mOrientation(),
width(),
order()
{
	;
}


TTSpatSourceEntity::~TTSpatSourceEntity()
{
	
}

void TTSpatSourceEntity::getSourceWidth(TTFloat64& x)
{
	x = width;
}


void TTSpatSourceEntity::setSourceWidth(TTFloat64 x)
{
	width = x;
}


void TTSpatSourceEntity::getOrder(TTFloat64& x)
{
	x = order;
}


void TTSpatSourceEntity::setOrder(TTFloat64 x)
{
	order = x;
}
