/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTObject.h"


/****************************************************************************************************/

TTObject::TTObject()
{
	messageCount = 0;
	parameterCount = 0;
}


TTObject::~TTObject()
{
	;
}


TTErr TTObject::registerParameter(TTSymbol& name, TTSymbol& type, long offset)
{
	;
}


TTErr TTObject::registerParameter(TTSymbol& name, TTSymbol& type, long offset, TTGetterType getter, TTSetterType setter)
{
	;
}


TTErr TTObject::setParameterValue(TTSymbol& name, TTValue& value)
{
	;
}


TTErr TTObject::getParameterValue(TTSymbol& name, TTValue& value)
{
	;
}

	
TTErr TTObject::registerMessage(TTSymbol& name, TTMessage message)
{
	messageNames[messageCount] = name;
	messageTargets[messageCount] = message;
	messageCount++;
}


TTErr TTObject::sendMessage(TTSymbol& name)
{
	TTUInt8	i;
	
	for(i=0; i<10; i++){
		if(messageNames[i] == name){
			messageTargets[i](name, NULL);
			break;
		}
	}
}


TTErr TTObject::sendMessage(TTSymbol& name, TTValue& value)
{
	TTUInt8	i;
	
	for(i=0; i<10; i++){
		if(messageNames[i] == name){
			messageTargets[i](name, value);
			break;
		}
	}
}

