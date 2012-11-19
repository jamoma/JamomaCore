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


#include "SpatEntity.h"

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

TTSpatEntity::getPosition(TTFLoat64& x, TTFLoat64& y, TTFLoat64& z)
{
	x = position[0];
	y = position[1];
	z = position[2];
}


TTSpatEntity::setPosition(TTFLoat64 x, TTFLoat64 y, TTFLoat64 z)
{
	position[0] = x;
	position[1] = y;
	position[2] = z;
}


TTSpatEntity::getOrientation(TTFLoat64& q1, TTFLoat64& q2, TTFLoat64& q3, TTFLoat64& q4)
{
	q1 = orientation[0];
	q2 = orientation[1];
	q3 = orientation[2];
	q4 = orientation[3];
}


TTSpatEntity::setOrientation(TTFLoat64 q1, TTFLoat64 q2, TTFLoat64 q3, TTFLoat64 q4)
{
	orientation[0] = q1;
	orientation[1] = q2;
	orientation[2] = q3;
	orientation[3] = q4;
}