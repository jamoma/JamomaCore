/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTObject.h"


/****************************************************************************************************/

TTParameter::TTParameter(const TTSymbol& newName, TTDataType newType, long newOffset)
{
	name = &newName;
	type = newType;
	offset = newOffset;
	getter = (TTMethod)&TTParameter::defaultGetter;
	setter = (TTMethod)&TTParameter::defaultSetter;
}


TTParameter::TTParameter(const TTSymbol& newName, TTDataType newType, long newOffset, TTMethod newGetter, TTMethod newSetter)
{
	name = &newName;
	type = newType;
	offset = newOffset;
	if(getter)
		getter = newGetter;
	else
		getter = (TTMethod)&TTParameter::defaultGetter;	
	if(setter)
		setter = newSetter;
	else
		setter = (TTMethod)&TTParameter::defaultSetter;
}


TTParameter::~TTParameter()
{
	;
}


TTErr TTParameter::defaultGetter(const TTSymbol& name, TTValue& value)
{
	return kTTErrNone;
}


TTErr TTParameter::defaultSetter(const TTSymbol& name, TTValue& value)
{
	return kTTErrNone;
}



TTObject::TTObject()
{
	messageCount = 0;
	parameterCount = 0;
}


TTObject::~TTObject()
{
	TTUInt16	i;

	for(i=0; i<parameterCount; i++)
		delete parameterObjects[i];
}


TTErr TTObject::registerParameter(const TTSymbol& name, TTDataType type, long offset)
{
	parameterNames[parameterCount] = &name;
	parameterObjects[parameterCount] = new TTParameter(name, type, offset);
	parameterCount++;
	return kTTErrNone;
}


TTErr TTObject::registerParameter(const TTSymbol& name, TTDataType type, long offset, TTMethod getter, TTMethod setter)
{
	parameterNames[parameterCount] = &name;
	parameterObjects[parameterCount] = new TTParameter(name, type, offset, getter, setter);
	parameterCount++;
	return kTTErrNone;
}


TTErr TTObject::setParameterValue(const TTSymbol& name, TTValue& value)
{
	TTUInt8		i;
	TTParameter	*parameter;
	
	for(i=0; i<parameterCount; i++){
		if(*parameterNames[i] == name){
			parameter = parameterObjects[i];
			(this->*parameter->setter)(name, value);
			break;
		}
	}
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

