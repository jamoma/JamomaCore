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
	data = new DataValue;
	data->float64 = 0.0;
	type = new TTDataType;
	*type = kTypeNone;
	numValues = 1;
}

TTValue::TTValue(TTFloat32 initialValue)
{
	data = new DataValue;
	data->float32 = initialValue;
	type = new TTDataType;
	*type = kTypeFloat32;
	numValues = 1;
}

TTValue::TTValue(TTFloat64 initialValue)
{
	data = new DataValue;
	data->float32 = initialValue;
	type = new TTDataType;
	*type = kTypeFloat64;
	numValues = 1;
}

TTValue::TTValue(TTInt8 initialValue)
{
	data = new DataValue;
	data->int8 = initialValue;
	type = new TTDataType;
	*type = kTypeInt8;
	numValues = 1;
}

TTValue::TTValue(TTUInt8 initialValue)
{
	data = new DataValue;
	data->uint8 = initialValue;
	type = new TTDataType;
	*type = kTypeUInt8;
	numValues = 1;
}

TTValue::TTValue(TTInt16 initialValue)
{
	data = new DataValue;
	data->int16 = initialValue;
	type = new TTDataType;
	*type = kTypeInt16;
	numValues = 1;
}

TTValue::TTValue(TTUInt16 initialValue)
{
	data = new DataValue;
	data->uint16 = initialValue;
	type = new TTDataType;
	*type = kTypeUInt16;
	numValues = 1;
}

TTValue::TTValue(TTInt32 initialValue)
{
	data = new DataValue;
	data->int32 = initialValue;
	type = new TTDataType;
	*type = kTypeInt32;
	numValues = 1;
}

TTValue::TTValue(TTUInt32 initialValue)
{
	data = new DataValue;
	data->uint32 = initialValue;
	type = new TTDataType;
	*type = kTypeUInt32;
	numValues = 1;
}

TTValue::TTValue(TTInt64 initialValue)
{
	data = new DataValue;
	data->int64 = initialValue;
	type = new TTDataType;
	*type = kTypeInt64;
	numValues = 1;
}

TTValue::TTValue(TTUInt64 initialValue)
{
	data = new DataValue;
	data->uint64 = initialValue;
	type = new TTDataType;
	*type = kTypeUInt64;
	numValues = 1;
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

	
TTDataType TTValue::getType() const
{
	return *type;
}


TTUInt16 TTValue::getNumValues() const
{
	return numValues;
}



void TTValue::setType(TTDataType arg)
{
	*type = arg;
}


void TTValue::setNumValues(const TTUInt16 arg)
{
	if(arg > numValues){
		delete []type;
		delete []data;
		type = new TTDataType[arg];
		data = new DataValue[arg];
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


// INT8
TTValue& TTValue::operator = (TTInt8 value)
{
	*type = kTypeInt8;
	data->int8 = value;
	return *this;
}

TTValue::operator TTInt8() const
{
	if(*type == kTypeInt8)
		return data->int8;
	else{
		TTUInt16 index = 0;
		TTInt8 value;
		CONVERT
		return value;
	}
}


// UINT8
TTValue& TTValue::operator = (TTUInt8 value)
{
	*type = kTypeUInt8;
	data->uint8 = value;
	return *this;
}

TTValue::operator TTUInt8() const
{
	if(*type == kTypeUInt8)
		return data->uint8;
	else{
		TTUInt16 index = 0;
		TTUInt8 value;
		CONVERT
		return value;
	}
}


// INT16
TTValue& TTValue::operator = (TTInt16 value)
{
	*type = kTypeInt16;
	data->int16 = value;
	return *this;
}

TTValue::operator TTInt16() const
{
	if(*type == kTypeInt16)
		return data->int16;
	else{
		TTUInt16 index = 0;
		TTInt16 value;
		CONVERT
		return value;
	}
}


// UINT16
TTValue& TTValue::operator = (TTUInt16 value)
{
	*type = kTypeUInt16;
	data->uint16 = value;
	return *this;
}

TTValue::operator TTUInt16() const
{
	if(*type == kTypeUInt16)
		return data->uint16;
	else{
		TTUInt16 index = 0;
		TTUInt16 value;
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
/*
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
*/

// UINT32
TTValue& TTValue::operator = (TTUInt32 value)
{
	*type = kTypeUInt32;
	data->uint32 = value;
	return *this;
}

TTValue::operator TTUInt32() const
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
TTValue& TTValue::operator = (TTInt64 value)
{
	*type = kTypeInt64;
	data->int64 = value;
	return *this;
}

TTValue::operator TTInt64() const
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
TTValue& TTValue::operator = (TTUInt64 value)
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

void TTValue::set(TTUInt16 index, const TTInt8 value)
{
	*type = kTypeInt8;
	data->int8 = value;
}

void TTValue::set(TTUInt16 index, const TTUInt8 value)
{
	*type = kTypeUInt8;
	data->uint8 = value;
}

void TTValue::set(TTUInt16 index, const TTInt16 value)
{
	*type = kTypeInt16;
	data->int16 = value;
}

void TTValue::set(TTUInt16 index, const TTUInt16 value)
{
	*type = kTypeUInt16;
	data->uint16 = value;
}

void TTValue::set(TTUInt16 index, const TTInt32 value)
{
	*type = kTypeInt32;
	data->int32 = value;
}
/*
void TTValue::set(TTUInt16 index, const int value)
{
	*type = kTypeInt32;
	data->int32 = value;
}
*/
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

void TTValue::get(TTUInt16 index, TTInt8 &value) const
{
	if(*type == kTypeInt8)
		value = (data+index)->int8;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTUInt8 &value) const
{
	if(*type == kTypeUInt8)
		value = (data+index)->uint8;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTInt16 &value) const
{
	if(*type == kTypeInt16)
		value = (data+index)->int16;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTUInt16 &value) const
{
	if(*type == kTypeUInt16)
		value = (data+index)->uint16;
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
/*
void TTValue::get(TTUInt16 index, int &value) const
{
	if(*type == kTypeInt32)
		value = (data+index)->int32;
	else
		CONVERT
}
*/
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



