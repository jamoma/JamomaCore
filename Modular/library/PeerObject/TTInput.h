/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTObjectBase to handle any signal input
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_INPUT_H__
#define __TT_INPUT_H__

#include "TTOutput.h"

/** TTInput ... TODO : an explanation
 
 
 */

//class TTOutput;
//typedef TTOutput* TTOutputPtr;

class TTMODULAR_EXPORT TTInput : public TTDataObjectBase
{
	TTCLASS_SETUP(TTInput)
	
public:	// use public for quick acces during signal processing
	
	TTSymbol			mType;						///< ATTRIBUTE : the type of the input signal (like audio, video, ...)
	TTAddress           mOutputAddress;				///< ATTRIBUTE : address of the output to bind
	
	TTBoolean			mMute;						///< ATTRIBUTE : to mute signal
	TTBoolean			mBypass;					///< ATTRIBUTE : to pass signal directly to a TTOutput object
	
	TTObjectBasePtr		mSignalIn;					///< any data structure to receive complex signal
	TTListPtr			mSignalCache;				///< a list of any data structure to deal with others complex signals (like mixing, dubbing, ...)
	TTObjectBasePtr		mSignalOut;					///< any data structure to send complex signal
	
	TTObjectBasePtr		mSignalZero;				///< a zero signal
	
	TTOutputPtr			mOutputObject;				///< TTOutput object to pass signal through
	
private:

	TTCallbackPtr		mReturnSignalCallback;		///< a way to return back signal to the owner of this input
	TTCallbackPtr		mAddressObserver;			///< to observe mOutputAddress creation/destruction
    
    TTValue				mSignal;					///< ATTRIBUTE : a hidden attribute to observe signal preview
	TTAttributePtr		mSignalAttr;				///< a direct access to the signal preview attribute to notify observers
	
	/** Send signal. The mIndex have to be choosen before */
	TTErr Send(const TTValue& inputValue, TTValue& outputValue);
	
	/** Set outputObject */
	TTErr Link(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove outputObject */
	TTErr Unlink();
	
	/** Set the outputAddress attribute */
	TTErr setOutputAddress(const TTValue& value);
    
    /** Notify signal observer */
	TTErr notifySignalObserver(const TTValue& value);
	
	friend TTErr TTMODULAR_EXPORT TTInputDirectoryCallback(TTPtr baton, TTValue& data);

};

typedef TTInput* TTInputPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTInputDirectoryCallback(TTPtr baton, TTValue& data);


#endif // __TT_INPUT_H__
