/* 
 * A Data Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DATA_H__
#define __TT_DATA_H__

#include "TTModular.h"

#ifndef TTDATA_NO_RAMPLIB
#include "RampLib.h"			// Excluding RampLib because it use MaxAPI...
#endif

/**	TTData ... TODO : an explanation
 
TODO LIST : 
 
 -> setDataspace					have one unit only
 -> clip :							make a clipwrap and a clipfold method into TTValue...		(see in TTData::clipValue method)
 -> handleProperty :				used TTObject message mecanism...							(see in TTData::Command method)
 -> rampDataNames :					relative to handleProperty									(see in TTData::setRampFunction)
 -> dump :							TODO
 */				

#ifndef TTDATA_NO_RAMPLIB
class RampUnit;
typedef RampUnit*	RampUnitPtr;
#endif

class TTMODULAR_EXPORT TTData : public TTDataObject
{
	TTCLASS_SETUP(TTData)
	
private:
	
	TTValue			mValue;						///< ATTRIBUTE: data's value
	TTValue			mValueDefault;				///< ATTRIBUTE: data's default value
	TTValue			mValueStepsize;				///< ATTRIBUTE: amount to increment or decrement by
	
	TTSymbol		mType;						///< ATTRIBUTE: type of this data's value
	TTValue			mTag;						///< ATTRIBUTE: tag list for this data
	TTInt32			mPriority;					///< ATTRIBUTE: does this data have a priority over other datas ?
	TTSymbol		mDescription;				///< ATTRIBUTE: text to describe the role of this data
	TTBoolean		mRepetitionsAllow;			///< ATTRIBUTE: is the same value can be update twice ?
	TTBoolean		mActive;					///< ATTRIBUTE: this used by return only to stop sending values
	TTBoolean		mInitialized;				///< ATTRIBUTE: is the Value attribute has been initialized ?
	
	TTValue			mRangeBounds;				///< ATTRIBUTE: 
	TTSymbol		mRangeClipmode;				///< ATTRIBUTE: 
	
	TTBoolean		mDynamicInstances;			///< ATTRIBUTE: is the data can be dynamically instanciated
	TTValue			mInstanceBounds;			///< ATTRIBUTE: two TTValues for a range of dynamic instances (-1 = infini)

#ifndef TTDATA_NO_RAMPLIB
	TTSymbol		mRampDrive;					///< ATTRIBUTE: ramp mode 
	TTSymbol		mRampFunction;				///< ATTRIBUTE: for setting the function used by the ramping
	TTValue			mRampFunctionParameters;	///< ATTRIBUTE: names of parameter's function
	TTBoolean		mRampStatus;				///< ATTRIBUTE: is the ramp running ?
#endif
	
	TTSymbol		mDataspace;					///< ATTRIBUTE: The dataspace that this data uses (default is 'none')
	TTSymbol		mDataspaceUnit;				///< ATTRIBUTE: The unit within the dataspace.
	TTObjectPtr		mDataspaceConverter;		///< Performs conversions from input unit to the data unit
	
	TTSymbol		mService;					///< how the data flows into our environnement :
												///<	as parameter : the data is in full access mode
												///<	as message : the data don't notify observers it's changing but the value is still returned to his owner
												///<	as return : the value is not returned to his owner anymore but the data notify observers it's changing
												///< Notice that in each case the value can be queried using a getAttributeValue method.
	
	TTCallbackPtr	mReturnValueCallback;		///< Callback to return back value to the owner of this data
	
	TTBoolean		mIsSending;					///< Flag to tell us if we are currently sending out our Value attribute

#ifndef TTDATA_NO_RAMPLIB
	RampUnitPtr		mRamper;					///< Rampunit object to perform ramping of input values
    TTUInt32        mExternalRampTime;          ///< This is a temporary solution to have audio rate ramping outside the TTData
#endif
    
    TTMessagePtr    commandMessage;             ///< cache command message for observer notification
    TTAttributePtr  valueAttribute;             ///< cache value attribute for observer notification
    TTAttributePtr  initializedAttribute;       ///< cache value message for observer notification
	
	/** Control the data using a command like < value (unit) (ramp ramptime) >
		It depends on the command size :
			1		: 1 value 
			2		: 2 values || 1 value + unit
			3		: 3 values || 2 values + unit || 1 value + ramp ramptime
			X		: X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime
	 */
	TTErr       NoneCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       GenericCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       BooleanCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       IntegerCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       DecimalCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       ArrayCommand(const TTValue& inputValue, TTValue& outputValue);
    TTErr       StringCommand(const TTValue& inputValue, TTValue& outputValue);
	
	/**	Getter and Setter for mValue attribute (Setter methods are typed) */
	TTErr       getValue(TTValue& value);
    
	TTErr       setNoneValue(const TTValue& value);
    TTErr       setBooleanValue(const TTValue& value);
    TTErr       setGenericValue(const TTValue& value);
    TTErr       setIntegerValue(const TTValue& value);
    TTErr       setDecimalValue(const TTValue& value);
    TTErr       setArrayValue(const TTValue& value);
    TTErr       setStringValue(const TTValue& value);
    
    /** */
	TTBoolean	checkBooleanType(const TTValue& value);
    TTBoolean	checkIntegerType(const TTValue& value);
    TTBoolean	checkDecimalType(const TTValue& value);
    TTBoolean	checkArrayType(const TTValue& value);
    TTBoolean	checkStringType(const TTValue& value);
    
    /* */
    TTBoolean	clipValue();
    
    /* */
    TTErr       returnValue();
    
    /** Reset value to default value */
	TTErr       NoneReset();
    TTErr       GenericReset();
    TTErr       BooleanReset();
    TTErr       IntegerReset();
    TTErr       DecimalReset();
    TTErr       ArrayReset();
    TTErr       StringReset();
    
    /**	Increment mValue attribute (and ramp this incrementation)
     It depends on the command size :
     1		: 1 incrementation step
     3		: 1 incrementation step + ramp ramptime
     default	: no value or wrong value
	 */
	TTErr       Inc(const TTValue& inputValue, TTValue& outputValue);
	
	/**	Decrement mValue attribute (and ramp this decrementation)
     It depends on the command size :
     1		: 1 decrementation step
     3		: 1 decrementation step + ramp ramptime
     default	: no value or wrong value
	 */
	TTErr       Dec(const TTValue& inputValue, TTValue& outputValue);

	/**	Getter and Setter for mValueDefault attribute. */
	TTErr       getValueDefault(TTValue& value);
	TTErr       setValueDefault(const TTValue& value);
	
	/**	Setter for mValueStepsize attribute. */
	TTErr       getValueStepsize(TTValue& value);
	TTErr       setValueStepsize(const TTValue& value);
	
	/**	Setter for mType attribute. */
	TTErr       setType(const TTValue& value);
	
	/**	Setter for mTag attribute. */
	TTErr       setTag(const TTValue& value);
	
	/**	Setter for mRepetitionsAllow attribute. */
	TTErr       setRepetitionsAllow(const TTValue& value);
	
	/**	Setter for mActive attribute. */
	TTErr       setActive(const TTValue& value);
	
	/**	Setter for mRangeBounds attribute. */
	TTErr       setRangeBounds(const TTValue& value);
	
	/**	Setter for mRangeClipmode attribute. */
	TTErr       setRangeClipmode(const TTValue& value);
	
	/**	Setter for mInstanceBounds attribute. */
	TTErr       setInstanceBounds(const TTValue& value);

#ifndef TTDATA_NO_RAMPLIB
	/**	Setter for mRampDrive attribute. */
	TTErr       setRampDrive(const TTValue& value);
	
	/**	Setter for mRampFunction attribute. */
	TTErr       setRampFunction(const TTValue& value);
#endif
	
	/**	Setter for mDataspace attribute. */
	TTErr       setDataspace(const TTValue& value);
	
	/**	Setter for mDataspaceUnit attribute. */
	TTErr       setDataspaceUnit(const TTValue& value);
    
    /**	Setter for mDescription attribute. */
	TTErr       setDescription(const TTValue& value);
    
    /**	Setter for mPriority attribute. */
	TTErr       setPriority(const TTValue& value);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr       WriteAsText(const TTValue& inputValue, TTValue& outputValue);
    
	TTErr		convertUnit(const TTValue& inputValue, TTValue& outputValue);
	TTErr		notifyObservers(TTSymbol attrName, const TTValue& value);
	
#ifndef TTDATA_NO_RAMPLIB
	TTErr		rampSetup();
	friend void TTMODULAR_EXPORT TTDataRampUnitCallback(void *o, TTUInt32 n, TTFloat64 *v);
#endif

};

typedef TTData* TTDataPtr;

/** Parse command like < value (unit) (ramp ramptime) >
	It depends on the command size :
	1		: 1 value 
	2		: 2 values || 1 value + unit
	3		: 3 values || 2 values + unit || 1 value + ramp ramptime
	X		: X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime */
TTDictionaryPtr	TTMODULAR_EXPORT TTDataParseCommand(const TTValue& command);

#ifndef TTDATA_NO_RAMPLIB
/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
void TTMODULAR_EXPORT TTDataRampUnitCallback(void *o, TTUInt32 n, TTFloat64 *v);
#endif

#endif // __TT_DATA_H__
