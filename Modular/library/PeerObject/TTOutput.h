/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTObjectBase to handle any signal output
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_OUTPUT_H__
#define __TT_OUTPUT_H__

#include "TTModular.h"

/** TTOutput ... TODO : an explanation
 
	in Send method :
		TODO : preview mecanism (it could be also used to register and notify meters...)
 
 */

class TTInput;
typedef TTInput* TTInputPtr;

class TTMODULAR_EXPORT TTOutput : public TTDataObjectBase
{
	TTCLASS_SETUP(TTOutput)
	
public:	// use public for quick acces during signal processing
	
	TTSymbol					mType;						///< ATTRIBUTE : the type of signal output (like audio, video, ...)
	TTAddress                   mInputAddress;				///< ATTRIBUTE : address of the input to bind
	
	TTBoolean					mMute;						///< ATTRIBUTE : to mute signal output
	TTFloat32					mMix;						///< ATTRIBUTE : to mix signal output and  a signal coming from TTInput object
	TTFloat32					mGain;						///< ATTRIBUTE : apply again on signal output
	TTBoolean					mFreeze;					///< ATTRIBUTE : to freeze signal output (ex : for video signal)
	
	TTObjectBasePtr				mSignalIn;					///< any data structure to receive complex signal
	TTObjectBasePtr				mSignalOut;					///< any data structure to send complex signal
	
	TTObjectBasePtr				mSignalTemp;				///< a temporary signal
	TTObjectBasePtr				mSignalZero;				///< a zero signal
	
	TTObjectBasePtr				mMixUnit;					///< the unit used to mix the signal
	TTObjectBasePtr				mGainUnit;					///< the unit used to apply the gain value on the signal
	
	TTObjectBasePtr				mRampMixUnit;				///< the unit used to ramp the mix value
	TTObjectBasePtr				mRampGainUnit;				///< the unit used to ramp the gain value
	
	TTInputPtr					mInputObject;				///< TTInput object to get a signal passing through
	
protected:
	
	TTCallbackPtr				mReturnSignalCallback;		///< a way to return back signal to the owner of this output
	TTCallbackPtr				mReturnLinkCallback;		///< a way to return back the input link status to the owner of this output
	TTValue						mLast;						///< keep a copy of the last sent signal for each index
	TTCallbackPtr				mAddressObserver;			///< to observe mInputAddress creation/destruction
	
	TTValue						mSignal;					///< ATTRIBUTE : a hidden attribute to observe signal preview
	TTAttributePtr				mSignalAttr;				///< a direct access to the signal preview attribute to notify observers
	
	
	/** Send signal */
	TTErr Send(const TTValue& inputValue, TTValue& outputValue);
	TTErr SendBypassed(const TTValue& inputValue, TTValue& outputValue);
	
	/** Set outputObject */
	TTErr Link(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove outputObject */
	TTErr Unlink();
	
	/** Set the outputAddress attribute */
	TTErr setInputAddress(const TTValue& value);
	
	/** Set the mute attribute */
	TTErr setMute(const TTValue& value);
	
	/** Set the mix attribute */
	TTErr setMix(const TTValue& value);
	
	/** Set the gain attribute */
	TTErr setGain(const TTValue& value);
    
    /** Set the mix attribute via a message (because, for Max, the configuration file tells to convert 'mix' into 'Mix') */
	TTErr Mix(const TTValue& inputValue, TTValue& outputValue);
	
	/** Notify signal observer */
	TTErr notifySignalObserver(const TTValue& value);
	
	friend TTErr TTMODULAR_EXPORT TTOutputDirectoryCallback(TTPtr baton, TTValue& data);
};

typedef TTOutput* TTOutputPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTOutputDirectoryCallback(TTPtr baton, TTValue& data);


#endif // __TT_OUTPUT_H__
