/* 
 * TTBlue Class for representing Values
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTValue.h"


/****************************************************************************************************/

TTValue::TTValue()
{
	data = new data;
	data->float64 = 0.0;
	type = new type;
	*type = kTypeNone;
	num_values = 1;
}

TTValue::TTValue(TTFloat32 initialValue)
{
	data = new data;
	data->val_float32 = initialValue;
	type = new type;
	*type = kTypeFloat32;
	num_values = 1;
}

TTValue::TTValue(TTFloat64 initialValue)
{
	data = new data;
	data->val_float32 = initialValue;
	type = new type;
	*type = kTypeFloat64;
	num_values = 1;
}

TTValue::TTValue(TTInt32 initialValue)
{
	data = new data;
	data->val_int32 = initialValue;
	type = new type;
	*type = kTypeInt32;
	num_values = 1;
}

TTValue::TTValue(TTUInt32 initialValue)
{
	data = new data;
	data->val_uint32 = initialValue;
	type = new type;
	*type = kTypeUInt32;
	num_values = 1;
}

TTValue::TTValue(TTInt64 initialValue)
{
	data = new data;
	data->val_int64 = initialValue;
	type = new type;
	*type = kTypeInt64;
	num_values = 1;
}

TTValue::TTValue(TTUInt64 initialValue)
{
	data = new data;
	data->val_uint64 = initialValue;
	type = new type;
	*type = kTypeUInt64;
	num_values = 1;
}

TTValue::TTValue(TTObject& anObject)
{
	;
}

TTValue::TTValue(TTBoolean initialValue)
{
	;
}


TTValue::~TTValue()
{
	delete []type;
	delete []data;
}

	
data_type TTValue::getType() const
{
	return *type;
}


tt_uint16 TTValue::getNumValues() const
{
	return numValues;
}



void TTValue::setType(data_type arg)
{
	*type = arg;
}


void TTValue::setNumValues(const tt_uint16 arg)
{
	if(arg > numValues){
		delete []type;
		delete []data;
		type = new type[arg];
		data = new data[arg];
	}
	numValues = arg;
}
	

TTValue& TTValue::operator = (const TTValue &newValue)
{
	// TODO: what about freeing and allocating memory to hold the value(s)?
	type = newValue.type;
	data = newValue.data;
	return *this;
}
	

// FLOAT32
TTValue& TTValue::operator = (TTFloat32 value) 
{
	*type = kTypeFloat32;
	data->float32 = value;
	return *this;
}

TTValue::operator TTFloat32() const
{
	if(*type == kTypeFloat32)
		return data->float32;
	else{
		TTUInt16 index = 0;
		TTFloat32 value;
		CONVERT
		return value;
	}
}


// FLOAT64
TTValue& TTValue::operator = (TTFloat64 value)
{
	*type = kTypeFloat64;
	data->float64 = value;
	return *this;
}

TTValue::operator TTFloat64() const
{
	if(*type == kTypeFloat64)
		return data->float64;
	else{
		TTUInt16 index = 0;
		TTFloat64 value;
		CONVERT
		return value;
	}
}


// INT32
TTValue& TTValue::operator = (TTInt32 value)
{
	*type = kTypeInt32;
	data->int32 = value;
	return *this;
}

TTValue::operator TTInt32() const
{
	if(*type == kTypeInt32)
		return data->int32;
	else{
		TTUInt16 index = 0;
		TTInt32 value;
		CONVERT
		return value;
	}
}

TTValue& TTValue::operator = (int value)
{
	*type = kTypeInt32;
	data->int32 = value;
	return *this;
}

TTValue::operator int() const
{
	if(*type == kTypeInt32)
		return data->int32;
	else{
		TTUInt16 index = 0;
		TTInt32 value;
		CONVERT
		return value;
	}
}


// UINT32
TTValue& TTValue::operator = (tt_uint32 value)
{
	*type = kTypeUInt32;
	data->uint32 = value;
	return *this;
}

TTValue::operator tt_uint32() const
{
	if(*type == kTypeUInt32)
		return data->uint32;
	else{
		TTUInt16 index = 0;
		TTUInt32 value;
		CONVERT
		return value;
	}
}


// INT64
TTValue& TTValue::operator = (int64 value)
{
	*type = kTypeInt64;
	data->val_int64 = value;
	return *this;
}

TTValue::operator tt_int64() const
{
	if(*type == kTypeInt64)
		return data->int64;
	else{
		TTUInt16 index = 0;
		TTInt64 value;
		CONVERT
		return value;
	}
}


// UINT64
TTValue& TTValue::operator = (tt_uint64 value)
{
	*type = kTypeUInt64;
	data->uint64 = value;
	return *this;
}

TTValue::operator TTUInt64() const
{
	if(*type == kTypeUInt64)
		return data->uint64;
	else{
		TTUInt16 index = 0;
		TTUInt64 value;
		CONVERT
		return value;
	}
}


void TTValue::set(TTUInt16 index, const TTFloat32 value)
{
	*type = kTypeFloat32;
	data->float32 = value;
}

void TTValue::set(TTUInt16 index, const TTFloat64 value)
{
	*type = kTypeFloat64;
	data->float64 = value;
}

void TTValue::set(TTUInt16 index, const TTInt32 value)
{
	*type = kTypeInt32;
	data->int32 = value;
}

void TTValue::set(TTUInt16 index, const int value)
{
	*type = kTypeInt32;
	data->int32 = value;
}

void TTValue::set(TTUInt16 index, const TTUInt32 value)
{
	*type = kTypeUInt32;
	data->uint32 = value;
}

void TTValue::set(TTUInt16 index, const TTInt64 value)
{
	*type = kTypeInt64;
	data->int64 = value;
}

void TTValue::set(TTUInt16 index, const TTUInt64 value)
{
	*type = kTypeUInt64;
	data->uint64 = value;
}


// THESE FUNCTIONS CURRENTLY DO NO TYPE OR BOUNDS CHECKING !!!
// Should an error be returned on failure?
void TTValue::get(TTUInt16 index, TTFloat32 &value) const
{
	if(*type == kTypeFloat32)
		value = (data+index)->float32;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTFloat64 &value) const
{
	if(*type == kTypeFloat64)
		value = (data+index)->float64;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTInt32 &value) const
{
	if(*type == kTypeInt32)
		value = (data+index)->int32;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, int &value) const
{
	if(*type == kTypeInt32)
		value = (data+index)->int32;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTUInt32 &value) const
{
	if(*type == kTypeUInt32)
		value = (data+index)->uint32;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTInt64 &value) const
{
	if(*type == kTypeInt64)
		value = (data+index)->int64;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTUInt64 &value) const
{
	if(*type == kTypeUInt64)
		value = (data+index)->uint64;
	else
		CONVERT
}


// make sure this is a friend so that it can access the private members of the other atom
friend bool TTValue::operator == (const TTValue &a1, const TTValue &a2){
	short 	i;

	if(a1.numValues != a2.numValues)
		return false;

	for(i=0; i < a1.numValues; i++){
		if(a1.type[i] != a2.type[i])
			return false;
		else{
			switch(a1.type[i]){
				case kTypeInt32:
					if( (a1.data+i)->int32 == (a1.data+i)->int32 )
						return false;
				case kTypeUInt32:
					if( (a1.data+i)->uint32 == (a1.data+i)->uint32 )
						return false;
				case kTypeFloat32:
					if( (a1.data+i)->float32 == (a1.data+i)->float32 )
						return false;
				case kTypeFloat64:
					if( (a1.data+i)->float64 == (a1.data+i)->float64 )
						return false;
				default:
					return false;
			}
		}
	}
	return true;
}

