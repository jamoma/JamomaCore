/* 
 * A Parameter Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTParameter.h"

#define thisTTClass			TTParameter
#define thisTTClassName		"Parameter"
#define thisTTClassTags		"parameter"

TT_MODULAR_CONSTRUCTOR,
mValue(TTValue(0.0)),
mValueDefault(TTValue(0.0)),
mValueStepsize(TTValue(0.0)),
mType(kTTSymEmpty),					// TODO : define TTSymbol for Type in Jamoma (kTTSymNone, kTTSymGeneric, kTTSymBoolean, kTTSymInteger, kTTSymDecimal, kTTSymString, kTTSymArray) 
mPriority(0), 
mDescription(""),
mRepetitionsAllow(NO),
mReadonly(NO),
mViewFreeze(NO),
mRangeBounds(TTValue(0.0, 1.0)),
mRangeClipmode(kTTSymEmpty),
mRampDrive(kTTSymEmpty),
mRampFunction(kTTSymEmpty),
mDataspace(kTTSymEmpty),
mDataspaceUnitNative(kTTSymEmpty),
mDataspaceUnitActive(kTTSymEmpty),
mDataspaceUnitDisplay(kTTSymEmpty)
{
	TT_ASSERT("Correct number of args to create TTParameter", arguments.getSize() == 1);
	
	arguments.get(0, (TTPtr*)&mReturnValueCallback);
	TT_ASSERT("Return Value Callback passed to TTParameter is not NULL", mReturnValueCallback);
	
	addAttributeWithSetter(Value, kTypeNone);
	addAttributeWithSetter(ValueDefault, kTypeNone);
	addAttributeWithSetter(ValueStepsize, kTypeFloat32);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttribute(Priority, kTypeUInt8);
	addAttribute(Description, kTypeString);
	addAttributeWithSetter(RepetitionsAllow, kTypeBoolean);
	addAttributeWithSetter(Readonly, kTypeBoolean);
	addAttributeWithSetter(ViewFreeze, kTypeBoolean);
	
	addAttributeWithSetter(RangeBounds, kTypeNone);
	addAttributeWithSetter(RangeClipmode, kTypeSymbol);
	
	addAttributeWithSetter(RampDrive, kTypeSymbol);
	addAttributeWithSetter(RampFunction, kTypeSymbol);

	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitNative, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitActive, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitDisplay, kTypeSymbol);
	
	addMessage(Reset);
	addMessageWithArgument(Command);
	
	mIsSending = NO;
	mIsInitialised = NO;

}

TTParameter::~TTParameter()
{;}

TTErr TTParameter::Reset()
{
	// if valueDefault and value have the same type
	if (mValueDefault.getType() == mValue.getType())
		setValue(mValueDefault);
	
	// Set parameter to be uninitialised
	// to circumvent filtering of repetitions when outputing value from default preset
	mIsInitialised = NO;
	
	return kTTErrNone;
}

TTErr TTParameter::Command(const TTValue& command)
{
	double		start[LISTSIZE],
				values[LISTSIZE],
				time;
	int			i, commandSize;
	AtomPtr		ramp;
	TTSymbolPtr	unit, ramp;
	bool		hasRamp = false;
	bool		hasUnit = false;
	long		ac = 0;				// These two hold the input, but the input is converted into the native units
	AtomPtr		av = NULL;
	bool		alloc = false;
	
	char*	c = strrchr(msg->s_name, ':');
	
	if (c) {
		if (param_handleProperty(x, msg, argc, argv))
			return;
	}
	
	// Parse command
	commandSize = command.getSize();
	switch(commandSize) {
			
		// 1 value	
		case 1 :
		{
			// nothing to do
			break;	
		}
			
		// 2 values || 1 value + unit
		case 2 :
		{
			// Is the second element is a unit symbol ?
			if (mDataspaceUnitActive != kTTSym_none)
				if (command.getType(0) != kTypeSymbol && command.getType(1) == kTypeSymbol) {
					hasUnit = true;
					command.get(1, &unit);
				}
				
			break;	
		}
			
		// 3 values || 2 values + unit || 1 value + ramp ramptime
		case 3 :
		{
			// Is the second element is a ramp symbol ?
			if (command.getType(1) == kTypeSymbol) {
				command.get(1, &ramp);
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			// or is the last element is a unit symbol ?
			else if (mDataspace != kTTSym_none && command.getType(0) != kTypeSymbol && command.getType(2) == kTypeSymbol) {
				hasUnit = true;
				command.get(2, &unit);
			}
			
			break;	
		}
			
		// X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime
		default :
		{
			// Is the X-2 element is a ramp symbol ?
			if (command.getType(commandSize - 2) == kTypeSymbol) {
				command.get(commandSize - 3, &ramp);
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			
			// Is the X-3 or last element a unit symbol ?
			if (mDataspace != kTTSym_none && command.getType(0) != kTypeSymbol)
				if (hasRamp)
					if (command.getType(commandSize - 3) == kTypeSymbol) {
						hasUnit = true;
						command.get(commandSize - 3, &unit);
					}
				else
					if (command.getType(commandSize - 1) == kTypeSymbol) {
						hasUnit = true;
						command.get(commandSize - 1, &unit);
					}
			
			break;	
		}
			
	}
	
	// The current implementation does not override the active unit temporarily or anything fancy
	//	It just sets the active unit and then runs with it...
	if (hasUnit)
		object_attr_setsym(x, gensym("dataspace/unit/active"), unit);
	
	/*
	 For this initial implementation we are converting the values prior to ramping, as it is easier.
	 Ultimately though, we actually want to convert the units after the ramping, 
	 for example to perform a sweep that is linear vs logarithmic
	 */
	if (hasRamp && hasUnit) {
		param_convert_units(x, argc-3, argv, &ac, &av, &alloc);
	}
	else if (hasRamp) {
		param_convert_units(x, argc-2, argv, &ac, &av, &alloc);
	}
	else if (hasUnit) {
		param_convert_units(x, argc-1, argv, &ac, &av, &alloc);
	}
	else {
		param_convert_units(x, argc, argv, &ac, &av, &alloc);
	}
	
	// Check the second to last item in the list first, which when ramping should == the string ramp
	//	ramp = argv + (argc - 2);
	//	if (ramp->a_type == A_SYM && ramp->a_w.w_sym == jps_ramp) {
	if (hasRamp) {
		time = atom_getfloat(argv+(argc-1));
		
		// Only one list member if @type is integer of decimal
		if ( x->common.attr_type == jps_integer || x->common.attr_type == jps_decimal)
			ac = 1;
		//		else
		//		argc = argc - 2;
		
		for (i=0; i<ac; i++) {
			values[i] = atom_getfloat(av+i);
			if (i <= x->list_size)
				start[i] = atom_getfloat(&x->atom_list[i]);
			else
				start[i] = atom_getfloat(&x->atom_list[(x->list_size)-1]);
		}
		
		if (time <= 0) {
			jcom_core_atom_copy(&x->attr_value, av);
			x->param_output(x);
			return;
		}	
		
		if (x->common.attr_repetitions == 0 && x->isInitialised) {
			if (param_list_compare(x->atom_list, x->list_size, av, ac))
				return;	// nothing to do
		}
		
		x->list_size = ac;
		x->ramper->set(ac, start);
		x->ramper->go(ac, values, time);
	} 
	else {
		// Don't output if the input data is identical
		if (x->common.attr_repetitions == 0 && x->isInitialised) {
			if (param_list_compare(x->atom_list, x->list_size, av, ac))
				return;	// nothing to do
		}
		
		// Avoid copying more than one atom if the type only can have one argument
		if (x->common.attr_type != jps_array && x->common.attr_type != jps_generic
			&& x->common.attr_type != jps_none && x->common.attr_type != jps_string) {
			// If attr_type is != to anyone of the above values then we know 
			// that it must be == to a scalar type.  This ensures it will behave
			// as a scalar and not a list.
			ac = 1;
		}
		
		for (i = 0; i < ac; i++) {
			switch(av[i].a_type) {
				case A_LONG:
					atom_setlong(&x->atom_list[i], atom_getlong(av + i));
					break;
				case A_FLOAT:
					atom_setfloat(&x->atom_list[i], atom_getfloat(av + i));
					break;
				case A_SYM:
					atom_setsym(&x->atom_list[i], atom_getsym(av + i));
					break;
				default:
					error("param_list: no type specification");
					break;
			}
		}
		x->list_size = ac;
		x->param_output(x);
	}
	
	if (alloc)
		sysmem_freeptr(av);
	
	
}

TTErr TTParameter::setValue(const TTValue& value)
{
	if (!mIsSending) {
		
		// lock
		mIsSending = YES;
		
		mValue = value;
	
		// return the value to his owner
		this->mReturnValueCallback->notify(mValue);
	
		// notify each observers
		notifyObservers(kTTSym_Value, value);
		
		// we have had our value set at least once
		x->isInitialised = YES;
		
		// unlock
		mIsSending = NO;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTParameter::setValueDefault(const TTValue& value)
{
	mValueDefault = value;
	notifyObservers(kTTSym_ValueDefault, value);
	return kTTErrNone;
}

TTErr TTParameter::setValueStepsize(const TTValue& value)
{
	mValueStepsize = value;
	notifyObservers(kTTSym_ValueStepsize, value);
	return kTTErrNone;
}

TTErr TTParameter::setType(const TTValue& value)
{
	mType = value;
	notifyObservers(kTTSym_Type, value);
	return kTTErrNone;
}

TTErr TTParameter::setRepetitionsAllow(const TTValue& value)
{
	mRepetitionsAllow = value;
	notifyObservers(kTTSym_RepetitionsAllow, value);
	return kTTErrNone;
}

TTErr TTParameter::setReadonly(const TTValue& value)
{
	mReadonly = value;
	notifyObservers(kTTSym_Readonly, value);
	return kTTErrNone;
}

TTErr TTParameter::setViewFreeze(const TTValue& value)
{
	mViewFreeze = value;
	notifyObservers(kTTSym_ViewFreeze, value);
	return kTTErrNone;
}

TTErr TTParameter::setRangeBounds(const TTValue& value)
{
	mRangeBounds = value;
	notifyObservers(kTTSym_RangeBounds, value);
	return kTTErrNone;
}

TTErr TTParameter::setRangeClipmode(const TTValue& value)
{
	mRangeClipmode = value;
	notifyObservers(kTTSym_RangeClipmode, value);
	return kTTErrNone;
}

TTErr TTParameter::setRampDrive(const TTValue& value)
{
	mRampDrive = value;
	notifyObservers(kTTSym_RampDrive, value);
	return kTTErrNone;
}

TTErr TTParameter::setRampFunction(const TTValue& value)
{
	mRampFunction = value;
	notifyObservers(kTTSym_RampFunction, value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspace(const TTValue& value)
{
	mDataspace = value;
	notifyObservers(kTTSym_Dataspace, value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitNative(const TTValue& value)
{
	mDataspaceUnitNative = value;
	notifyObservers(kTTSym_DataspaceUnitNative, value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitActive(const TTValue& value)
{
	mDataspaceUnitActive = value;
	notifyObservers(kTTSym_DataspaceUnitActive, value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitDisplay(const TTValue& value)
{
	mDataspaceUnitDisplay = value;
	notifyObservers(kTTSym_DataspaceUnitDisplay, value);
	return kTTErrNone;
}

TTErr TTParameter::notifyObservers(TTSymbolPtr attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attrName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTParameterCallback(TTPtr baton, TTValue& data)
{
	return kTTErrNone;
}

