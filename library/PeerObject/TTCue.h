/* 
 * A Cue Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_CUE_H__
#define __TT_CUE_H__

#include "TTModular.h"

class TTScript;
typedef TTScript* TTScriptPtr;

/**	TTCue ... TODO : an explanation
 
 
 */

class TTMODULAR_EXPORT TTCue : public TTDataObject
{
	TTCLASS_SETUP(TTCue)
	
	private :
	
	TTSymbol					mName;							///< ATTRIBUTE : the name of the cue
	TTUInt32					mRamp;							///< ATTRIBUTE : a time ramping value for the cue
	TTScriptPtr					mScript;						///< a script containing relativeAddress and value
	
	/** */
	TTErr	setRamp(const TTValue& value);
	
	/** */
	TTErr	Clear();
	
	/** Fill the cue on a namespace using namespace pointer or name */
	TTErr	Store(const TTValue& inputValue, TTValue& outputValue);
	
	/** Run the cue */
	TTErr	Recall();
	
	/** Edit selection on a namespace using namespace pointer or name */
	TTErr	Select(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** a recursive method to store a namespace into a script object */
	TTErr	processStore(TTObjectPtr aScript, TTAddress scriptAddress, const TTAddressItemPtr aNamespace);
	
	/** a recursive method to process a namespace selection from a script object */
	TTErr	processSelect(TTObjectPtr aScript, TTAddressItemPtr aNamespace);
	
	/** a recursive method to change each ramping value into a script */
	TTErr	processRamp(TTObjectPtr aScript, TTUInt32 ramp);
	
	friend TTErr TTMODULAR_EXPORT TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position);
	friend TTErr TTMODULAR_EXPORT TTCueMix(const TTValue& cues, const TTValue& factors);
	friend TTErr TTMODULAR_EXPORT TTCueMerge(TTCue* aCueToMerge, TTCue* mergedCue);
	friend TTErr TTMODULAR_EXPORT TTCueOptimize(TTCue* aCueToOptimize, TTCue* aCue, TTCue* optimizedCue);
};

typedef TTCue* TTCuePtr;

TTBoolean TTMODULAR_EXPORT TTCueCompareNodePriority(TTValue& v1, TTValue& v2);

TTErr			TTMODULAR_EXPORT TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position);

TTErr			TTMODULAR_EXPORT TTCueMix(const TTValue& cues, const TTValue& factors);

TTErr			TTMODULAR_EXPORT TTCueMerge(TTCue* aCueToMerge, TTCue* mergedCue);

TTErr			TTMODULAR_EXPORT TTCueOptimize(TTCue* aCueToOptimize, TTCue* aCue, TTCue* optimizedCue);

#endif // __TT_CUE_H__
