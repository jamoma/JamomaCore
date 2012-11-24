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


#include "TTSpatEntity.h"

TTSpatEntity::TTSpatEntity()
{
	position[0] = 0.0;
	position[1] = 0.0;
	position[2] = 0.0;
	
	orientation[0] = 0.0;
	orientation[1] = 0.0;
	orientation[2] = 0.0;
	orientation[2] = 0.0;
}


TTSpatEntity::~TTSpatEntity()
{
	
}

void TTSpatEntity::getPosition(TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	x = position[0];
	y = position[1];
	z = position[2];
}


void TTSpatEntity::setPosition(TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	position[0] = x;
	position[1] = y;
	position[2] = z;
}


void TTSpatEntity::getOrientation(TTFloat64& q1, TTFloat64& q2, TTFloat64& q3, TTFloat64& q4)
{
	q1 = orientation[0];
	q2 = orientation[1];
	q3 = orientation[2];
	q4 = orientation[3];
}


void TTSpatEntity::setOrientation(TTFloat64 q1, TTFloat64 q2, TTFloat64 q3, TTFloat64 q4)
{
	orientation[0] = q1;
	orientation[1] = q2;
	orientation[2] = q3;
	orientation[3] = q4;
}

