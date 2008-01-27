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
	: data(NULL), type(NULL)
{
	clear();
}

TTValue::TTValue(TTFloat32 initialValue)
{
	init();
	data->float32 = initialValue;
	*type = kTypeFloat32;
}

TTValue::TTValue(TTFloat64 initialValue)
{
	init();
	data->float64 = initialValue;
	*type = kTypeFloat64;
}

TTValue::TTValue(TTInt8 initialValue)
{
	init();
	data->int8 = initialValue;
	*type = kTypeInt8;
}

TTValue::TTValue(TTUInt8 initialValue)
{
	init();
	data->uint8 = initialValue;
	*type = kTypeUInt8;
}

TTValue::TTValue(TTInt16 initialValue)
{
	init();
	data->int16 = initialValue;
	*type = kTypeInt16;
}

TTValue::TTValue(TTUInt16 initialValue)
{
	init();
	data->uint16 = initialValue;
	*type = kTypeUInt16;
}

TTValue::TTValue(TTInt32 initialValue)
{
	init();
	data->int32 = initialValue;
	*type = kTypeInt32;
}

TTValue::TTValue(TTUInt32 initialValue)
{
	init();
	data->uint32 = initialValue;
	*type = kTypeUInt32;
}

TTValue::TTValue(TTInt64 initialValue)
{
	init();
	data->int64 = initialValue;
	*type = kTypeInt64;
}

TTValue::TTValue(TTUInt64 initialValue)
{
	init();
	data->uint64 = initialValue;
	*type = kTypeUInt64;
}

TTValue::TTValue(TTBoolean initialValue)
{
	init();
	data->boolean = initialValue;
	*type = kTypeBoolean;
}

TTValue::TTValue(TTSymbol& initialValue)
{
	init();
	data->sym = &initialValue;
	*type = kTypeSymbol;
}

TTValue::TTValue(TTObject& initialValue)
{
	init();
	data->object = &initialValue;
	*type = kTypeObject;
}


TTValue::~TTValue()
{
	free(type);
	free(data);
}


void TTValue::clear()
{
	if(data)
		free(data);
	if(type)
		free(type);

	init();
	data->float64 = 0.0;
	*type = kTypeNone;
	numValues = 0;
}


TTDataType TTValue::getType() const
{
	return *type;
}


TTDataType TTValue::getType(TTUInt16 index) const
{
	return type[index];
}


TTUInt16 TTValue::getNumValues() const
{
	return numValues;
}


void TTValue::init()
{
	type = (TTDataType*)malloc(sizeof(TTDataType));
	data = (DataValue*)malloc(sizeof(DataValue));
	numValues = 1;
}


void TTValue::setType(TTDataType arg)
{
	*type = arg;
}


void TTValue::setNumValues(const TTUInt16 arg)
{
	if(arg > numValues){
		type = (TTDataType*)realloc(type, sizeof(TTDataType) * arg);
		data = (DataValue*)realloc(data, sizeof(DataValue) * arg);
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


// BOOLEAN
TTValue& TTValue::operator = (TTBoolean value)
{
	*type = kTypeBoolean;
	data->boolean = value;
	return *this;
}

TTValue::operator TTBoolean() const
{
	if(*type == kTypeBoolean)
		return data->boolean;
	else{
		TTUInt16 index = 0;
		TTBoolean value;
		CONVERT
		return value;
	}
}


// SYMBOL
TTValue& TTValue::operator = (TTSymbol& value)
{
	*type = kTypeSymbol;
	data->sym = &value;
	return *this;
}

TTValue::operator TTSymbol&() const
{
	if(*type == kTypeSymbol)
		return *data->sym;
	else{
		return (TTSymbol&)TT("");
	}
}


// OBJECT
TTValue& TTValue::operator = (TTObject& value)
{
	*type = kTypeObject;
	data->object = &value;
	return *this;
}

TTValue::operator TTObject&() const
{
	if(*type == kTypeObject)
		return *data->object;
	else{
		// TODO: This is an error, not sure what to do...
		return *data->object;
	}
}


void TTValue::set(TTUInt16 index, const TTFloat32 newValue)
{
	type[numValues] = kTypeFloat32;
	data[numValues].float32 = newValue;
}

void TTValue::set(TTUInt16 index, const TTFloat64 newValue)
{
	type[numValues] = kTypeFloat64;
	data[numValues].float64 = newValue;
}

void TTValue::set(TTUInt16 index, const TTInt8 newValue)
{
	type[numValues] = kTypeInt8;
	data[numValues].int8 = newValue;
}

void TTValue::set(TTUInt16 index, const TTUInt8 newValue)
{
	type[numValues] = kTypeUInt8;
	data[numValues].uint8 = newValue;
}

void TTValue::set(TTUInt16 index, const TTInt16 newValue)
{
	type[numValues] = kTypeInt16;
	data[numValues].int16 = newValue;
}

void TTValue::set(TTUInt16 index, const TTUInt16 newValue)
{
	type[numValues] = kTypeUInt16;
	data[numValues].uint16 = newValue;
}

void TTValue::set(TTUInt16 index, const TTInt32 newValue)
{
	type[numValues] = kTypeInt32;
	data[numValues].int32 = newValue;
}

void TTValue::set(TTUInt16 index, const TTUInt32 newValue)
{
	type[numValues] = kTypeUInt32;
	data[numValues].uint32 = newValue;
}

void TTValue::set(TTUInt16 index, const TTInt64 newValue)
{
	type[numValues] = kTypeInt64;
	data[numValues].int64 = newValue;
}

void TTValue::set(TTUInt16 index, const TTUInt64 newValue)
{
	type[numValues] = kTypeUInt64;
	data[numValues].uint64 = newValue;
}

void TTValue::set(TTUInt16 index, const TTBoolean newValue)
{
	type[numValues] = kTypeBoolean;
	data[numValues].boolean = newValue;
}

void TTValue::set(TTUInt16 index, const TTSymbol& newValue)
{
	type[numValues] = kTypeSymbol;
	data[numValues].sym = (TTSymbol*)&newValue;
}

void TTValue::set(TTUInt16 index, const TTObject& newValue)
{
	type[numValues] = kTypeObject;
	data[numValues].object = (TTObject*)&newValue;
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

void TTValue::get(TTUInt16 index, TTBoolean &value) const
{
	if(*type == kTypeUInt64)
		value = (data+index)->uint64;
	else
		CONVERT
}

void TTValue::get(TTUInt16 index, TTSymbol &value) const
{
	if(*type == kTypeUInt64)
		value = *(data+index)->sym;
}

void TTValue::get(TTUInt16 index, TTObject &value) const
{
//	TODO: The method won't compile because of the lack of a proper definition of the TTObject class in this context
//	if(*type == kTypeUInt64)
//		value = *(data+index)->object;
}


void TTValue::append(const TTFloat32 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTFloat64 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTInt8 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTUInt8 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTInt16 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTUInt16 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTInt32 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTUInt32 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTInt64 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTUInt64 newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTBoolean newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTSymbol& newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}

void TTValue::append(const TTObject& newValue)
{
	setNumValues(numValues + 1);
	set(numValues, newValue);
}




