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


TTErr TTObject::registerParameter(const TTSymbol& name, TTSymbol& type, long offset)
{
	return kTTErrNone;
}


TTErr TTObject::registerParameter(const TTSymbol& name, TTSymbol& type, long offset, TTMethod getter, TTMethod setter)
{
	return kTTErrNone;
}


TTErr TTObject::setParameterValue(const TTSymbol& name, TTValue& value)
{
	return kTTErrNone;
}


TTErr TTObject::getParameterValue(const TTSymbol& name, TTValue& value)
{
	return kTTErrNone;
}


TTErr TTObject::setParameterValue(const TTSymbol& name, TTUInt32& value)
{
	return kTTErrNone;
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTUInt32& value)
{
	return kTTErrNone;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, TTFloat32& value)
{
	return kTTErrNone;
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTFloat32& value)
{
	return kTTErrNone;
}



TTErr TTObject::setGlobalParameterValue(const TTSymbol& name, TTValue& value)
{
	return kTTErrNone;
}

TTErr TTObject::getGlobalParameterValue(const TTSymbol& name, TTValue& value)
{
	return kTTErrNone;
}




	
TTErr TTObject::registerMessage(const TTSymbol& name, TTMethod message)
{
	messageNames[messageCount] = &name;
	messageTargets[messageCount] = message;
	messageCount++;
	return kTTErrNone;
}


TTErr TTObject::sendMessage(const TTSymbol& name)
{
	TTUInt8	i;
	TTValue *foo = NULL;
	
	for(i=0; i<messageCount; i++){
		if(*messageNames[i] == name){
			(this->*messageTargets[i])(name, *foo);
			break;
		}
	}
	return kTTErrNone;
}


TTErr TTObject::sendMessage(const TTSymbol& name, TTValue& value)
{
	TTUInt8	i;
	
	for(i=0; i<messageCount; i++){
		if(*messageNames[i] == name){
			(this->*messageTargets[i])(name, value);
			break;
		}
	}
	return kTTErrNone;
}


TTErr method(const void *object, const TTSymbol& messageName, TTValue& value)
{
	TTObject* self = (TTObject*)object;
	
	if(&value)
		return self->sendMessage(messageName, value);
	else
		return self->sendMessage(messageName);
}

