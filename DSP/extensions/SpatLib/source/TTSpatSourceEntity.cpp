/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatSource specialise #TTSpatEntity for the description of sources and sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters, Jan Schacher
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, Timothy Place and Jan Schacher @n
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


void TTSpatSourceEntity::setWidth(TTFloat64 x)
{
	width = x;
}


void TTSpatSourceEntity::getWidth(TTFloat64& x)
{
	x = width;
}



void TTSpatSourceEntity::setOrder(TTFloat64 x)
{
	order = x;
}


void TTSpatSourceEntity::getOrder(TTFloat64& x)
{
	x = order;
}


