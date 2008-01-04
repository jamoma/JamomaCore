/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTObject.h"


/****************************************************************************************************/

TTParameter::TTParameter(const TTSymbol& newName, TTDataType newType, void* newAddress)
{
	name = &newName;
	type = newType;
	address = newAddress;
	getter = (TTGetterMethod)&TTParameter::defaultGetter;
	setter = (TTSetterMethod)&TTParameter::defaultSetter;
}


TTParameter::TTParameter(const TTSymbol& newName, TTDataType newType, void* newAddress, TTGetterMethod newGetter, TTSetterMethod newSetter)
{
	name = &newName;
	type = newType;
	address = newAddress;
	if(getter)
		getter = newGetter;
	else
		getter = (TTGetterMethod)&TTParameter::defaultGetter;	
	if(setter)
		setter = newSetter;
	else
		setter = (TTSetterMethod)&TTParameter::defaultSetter;
}


TTParameter::~TTParameter()
{
	;
}


TTErr TTParameter::defaultGetter(TTValue& value, const TTParameter& parameter)
{
	switch(parameter.type){
		case kTypeFloat32:
			value = *((TTFloat32*)parameter.address);
			return kTTErrNone;
		case kTypeFloat64:
			value = *((TTFloat64*)parameter.address);
			return kTTErrNone;
		case kTypeInt8:
			value = *((TTInt8*)parameter.address);
			return kTTErrNone;
		case kTypeUInt8:
			value = *((TTUInt8*)parameter.address);
			return kTTErrNone;
		case kTypeInt16:
			value = *((TTInt16*)parameter.address);
			return kTTErrNone;
		case kTypeUInt16:
			value = *((TTUInt16*)parameter.address);
			return kTTErrNone;
		case kTypeInt32:
			value = *((TTInt32*)parameter.address);
			return kTTErrNone;
		case kTypeUInt32:
			value = *((TTUInt32*)parameter.address);
			return kTTErrNone;
		case kTypeInt64:
			value = *((TTInt64*)parameter.address);
			return kTTErrNone;
		case kTypeUInt64:
			value = *((TTUInt64*)parameter.address);
			return kTTErrNone;
		case kTypeBoolean:
			value = *((TTBoolean*)parameter.address);
			return kTTErrNone;
		case kTypeSymbol:
			value = *((TTSymbol*)parameter.address);
			return kTTErrNone;
		case kTypeObject:
			value = *((TTObject*)parameter.address);
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;
	}
	return kTTErrInvalidType;
}


TTErr TTParameter::defaultSetter(const TTValue& value, const TTParameter& parameter)
{
	switch(parameter.type){
		case kTypeFloat32:
			*((TTFloat32*)parameter.address) = value;
			return kTTErrNone;
		case kTypeFloat64:
			*((TTFloat64*)parameter.address) = value;
			return kTTErrNone;
		case kTypeInt8:
			*((TTInt8*)parameter.address) = value;
			return kTTErrNone;
		case kTypeUInt8:
			*((TTUInt8*)parameter.address) = value;
			return kTTErrNone;
		case kTypeInt16:
			*((TTInt16*)parameter.address) = value;
			return kTTErrNone;
		case kTypeUInt16:
			*((TTUInt16*)parameter.address) = value;
			return kTTErrNone;
		case kTypeInt32:
			*((TTInt32*)parameter.address) = value;
			return kTTErrNone;
		case kTypeUInt32:
			*((TTUInt32*)parameter.address) = value;
			return kTTErrNone;
		case kTypeInt64:
			*((TTInt64*)parameter.address) = value;
			return kTTErrNone;
		case kTypeUInt64:
			*((TTUInt64*)parameter.address) = value;
			return kTTErrNone;
		case kTypeBoolean:
			*((TTBoolean*)parameter.address) = value;
			return kTTErrNone;
		case kTypeSymbol:
			*((TTSymbol*)parameter.address) = value;
			return kTTErrNone;
		case kTypeObject:
			*((TTObject*)parameter.address) = value;
			return kTTErrNone;
		case kTypeNone:
			return kTTErrNone;
	}
	return kTTErrInvalidType;
}


/****************************************************************************************************/

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


TTErr TTObject::registerParameter(const TTSymbol& name, TTDataType type, void* address)
{
	parameterNames[parameterCount] = &name;
	parameterObjects[parameterCount] = new TTParameter(name, type, address);
	parameterCount++;
	return kTTErrNone;
}


TTErr TTObject::registerParameter(const TTSymbol& name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter)
{
	parameterNames[parameterCount] = &name;
	parameterObjects[parameterCount] = new TTParameter(name, type, address, getter, setter);
	parameterCount++;
	return kTTErrNone;
}


TTErr TTObject::getParameterValue(const TTSymbol& name, TTValue& value)
{
	TTUInt8		i;
	TTParameter	*parameter;
	
	for(i=0; i<parameterCount; i++){
		if(*parameterNames[i] == name){
			parameter = parameterObjects[i];
			return (this->*parameter->getter)(value, *parameter);
		}
	}
	return kTTErrInvalidParameter;
}


TTErr TTObject::setParameterValue(const TTSymbol& name, const TTValue& value)
{
	TTUInt8		i;
	TTParameter	*parameter;
	
	for(i=0; i<parameterCount; i++){
		if(*parameterNames[i] == name){
			parameter = parameterObjects[i];
			return (this->*parameter->setter)(value, *parameter);
		}
	}
	return kTTErrInvalidParameter;
}



TTErr TTObject::getParameterValue(const TTSymbol& name, TTFloat32& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTFloat32& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTFloat64& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTFloat64& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTInt8& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTInt8& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTUInt8& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTUInt8& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}


TTErr TTObject::getParameterValue(const TTSymbol& name, TTInt16& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTInt16& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTUInt16& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTUInt16& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}


TTErr TTObject::getParameterValue(const TTSymbol& name, TTInt32& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTInt32& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTUInt32& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTUInt32& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}


TTErr TTObject::getParameterValue(const TTSymbol& name, TTInt64& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTInt64& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
}

TTErr TTObject::getParameterValue(const TTSymbol& name, TTUInt64& value)
{
	TTValue	v;
	TTErr	err;
	
	err = getParameterValue(name, v);
	value = v;
	return err;
}

TTErr TTObject::setParameterValue(const TTSymbol& name, const TTUInt64& value)
{
	TTValue	v(value);
	return setParameterValue(name, v);
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
			(this->*messageTargets[i])(*foo, name);
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
			(this->*messageTargets[i])(value, name);
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

