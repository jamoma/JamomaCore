/* 
 * SpatDisplay
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "SpatDisplay.h"
#include "SpatDisplayEntity.h"


SpatDisplayEntity::SpatDisplayEntity(SpatDisplay* entityOwner, TTSymbolPtr entityName):
	x(0), 
	y(0), 
	z(0), 
	yaw(0), 
	pitch(0), 
	directivity(0), 
	intensity(0)
{
	TTString	str = entityName->getString();
	TTString	attrStr;
	
	owner = entityOwner;
	name = entityName;

	attrStr = str + ".x";
	owner->registerAttribute(TT(str.c_str()), kTypeFloat64, NULL, (TTGetterMethod)&SpatDisplayEntity::getx, (TTSetterMethod)&SpatDisplayEntity::setx);
	attrStr = str + ".y";
	owner->registerAttribute(TT(str.c_str()), kTypeFloat64, NULL, (TTGetterMethod)&SpatDisplayEntity::gety, (TTSetterMethod)&SpatDisplayEntity::sety);
	attrStr = str + ".z";
	owner->registerAttribute(TT(str.c_str()), kTypeFloat64, NULL, (TTGetterMethod)&SpatDisplayEntity::getz, (TTSetterMethod)&SpatDisplayEntity::setz);
}


TTErr SpatDisplayEntity::setx(const TTValue& newValue)
{
	x = newValue;
	return kTTErrNone;
}

TTErr SpatDisplayEntity::getx(TTValue& returnedValue)
{
	returnedValue = x;
	return kTTErrNone;
}


TTErr SpatDisplayEntity::sety(const TTValue& newValue)
{
	y = newValue;
	return kTTErrNone;
}

TTErr SpatDisplayEntity::gety(TTValue& returnedValue)
{
	returnedValue = y;
	return kTTErrNone;
}


TTErr SpatDisplayEntity::setz(const TTValue& newValue)
{
	z = newValue;
	return kTTErrNone;
}

TTErr SpatDisplayEntity::getz(TTValue& returnedValue)
{
	returnedValue = z;
	return kTTErrNone;
}
