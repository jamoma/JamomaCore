/* 
 * A Parameter Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_PARAMETER_H__
#define __TT_PARAMETER_H__

#include "TTModular.h"


/**	TTParameter ... TODO : an explanation
 
From jcom.parameter we have to make : 
 
 -> clip
 -> ramp
 -> dataspace
 -> handleProperty : used TTObject message mecanism ... 
 
 
 */				


class TTMODULAR_EXPORT TTParameter : public TTObject
{

	TTCLASS_SETUP(TTParameter)
	
public:
	
	TTValue			mValue;						///< ATTRIBUTE: The parameter's value
	TTValue			mValueDefault;				///< ATTRIBUTE: The parameter's default value
	TTFloat32		mValueStepsize;				///< ATTRIBUTE: amount to increment or decrement by
	
	TTSymbolPtr		mType;						///< ATTRIBUTE: type of this parameter's value
	TTUInt8			mPriority;					///< ATTRIBUTE: does this parameter have a priority over other parameters ?
	TTString		mDescription;				///< ATTRIBUTE: a text label to describe the role of this parameter
	TTSymbolPtr		mRepetitionsAllow;			///< ATTRIBUTE: is the same value can be update twice ?
	TTBoolean		mReadonly;					///< ATTRIBUTE: 
	TTBoolean		mViewFreeze;				///< ATTRIBUTE: freeze updating of graphical user interface
	
	TTValue			mRangeBounds;				///< ATTRIBUTE: 
	TTSymbolPtr		mRangeClipmode;				///< ATTRIBUTE: 
	
	TTSymbolPtr		mRampDrive;					///< ATTRIBUTE: ramp mode 
	TTSymbolPtr		mRampFunction;				///< ATTRIBUTE: for setting the function used by the ramping
	
	TTSymbolPtr		mDataspace;					///< ATTRIBUTE: The dataspace that this parameter uses (default is 'none')
	TTSymbolPtr		mDataspaceUnitNative;		///< ATTRIBUTE: The native (model/algorithm) unit within the dataspace.
	TTSymbolPtr		mDataspaceUnitActive;		///< ATTRIBUTE: The active (input/output) unit within the dataspace: the type of values a user is sending and receiving.
	TTSymbolPtr		mDataspaceUnitDisplay;		///< ATTRIBUTE: The display unit within the dataspace -- sent to/from the inlet/outlet of this instance
	
private:
	
	TTCallbackPtr	mReturnValueCallback;		///< a callback to return the value to the owner of this parameter
	
	TTBoolean		mIsSending;					///< flag to tell us if we are currently sending out our Value attribute
	TTBoolean		mIsInitialised;				///< flag to tell us if the Value attribute has been initialised

	/*
	RampUnit*		ramper;						///< rampunit object to perform ramping of input values
	TTHashPtr		rampParameterNames;			// cache of parameter names, mapped from lowercase (Max) to uppercase (TT)
	
	TTSymbolPtr		mUnitOverride;				///< An internal unit conversion that is used temporarily when the parameter's value is set with a non-active unit.
	DataspaceLib*	dataspace_override2active;	///< Performs conversion from messages like 'gain -6 db' to the active unit
	DataspaceLib*	dataspace_active2display;	///< Performs conversion from the active input format to the format used by the parameter display
	DataspaceLib*	dataspace_display2active;	///< Performs conversion from the display/ui to get back to the active units
	DataspaceLib*	dataspace_active2native;	///< Performs conversions from the active input to pass on to the algorithm
	
	// it was in the Max external code :	TTPtr			ui_qelem;					///< the output to the connected ui object is "qlim'd" with this qelem
	*/
	
public:
	
	/** reset value to default value */
	TTErr Reset();
	
	/** control the parameter using a command like < value (unit) (ramp ramptime) >
		It depends on the command size :
			1		: 1 value 
			2		: 2 values || 1 value + unit
			3		: 3 values || 2 values + unit || 1 value + ramp ramptime
			X		: X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime
	 */
	TTErr Command(const TTValue& command);
	
	/**	Setter for m attribute. */
	TTErr setValue(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setValueDefault(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setValueStepsize(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setType(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setRepetitionsAllow(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setReadonly(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setViewFreeze(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setRangeBounds(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setRangeClipmode(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setRampDrive(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setRampFunction(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setDataspace(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setDataspaceUnitNative(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setDataspaceUnitActive(const TTValue& value);
	
	/**	Setter for m attribute. */
	TTErr setDataspaceUnitDisplay(const TTValue& value);
	
private:
	
	TTErr notifyObservers(TTSymbolPtr attrName, const TTValue& value);
	
};

typedef TTParameter* TTParameterPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTParameterCallback(TTPtr baton, TTValue& data);

#endif // __TT_PARAMETER_H__
