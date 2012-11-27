/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief #TTSpatEntity describes the geometry of a point, and #TTSpatSource and #TTSpatSink specialise this further for the description of sources and sinks.
 *
 * @details
 *
 * @authors Trond Lossius, Timothy Place, Nils Peters,
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSpatEntity.h"

TTSpatEntity::TTSpatEntity() :
	mPosition(0.0, 0.0, 0.0),
	mOrientation(0.0, 0.0, 0.0, 0.0),
	mData(0.0, 0.0, 0.0, 0.0)
{
	;
}


TTSpatEntity::~TTSpatEntity()
{
	
}

void TTSpatEntity::getPosition(TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	x = mPosition[0];
	y = mPosition[1];
	z = mPosition[2];
}


void TTSpatEntity::setPosition(TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	mPosition[0] = x;
	mPosition[1] = y;
	mPosition[2] = z;
}


void TTSpatEntity::getOrientation(TTFloat64& q1, TTFloat64& q2, TTFloat64& q3, TTFloat64& q4)
{
	q1 = mOrientation[0];
	q2 = mOrientation[1];
	q3 = mOrientation[2];
	q4 = mOrientation[3];
}


void TTSpatEntity::setOrientation(TTFloat64 q1, TTFloat64 q2, TTFloat64 q3, TTFloat64 q4)
{
	mOrientation[0] = q1;
	mOrientation[1] = q2;
	mOrientation[2] = q3;
	mOrientation[3] = q4;
}

